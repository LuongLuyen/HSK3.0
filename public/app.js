// Frontend gọi API NestJS (proxy MakeMeAHanzi), fallback CDN khi chạy mở file tĩnh.
const $ = (id) => document.getElementById(id);
const writersEl = $('writers');
const statusEl = $('status');
const scoreEl = $('score');
const progressEl = $('progress');

let writers = [];
let quizWriters = [];
let quizToken = 0; // tăng mỗi lần render/luyện lại để hủy luồng tuần tự đang chờ
let stepTimers = [];
let stepCounts = new Map(); // boxId -> số nét đã hiện
let strokeTotal = new Map(); // boxId -> tổng số nét

function setStatus(m) { statusEl.textContent = m; }
function setScore(m) { scoreEl.textContent = m; }

// Ưu tiên API NestJS, fallback jsDelivr khi mở file trực tiếp
async function loadCharData(char) {
  const urls = [
    `/api/characters/${encodeURIComponent(char)}`,
    `https://cdn.jsdelivr.net/npm/hanzi-writer-data@2.0.2/${encodeURIComponent(char)}.json`,
  ];
  for (const u of urls) {
    try {
      const r = await fetch(u);
      if (r.ok) return await r.json();
    } catch (e) { /* thử URL tiếp theo */ }
  }
  throw new Error('Không tải được chữ ' + char);
}

function charDataLoader(char, onComplete) {
  loadCharData(char).then(onComplete).catch((err) => {
    console.error(err);
    setStatus(`⚠️ Không tải được dữ liệu chữ “${char}”.`);
  });
}

async function loadDict(char) {
  try {
    const r = await fetch(`/api/vocab/${encodeURIComponent(char)}`);
    if (r.ok) { const d = await r.json(); if (d.py || d.vi) return d; }
  } catch (e) {}
  return null;
}

function currentText() {
  const t = $('charInput').value.trim().replace(/\s+/g, '');
  return t.slice(0, 8) || '你好';
}
function speed() { return parseFloat($('optSpeed').value); }

function render(text) {
  quizToken++; // hủy luồng luyện viết tuần tự đang chờ đọc
  quizWriters.forEach((w) => { try { w.cancelQuiz(); } catch (e) {} });
  quizWriters = [];
  stepTimers.forEach(clearTimeout); stepTimers = [];
  stepCounts = new Map();
  writersEl.innerHTML = ''; writers = [];
  $('currentWord').textContent = text;
  setScore('');

  const showPinyin = $('optPinyin').checked;
  const showGrid = $('optGrid').checked;

  [...text].forEach((ch) => {
    if (ch.trim() === '') return;
    const card = document.createElement('div');
    card.className = 'char-card';
    const box = document.createElement('div');
    box.className = 'char-box' + (showGrid ? ' with-grid' : '');
    box.id = 'box-' + Math.random().toString(36).slice(2);
    card.appendChild(box);
    const info = document.createElement('div');
    info.innerHTML = showPinyin
      ? `<div class="pinyin">…</div><div class="meaning">${ch}</div><div class="strokes" id="st-${box.id}">đang tải số nét…</div>`
      : '';
    const speakBtn = document.createElement('button');
    speakBtn.className = 'char-speak';
    speakBtn.title = `Nghe đọc chữ “${ch}”`;
    speakBtn.textContent = '🔊 Đọc';
    speakBtn.onclick = () => speak(ch);
    info.appendChild(speakBtn);
    card.appendChild(info);
    writersEl.appendChild(card);

    const writer = HanziWriter.create(box.id, ch, {
      width: 200, height: 200, padding: 12,
      strokeColor: '#222', radicalColor: '#c0392b',
      highlightColor: '#2c7be5', outlineColor: '#ddd',
      strokeWidth: 52, drawingWidth: 60, outlineWidth: 32,
      showCharacter: true, showOutline: true,
      strokeAnimationSpeed: speed(), delayBetweenStrokes: 200,
      charDataLoader,
    });
    writers.push({ char: ch, writer, boxId: box.id });

    Promise.all([loadCharData(ch).catch(() => null), loadDict(ch).catch(() => null)]).then(([d, dict]) => {
      if (d) {
        strokeTotal.set(box.id, d.strokes.length);
        const el = document.getElementById('st-' + box.id);
        if (el) el.textContent = `${d.strokes.length} nét · thứ tự chuẩn PRC`;
      }
      if (showPinyin && dict) {
        const pyEl = info.querySelector('.pinyin');
        const meanEl = info.querySelector('.meaning');
        if (pyEl) pyEl.textContent = dict.py || '';
        if (meanEl) meanEl.textContent = `${ch} · ${dict.vi || ''}`;
      }
    });
  });

  setStatus(`Đã nạp ${writers.length} chữ: “${text}”. Bấm “▶ Xem thứ tự nét” để xem animation, “✍️ Luyện viết” để tự viết.`);
  animateAll();
  refreshProgress();
}

function animateAll() {
  if (!writers.length) return;
  setStatus('▶ Đang vẽ theo đúng thứ tự nét (chuẩn MakeMeAHanzi / PRC)…');
  writers.forEach(({ writer }, i) => {
    writer.showCharacter();
    stepTimers.push(setTimeout(() => {
      writer.animateCharacter({
        onComplete: i === writers.length - 1
          ? () => setStatus('✅ Xong! Bấm “✍️ Luyện viết” để tự tay viết lại.') : undefined,
      });
    }, (i * 1200) / speed()));
  });
}

// Từng nét: chỉ hide ở lần bấm đầu, các lần sau vẽ nét tiếp theo (giữ nét cũ)
function stepMode() {
  if (!writers.length) return;
  const { writer, boxId } = writers[0];
  quizWriters.forEach((x) => { try { x.cancelQuiz(); } catch (e) {} });
  quizWriters = [];
  try { writer.cancelQuiz(); } catch (e) {}
  let n = stepCounts.get(boxId) || 0;
  if (n === 0) writer.hideCharacter();
  const total = strokeTotal.get(boxId) || 30;
  writer.animateStroke(n, {
    onComplete: () => setStatus(`Đã vẽ ${n + 1}/${total} nét chữ “${writers[0].char}”. Bấm tiếp để vẽ nét kế.`),
  });
  n += 1;
  if (n >= total) { stepCounts.set(boxId, 0); }
  else stepCounts.set(boxId, n);
}

// Luyện viết tuần tự: viết xong 1 chữ → tự đọc chữ đó → mới sang chữ kế tiếp.
let quizIndex = 0, quizDone = 0, quizMistakes = 0;

function markQuizChar() {
  writers.forEach(({ boxId }, i) => {
    const card = document.getElementById(boxId)?.parentElement;
    if (card) card.classList.toggle('quiz-active', i === quizIndex);
  });
}

function startQuiz() {
  if (!writers.length) return;
  stepTimers.forEach(clearTimeout);
  setScore('');
  if ('speechSynthesis' in window) speechSynthesis.cancel();
  quizWriters.forEach((w) => { try { w.cancelQuiz(); } catch (e) {} });
  quizWriters = [];
  quizToken++;
  quizIndex = 0; quizDone = 0; quizMistakes = 0;
  writers.forEach(({ writer }) => { try { writer.cancelQuiz(); } catch (e) {} writer.hideCharacter(); });
  startQuizChar(0);
}

function startQuizChar(i) {
  if (i >= writers.length) { finishQuiz(); return; }
  quizIndex = i;
  markQuizChar();
  const { char, writer } = writers[i];
  const token = quizToken;
  let charMistakes = 0;
  setStatus(`✍️ Chữ ${i + 1}/${writers.length}: “${char}” — viết đúng thứ tự từng nét.`);
  writer.quiz({
    showHintAfterMisses: 3,
    highlightOnComplete: true,
    onMistake: () => {
      charMistakes++; quizMistakes++;
      setScore(`⭐ Hoàn thành ${quizDone}/${writers.length} chữ · Sai ${quizMistakes} lần — cố lên!`);
    },
    onCorrectStroke: (n) => setStatus(`Chữ “${char}”: đúng ${n} nét! Tiếp tục…`),
    onComplete: () => {
      if (token !== quizToken) return;
      quizDone++;
      saveProgress(char, charMistakes);
      setScore(`⭐ Hoàn thành ${quizDone}/${writers.length} chữ · Sai ${quizMistakes} lần — tuyệt vời!`);
      setStatus(`🔊 Đang đọc chữ “${char}”… đọc xong sẽ tự sang chữ kế tiếp.`);
      speakThen(char, () => {
        if (token !== quizToken) return;
        startQuizChar(i + 1);
      });
    },
  });
  quizWriters.push(writer);
}

function finishQuiz() {
  quizIndex = writers.length;
  markQuizChar();
  const text = writers.map((x) => x.char).join('');
  setStatus(`🎉 Xuất sắc! Bạn đã viết đúng toàn bộ “${text}”. Nhập từ mới để học tiếp.`);
  // Chỉ lưu thêm cả từ/cụm khi luyện từ 2 chữ trở lên (1 chữ đã lưu ở trên, tránh +2).
  if (writers.length > 1) saveProgress(text, quizMistakes);
}

// ---- Tài khoản + tiến độ theo user (lưu token trong trình duyệt) ----
let progressMap = {};
function authHeaders(extra) {
  const h = Object.assign({ 'Content-Type': 'application/json' }, extra || {});
  try {
    const t = localStorage.getItem('hsk_token');
    if (t) h['Authorization'] = 'Bearer ' + t;
  } catch (e) {}
  return h;
}

async function saveProgress(char, mistakes) {
  try {
    await fetch('/api/progress', {
      method: 'POST', headers: authHeaders(),
      body: JSON.stringify({ char, mistakes }),
    });
    refreshProgress();
  } catch (e) { /* chạy file tĩnh thì bỏ qua */ }
}

async function refreshProgress() {
  try {
    const r = await fetch('/api/progress', { headers: authHeaders({}) });
    if (!r.ok) return;
    const data = await r.json();
    progressMap = data;
    const keys = Object.keys(data);
    progressEl.textContent = keys.length
      ? `📊 Đã luyện ${keys.length} chữ/từ: ` + keys.slice(0, 12).map((k) => `${k} ×${data[k].done}`).join(' · ') + (keys.length > 12 ? ' …' : '')
      : '📊 Chưa có lịch sử luyện viết. Đăng nhập để lưu riêng theo tài khoản.';
    annotateProgress();
    renderAccountProgress(data);
  } catch (e) { /* bỏ qua khi mở file tĩnh */ }
}

// Trang Tài khoản: liệt kê từng chữ/từ đã luyện kèm số lần đúng/sai nét.
function renderAccountProgress(data) {
  const box = $('accountProgress');
  if (!box) return;
  const keys = Object.keys(data || {});
  if (!keys.length) {
    box.innerHTML = '<p class="account-empty">Chưa có chữ/từ nào được luyện.</p>';
    return;
  }
  keys.sort((a, b) => (data[b].updatedAt || '').localeCompare(data[a].updatedAt || ''));
  box.innerHTML = '';
  keys.forEach((k) => {
    const p = data[k];
    const correct = Math.max(0, (p.done || 0) - (p.mistakes || 0));
    const diff = (p.done || 0) > 0 ? Math.round((correct / (p.done || 1)) * 100) : 0;
    const d = document.createElement('div');
    d.className = 'account-row';
    d.innerHTML =
      `<span class="ar-zh">${k}</span>` +
      `<span class="ar-info"><span class="ar-name">Tiến độ luyện viết</span>` +
      `<span class="ar-bar"><i class="ar-fill" style="width:${diff}%"></i></span>` +
      `<span class="ar-stats"><b class="ok">✓ Đúng ${correct}</b><b class="err">✗ Sai ${p.mistakes || 0}</b><em>${p.done || 0} lần · ${(p.updatedAt || '').slice(0, 10)}</em></span></span>`;
    box.appendChild(d);
  });
}

// Ghi tiến độ (đã viết X lần · sai Y) ngay dưới từng thẻ từ vựng / bộ thủ.
function annotateProgress() {
  document.querySelectorAll('[data-prog-key]').forEach((el) => {
    const key = el.dataset.progKey;
    let badge = el.querySelector('.prog');
    const p = progressMap[key];
    if (!p) { if (badge) badge.remove(); return; }
    if (!badge) {
      badge = document.createElement('div');
      badge.className = 'prog';
      const actions = el.querySelector('.vocab-actions, .rad-actions');
      if (actions) el.insertBefore(badge, actions);
      else el.appendChild(badge);
    }
    badge.textContent = `✍️ đã viết ${p.done} lần · sai ${p.mistakes}`;
  });
}

async function authAction(kind) {
  const u = $('authUser').value.trim();
  const pw = $('authPass').value;
  const msg = $('authMsg');
  msg.textContent = '…';
  try {
    const r = await fetch('/api/auth/' + kind, {
      method: 'POST', headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ username: u, password: pw }),
    });
    const d = await r.json();
    if (!d.ok) { msg.textContent = '⚠️ ' + (d.error || 'Thất bại.'); return; }
    try { localStorage.setItem('hsk_token', d.token); } catch (e) {}
    $('authPass').value = '';
    renderAuth();
    refreshProgress();
  } catch (e) { msg.textContent = '⚠️ Không kết nối được server.'; }
}

async function renderAuth() {
  const boxLogin = $('authLogin'), boxUser = $('authUserBox');
  let me = null;
  try {
    const t = localStorage.getItem('hsk_token');
    if (t) {
      const r = await fetch('/api/auth/me', { headers: { 'Authorization': 'Bearer ' + t } });
      const d = await r.json();
      if (d.ok) me = d.username;
      else localStorage.removeItem('hsk_token');
    }
  } catch (e) {}
  if (me) {
    boxLogin.style.display = 'none';
    boxUser.style.display = '';
    $('authName').textContent = me;
    $('accountInfo').textContent = `Đã đăng nhập: ${me} — tiến độ luyện tập được lưu riêng cho tài khoản này.`;
  } else {
    boxLogin.style.display = '';
    boxUser.style.display = 'none';
    $('accountInfo').textContent = 'Chưa đăng nhập — hãy đăng nhập ở sidebar để lưu tiến độ riêng.';
  }
  const noteWho = $('noteWho');
  if (noteWho) {
    noteWho.textContent = me
      ? `Lưu cho tài khoản “${me}”`
      : 'Chưa đăng nhập — ghi chú dùng chung cho khách, đăng nhập để lưu riêng.';
  }
  loadNoteMap().then(() => renderCourseList()); // đổi tài khoản → nạp lại ghi chú
}

async function logout() {
  try {
    const t = localStorage.getItem('hsk_token');
    if (t) await fetch('/api/auth/logout', { method: 'POST', headers: { 'Authorization': 'Bearer ' + t } });
  } catch (e) {}
  try { localStorage.removeItem('hsk_token'); } catch (e) {}
  renderAuth();
  refreshProgress();
}

function hint() {
  if (!quizWriters.length) { setStatus('Bấm “✍️ Luyện viết” trước rồi mới dùng gợi ý nhé.'); return; }
  setStatus('💡 Gợi ý: nét cần viết tiếp sẽ sáng lên sau 3 lần sai. Hãy nhìn chữ mờ và viết theo hình dáng đó.');
}

function showAll() {
  writers.forEach(({ writer }) => { try { writer.cancelQuiz(); } catch (e) {} writer.showCharacter(); });
  quizWriters = [];
  setStatus('👁 Đã hiện toàn bộ chữ mẫu.');
}

$('btnRender').onclick = () => render(currentText());
$('charInput').addEventListener('keydown', (e) => { if (e.key === 'Enter') render(currentText()); });
$('btnSpeak').onclick = speakCurrent;
$('btnAnimate').onclick = animateAll;
$('btnStep').onclick = stepMode;
$('btnQuiz').onclick = startQuiz;
$('btnHint').onclick = hint;
$('btnShow').onclick = showAll;
$('optSpeed').oninput = (e) => {
  $('speedVal').textContent = e.target.value + 'x';
  writers.forEach(({ writer }) => writer.updateSpeed(parseFloat(e.target.value)));
};
$('optGrid').onchange = (e) => {
  document.querySelectorAll('.char-box').forEach((b) => b.classList.toggle('with-grid', e.target.checked));
};
$('optPinyin').onchange = () => render(currentText());

async function loadVocab() {
  const samples = $('samples');
  samples.innerHTML = '';
  ['你好', '谢谢', '中国', '汉语', '学习'].forEach((s) => {
    const b = document.createElement('button');
    b.textContent = s;
    b.onclick = () => { $('charInput').value = s; render(s); };
    samples.appendChild(b);
  });
  await loadHskLevel(1);
}

// ---- Từ vựng HSK 1–4 (API mới trả { total, data }) ----
const PAGE = 60;
let hskLevel = 1;
let hskData = [];
let hskShown = 0;

function vocabMatches(v, q) {
  q = q.trim().toLowerCase();
  if (!q) return true;
  const noSpace = (s) => (s || '').toLowerCase().replace(/\s+/g, '');
  return (
    v.zh.includes(q.trim()) ||
    noSpace(v.py).includes(noSpace(q)) ||
    (v.vi || '').toLowerCase().includes(q) ||
    (v.en || '').toLowerCase().includes(q)
  );
}

async function loadHskLevel(level) {
  hskLevel = level;
  hskShown = 0;
  const box = $('vocab');
  box.innerHTML = '<p class="muted">Đang tải từ vựng HSK ' + level + '…</p>';
  try {
    const r = await fetch(`/api/vocab?level=${level}&limit=1000`);
    if (!r.ok) throw new Error(r.status);
    const res = await r.json();
    hskData = Array.isArray(res) ? res : res.data || []; // tương thích cả API cũ
  } catch (e) {
    box.innerHTML = '<p class="muted">⚠️ Không tải được từ vựng (cần chạy server NestJS).</p>';
    $('vocabCount').textContent = '';
    return;
  }
  document.querySelectorAll('#hskTabs button').forEach((b) =>
    b.classList.toggle('active', Number(b.dataset.level) === level),
  );
  document.querySelectorAll('.sidebar a').forEach((a) => {
    if (a.dataset.hsk) a.classList.toggle('active', Number(a.dataset.hsk) === level && currentView === 'tu-vung');
  });
  renderVocab(true);
}

function vocabCard(v) {
  const d = document.createElement('div');
  d.className = 'vocab-card';
  d.dataset.progKey = v.zh;
  const mean = v.vi || v.en;
  const badge = v.vi ? '' : ' <span class="en-badge">EN</span>';
  const pos = v.pos ? `<div class="pos">${v.pos}</div>` : '';
  const code = v.code ? `<div class="pos">${v.code}</div>` : '';
  d.innerHTML = `<div class="vocab-zh"><span>${v.zh}</span></div><div class="py">${v.py || ''}</div>${pos}${code}<div class="vi">${mean || ''}${badge}</div>` +
    `<div class="vocab-actions"><button class="vocab-listen" title="Nghe đọc “${v.zh}”">🔊 Nghe</button>` +
    `<button class="go-write" title="Sang tab Luyện viết chữ này">✏️ Học</button></div>`;
  d.title = v.en && v.vi ? v.en : (v.zh + ' ' + (v.py || ''));
  d.querySelector('.vocab-listen').onclick = (ev) => { ev.stopPropagation(); speak(v.zh); };
  d.querySelector('.go-write').onclick = (ev) => {
    ev.stopPropagation();
    $('charInput').value = v.zh;
    render(v.zh);
    showView('luyen-viet');
  };
  return d;
}

function renderVocab(reset) {
  const q = $('vocabSearch').value || '';
  const box = $('vocab');
  const filtered = hskData.filter((v) => vocabMatches(v, q));
  if (reset) { box.innerHTML = ''; hskShown = 0; }
  const next = filtered.slice(hskShown, hskShown + PAGE);
  next.forEach((v) => box.appendChild(vocabCard(v)));
  hskShown += next.length;
  $('vocabCount').textContent =
    `HSK ${hskLevel}: hiện ${Math.min(hskShown, filtered.length)}/${filtered.length} từ` +
    (q.trim() ? ` (lọc theo “${q.trim()}”)` : ` (tổng ${hskData.length} từ)`);
  $('btnMoreVocab').style.display = hskShown < filtered.length ? '' : 'none';
  if (!filtered.length) box.innerHTML = '<p class="muted">Không tìm thấy từ nào. Thử từ khóa khác.</p>';
  annotateProgress();
}

document.querySelectorAll('#hskTabs button').forEach((b) => {
  b.onclick = () => { $('vocabSearch').value = ''; loadHskLevel(Number(b.dataset.level)); };
});
$('vocabSearch').addEventListener('input', () => renderVocab(true));
$('btnMoreVocab').onclick = () => renderVocab(false);

// ---- 214 bộ thủ (mặc định xem 50 bộ thông dụng) ----
let radicalsData = [];
let radView = 'common';

function noTone(s) {
  return (s || '')
    .toLowerCase()
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')
    .replace(/đ/g, 'd');
}

function radicalMatches(r, q) {
  q = q.trim().toLowerCase();
  if (!q) return true;
  const nq = noTone(q);
  return (
    r.zh.includes(q.trim()) ||
    (r.alt || '').includes(q.trim()) ||
    noTone(r.py).includes(nq) ||
    noTone(r.hv).includes(nq) ||
    noTone(r.vi).includes(nq) ||
    String(r.id) === q.trim()
  );
}

async function loadRadicals() {
  const box = $('radicals');
  try {
    const r = await fetch('/api/radicals');
    if (!r.ok) throw new Error(r.status);
    radicalsData = await r.json();
  } catch (e) {
    box.innerHTML = '<p class="muted">⚠️ Không tải được bộ thủ (cần chạy server NestJS).</p>';
    return;
  }
  const sel = $('radStrokes');
  const strokes = [...new Set(radicalsData.map((x) => x.strokes))].sort((a, b) => a - b);
  strokes.forEach((s) => {
    const o = document.createElement('option');
    o.value = s; o.textContent = s + ' nét';
    sel.appendChild(o);
  });
  renderRadicals();
}

function renderRadicals() {
  const q = $('radSearch').value || '';
  const st = $('radStrokes').value;
  const box = $('radicals');
  box.innerHTML = '';
  const filtered = radicalsData.filter(
    (r) =>
      (radView === 'all' || r.common) &&
      radicalMatches(r, q) &&
      (!st || r.strokes === Number(st)),
  );
  const scope = radView === 'all' ? radicalsData.length : radicalsData.filter((r) => r.common).length;
  $('radCount').textContent = `Hiện ${filtered.length}/${scope} bộ thủ` +
    (radView === 'common' ? ' (50 bộ thông dụng)' : ' (tất cả 214 bộ)');
  document.querySelectorAll('#radTabs button').forEach((b) =>
    b.classList.toggle('active', b.dataset.radview === radView),
  );
  filtered.forEach((r) => {
    const d = document.createElement('div');
    d.className = 'rad-card';
    d.dataset.progKey = r.zh;
    const exHtml = (r.examples || [])
      .map((w) => `<span class="rad-ex" title="${w.py} · ${w.vi}">${w.zh}</span>`)
      .join(' ');
    d.innerHTML =
      (r.emoji ? `<div class="rad-emoji" aria-hidden="true">${r.emoji}</div>` : '') +
      `<div class="rad-zh"><span>${r.zh}</span></div>` +
      `<div class="rad-id">#${r.id} · ${r.strokes} nét</div>` +
      (r.name ? `<div class="rad-name">${r.name}</div>` : '') +
      `<div class="rad-py">${r.py} · ${r.hv}</div>` +
      `<div class="rad-vi">${r.vi}${r.alt ? ` <span class="rad-alt">(${r.alt})</span>` : ''}</div>` +
      (exHtml ? `<div class="rad-exs">VD: ${exHtml}</div>` : '') +
      `<div class="rad-actions"><button class="rad-listen" title="Nghe đọc bộ “${r.zh}”">🔊 Nghe</button>` +
      `<button class="rad-go" title="Sang tab Luyện viết bộ này">✏️ Học viết</button></div>`;
    d.title = `Bộ ${r.id}: ${r.zh} (${r.py} · ${r.hv}) — ${r.vi}.`;
    d.querySelector('.rad-listen').onclick = (ev) => { ev.stopPropagation(); speak(r.zh); };
    d.querySelector('.rad-go').onclick = (ev) => {
      ev.stopPropagation();
      $('charInput').value = r.zh;
      render(r.zh);
      showView('luyen-viet');
    };
    box.appendChild(d);
  });
  if (!filtered.length) box.innerHTML = '<p class="muted">Không tìm thấy bộ thủ nào.</p>';
  annotateProgress();
}

$('radSearch').addEventListener('input', renderRadicals);
$('radStrokes').addEventListener('change', renderRadicals);
document.querySelectorAll('#radTabs button').forEach((b) => {
  b.onclick = () => { radView = b.dataset.radview; renderRadicals(); };
});
function setRadView(v) {
  radView = v;
  renderRadicals();
  document.querySelectorAll('.sidebar a').forEach((a) => {
    if (a.dataset.radview) a.classList.toggle('active', a.dataset.radview === v && currentView === 'bo-thu');
  });
}

// ---- Luyện viết 50 bộ thủ: viết xong tự nhảy chữ + chấm điểm ----
let drillList = [];
let drillIdx = 0, drillScore = 0, drillTotalMistakes = 0, drillItemMistakes = 0;
let drillWriter = null, drillActive = false, drillTimer = null, drillToken = 0;
let drillMode = 'easy'; // easy: tô theo chữ mẫu · hard: tự viết không mẫu
let drillDoneSet = new Set(); // index các bộ đã viết xong → bôi xanh

function drillSetStatus(m) { $('drillStatus').textContent = m; }
function drillRenderScore() {
  const done = Math.min(drillIdx, drillList.length);
  $('drillScore').textContent = drillList.length
    ? `⭐ ${drillScore} điểm · Xong ${done}/${drillList.length} bộ · Sai ${drillTotalMistakes} lần` : '';
  $('drillBar').style.width = (drillList.length ? (done / drillList.length) * 100 : 0) + '%';
}
function drillLog(r, icon, pts, skipped) {
  const log = $('drillLog');
  const row = document.createElement('div');
  row.className = 'drill-log-row';
  const zh = drillMode === 'hard' ? '❓' : r.zh; // mức Khó: ẩn chữ Hán để khỏi nhìn trộm
  row.innerHTML = `<span>${icon} <b>${zh}</b> ${r.py} · ${r.vi}</span><span>${skipped ? 'bỏ qua' : '+' + pts + ' điểm'}</span>`;
  log.prepend(row);
}
function cancelDrillQuiz() {
  drillToken++; // hủy luồng “đọc xong mới chuyển” đang chờ
  if (drillTimer) { clearTimeout(drillTimer); drillTimer = null; }
  if (drillWriter) { try { drillWriter.cancelQuiz(); } catch (e) {} drillWriter = null; }
}
async function ensureDrillList() {
  if (drillList.length) return true;
  try {
    const r = await fetch('/api/radicals?common=1');
    if (!r.ok) throw new Error(r.status);
    drillList = await r.json();
    renderDrillJump();
  } catch (e) { drillSetStatus('⚠️ Không tải được danh sách bộ thủ (cần chạy server NestJS).'); return false; }
  return true;
}
// Lưới 50 ô nhảy nhanh tới bộ bất kỳ
function renderDrillJump() {
  const box = $('drillJump');
  box.innerHTML = '';
  drillList.forEach((r, i) => {
    const b = document.createElement('button');
    b.className = 'jump-btn';
    b.textContent = r.zh;
    b.title = `Bộ ${i + 1}: ${r.zh} (${r.py} · ${r.vi}) — bấm để nhảy tới`;
    b.onclick = () => jumpDrill(i);
    box.appendChild(b);
  });
  updateDrillJump();
}
function updateDrillJump() {
  const hard = drillMode === 'hard';
  document.querySelectorAll('#drillJump .jump-btn').forEach((b, i) => {
    const r = drillList[i];
    b.textContent = hard ? (i + 1) : (r ? r.zh : '');
    b.title = r ? (hard ? `Bộ ${i + 1}: ${r.py} · ${r.vi} — bấm để nhảy tới`
      : `Bộ ${i + 1}: ${r.zh} (${r.py} · ${r.vi}) — bấm để nhảy tới`) : '';
    b.classList.toggle('done', drillDoneSet.has(i));
    b.classList.toggle('active', drillActive && i === drillIdx);
  });
}
async function jumpDrill(i) {
  if (!await ensureDrillList()) return;
  if (i < 0 || i >= drillList.length) return;
  if (!drillActive) { // chưa bắt đầu → mở phiên mới từ bộ này
    drillScore = 0; drillTotalMistakes = 0;
    drillDoneSet = new Set();
    drillActive = true;
    $('drillLog').innerHTML = '';
  }
  drillIdx = i;
  nextDrill();
}
async function startDrill() {
  if (!await ensureDrillList()) return;
  cancelDrillQuiz();
  drillIdx = 0; drillScore = 0; drillTotalMistakes = 0;
  drillDoneSet = new Set();
  drillActive = true;
  $('drillLog').innerHTML = '';
  nextDrill();
}
function beginDrillQuiz(r) {
  if (drillMode === 'easy') drillWriter.showCharacter(); // tô theo mẫu
  else drillWriter.hideCharacter(); // tự viết, không mẫu
  drillWriter.quiz({
    showHintAfterMisses: 3,
    highlightOnComplete: true,
    onMistake: () => {
      drillItemMistakes++; drillTotalMistakes++;
      drillRenderScore();
      drillSetStatus(`Sai 1 nét ở ${drillName(r)} — nhớ lại mặt chữ rồi viết tiếp (sai ${drillItemMistakes} lần ở bộ này).`);
    },
    onCorrectStroke: (n) => drillSetStatus(`${drillName(r)}: đúng ${n} nét! Tiếp tục…`),
    onComplete: () => {
      const pts = Math.max(0, 10 - drillItemMistakes * 2);
      drillScore += pts;
      drillDoneSet.add(drillIdx);
      drillRenderScore();
      updateDrillJump();
      saveProgress(r.zh, drillItemMistakes);
      drillLog(r, pts >= 8 ? '🌟' : '✅', pts, false);
      drillSetStatus(`✅ Xong ${drillName(r, true)} +${pts} điểm! Đang đọc chữ…`);
      drillIdx++;
      const token = drillToken;
      speakThen(r.zh, () => {
        if (!drillActive || drillToken !== token) return;
        nextDrill();
      });
    },
  });
}
// Vẽ lại gợi ý chữ hiện tại; mức Khó ẩn mặt chữ (chỉ cho pinyin + nghĩa để đoán).
function refreshDrillPrompt(r) {
  const zh = drillMode === 'hard' ? '❓' : r.zh;
  $('drillInfo').innerHTML = `<span class="drill-num">Bộ ${drillIdx + 1}/${drillList.length}</span><span class="drill-zh">${zh}</span><span class="drill-py">${r.py} · ${r.hv} — ${r.vi}</span>`;
  $('drillCaption').innerHTML = `<b>${zh}</b> · ${r.py} · ${r.hv} — <b>${r.vi}</b>`;
}
// Tên gọi bộ trong thông báo: mức Khó giấu chữ khi đang làm, hiện chữ khi đã xong.
function drillName(r, done) {
  return (drillMode === 'hard' && !done) ? 'bộ này' : `bộ “${r.zh}”`;
}
async function nextDrill() {
  cancelDrillQuiz();
  if (!drillActive) return;
  if (drillIdx >= drillList.length) return finishDrill();
  const r = drillList[drillIdx];
  drillItemMistakes = 0;
  refreshDrillPrompt(r);
  drillRenderScore();
  updateDrillJump();
  let hasData = true;
  const myIdx = drillIdx;
  try { await loadCharData(r.zh); } catch (e) { hasData = false; }
  if (!drillActive || drillIdx !== myIdx || drillIdx >= drillList.length) return;
  if (!hasData) {
    drillSetStatus(`⚠️ Bộ “${r.zh}” chưa có dữ liệu nét vẽ — tự chuyển bộ tiếp theo.`);
    drillLog(r, '⏭', 0, true);
    drillIdx++;
    drillRenderScore();
    drillTimer = setTimeout(nextDrill, 1200);
    return;
  }
  $('drillBox').innerHTML = '';
  drillSetStatus(drillMode === 'easy'
    ? `✍️ Tô theo chữ mẫu bộ “${r.zh}” (${r.vi}) vào ô dưới.`
    : `✍️ Nghe pinyin + nghĩa rồi tự viết vào ô trống — đoán xem là bộ nào! (${r.py} · ${r.vi})`);
  setupDrillItem(r);
}
// Tạo writer cho 1 bộ: mức Dễ hiện cả chữ mẫu lẫn outline để tô theo,
// mức Khó tắt hẳn outline (ô trống hoàn toàn).
function setupDrillItem(r) {
  cancelDrillQuiz();
  $('drillBox').innerHTML = '';
  drillWriter = HanziWriter.create('drillBox', r.zh, {
    width: 300, height: 300, padding: 18,
    strokeColor: '#222', highlightColor: '#2c7be5', outlineColor: '#ddd',
    strokeWidth: 78, drawingWidth: 90, outlineWidth: 48,
    showCharacter: false, showOutline: drillMode === 'easy',
    charDataLoader,
  });
  beginDrillQuiz(r);
}
function skipDrill() {
  if (!drillActive || drillIdx >= drillList.length) return;
  drillLog(drillList[drillIdx], '⏭', 0, true);
  drillSetStatus(`⏭ Đã bỏ qua ${drillName(drillList[drillIdx], true)}.`);
  drillIdx++;
  nextDrill();
}
function hintDrill() {
  if (!drillWriter || !drillActive || drillIdx >= drillList.length) { drillSetStatus('Bấm “Bắt đầu” trước nhé.'); return; }
  const r = drillList[drillIdx];
  try { drillWriter.cancelQuiz(); } catch (e) {}
  drillWriter.showCharacter();
  drillSetStatus(`💡 Đang vẽ mẫu ${drillName(r, true)} — nhìn kỹ rồi viết lại nhé.`);
  drillTimer = setTimeout(() => {
    if (!drillActive) return;
    drillWriter.animateCharacter({ onComplete: () => { if (drillActive) beginDrillQuiz(r); } });
  }, 600);
}
function finishDrill() {
  drillActive = false;
  cancelDrillQuiz();
  updateDrillJump();
  const s = drillScore, max = drillList.length * 10;
  const rank = s >= max * 0.9 ? '🏆 Xuất sắc! Bạn đã thuộc 50 bộ thủ!' :
    s >= max * 0.7 ? '🎉 Giỏi lắm! Luyện thêm chút nữa là thuộc hết.' :
    s >= max * 0.4 ? '💪 Khá rồi — luyện lại để nâng điểm nhé.' : '🌱 Cố gắng thêm — bấm “Làm lại” để luyện tiếp.';
  $('drillInfo').innerHTML = `<span class="drill-num">Hoàn thành!</span><span class="drill-zh">⭐ ${s}/${max}</span>`;
  drillSetStatus(`${rank} (Sai tổng ${drillTotalMistakes} lần. Kết quả từng bộ đã lưu vào tiến độ.)`);
  refreshProgress();
}
$('btnDrillStart').onclick = startDrill;
$('btnDrillRestart').onclick = startDrill;
$('btnDrillSkip').onclick = skipDrill;
$('btnDrillHint').onclick = hintDrill;
$('btnDrillSpeak').onclick = () => {
  if (!drillActive || drillIdx >= drillList.length) { drillSetStatus('Bấm “Bắt đầu” trước nhé.'); return; }
  speak(drillList[drillIdx].zh);
};
$('drillMode').onchange = (e) => {
  drillMode = e.target.value;
  // Đổi mức độ giữa chừng → dựng lại ô + viết lại bộ hiện tại theo mức mới
  if (drillActive && drillIdx < drillList.length) {
    const r = drillList[drillIdx];
    drillItemMistakes = 0;
    refreshDrillPrompt(r);
    updateDrillJump();
    drillSetStatus(drillMode === 'easy'
      ? `⭐ Mức Dễ: tô theo chữ mẫu bộ “${r.zh}”.`
      : `🏆 Mức Khó: đã ẩn hết chữ Hán — nghe pinyin + nghĩa rồi đoán chữ mà viết!`);
    setupDrillItem(r);
  } else {
    updateDrillJump();
  }
};

// ---- Phát âm: thanh mẫu / vận mẫu / thanh điệu ----
let finalsData = [];
let finalGroup = 'all';

// Đọc chữ Hán bằng giọng máy của trình duyệt (Web Speech API, không cần mạng).
// Tự chọn giọng tiếng Trung nếu có; đợi danh sách giọng tải xong (voiceschanged).
let zhVoice = null;
function pickZhVoice() {
  try {
    const vs = speechSynthesis.getVoices();
    zhVoice = vs.find((v) => v.lang && v.lang.toLowerCase().startsWith('zh')) || null;
  } catch (e) { /* bỏ qua */ }
}
if ('speechSynthesis' in window) {
  pickZhVoice();
  speechSynthesis.onvoiceschanged = pickZhVoice;
}

function speak(text, onEnd) {
  const done = typeof onEnd === 'function' ? onEnd : null;
  try {
    if (!('speechSynthesis' in window)) { setStatus('⚠️ Trình duyệt không hỗ trợ đọc giọng nói.'); if (done) done(); return; }
    if (!text || !text.trim()) { if (done) done(); return; }
    speechSynthesis.cancel();
    const u = new SpeechSynthesisUtterance(text.trim());
    u.lang = 'zh-CN';
    if (zhVoice) u.voice = zhVoice;
    u.rate = 0.75;
    if (done) { u.onend = () => done(); u.onerror = () => done(); }
    speechSynthesis.speak(u);
  } catch (e) { setStatus('⚠️ Không đọc được âm thanh.'); if (done) done(); }
}

// Đọc `text` rồi mới gọi `next()` — dùng cho luồng “viết xong → tự đọc → mới chuyển”.
// Có timer dự phòng vì vài trình duyệt không bắn sự kiện onend.
function speakThen(text, next, maxWait) {
  let finished = false;
  const finish = () => { if (finished) return; finished = true; clearTimeout(guard); next(); };
  const guard = setTimeout(finish, maxWait || 2600);
  speak(text, finish);
}

// Đọc toàn bộ từ đang luyện viết (VD: “你好”)
function speakCurrent() { speak(currentText()); }

// Phát file audio đọc mẫu thật (mp3); lỗi thì dùng giọng máy đọc `fallback`.
function playAudio(url, fallback) {
  if (!url) { speak(fallback); return; }
  try {
    speechSynthesis.cancel();
    const a = new Audio(url);
    a.onerror = () => speak(fallback);
    a.play().catch(() => speak(fallback));
  } catch (e) { speak(fallback); }
}

function pyCard(main, sub, ex, exPy, exVi, extra, say, detail, guide, audio) {
  const d = document.createElement('div');
  d.className = 'py-card';
  const sayText = say || main;
  const tip = audio ? `Nghe đọc mẫu thật “${sayText}”` : `Nghe đọc “${sayText}”`;
  d.innerHTML =
    `<div class="py-main">${main} <button class="speak" title="${tip}">🔊</button>${extra ? ` <span class="py-extra">${extra}</span>` : ''}</div>` +
    `<div class="py-sub">${sub}</div>` +
    (detail ? `<div class="py-detail">${detail}</div>` : '') +
    (guide ? `<details class="py-guide"><summary>Cách phát âm</summary><div>${guide}</div></details>` : '') +
    `<div class="py-ex">VD: <b>${ex}</b> ${exPy} · ${exVi}</div>`;
  d.querySelector('.speak').onclick = (ev) => { ev.stopPropagation(); playAudio(audio, sayText); };
  return d;
}

async function loadPronunciation() {
  let data = null;
  try {
    const r = await fetch('/api/pronunciation');
    if (r.ok) data = await r.json();
  } catch (e) {}
  if (!data) {
    $('initials').innerHTML = '<p class="muted">⚠️ Không tải được (cần chạy server NestJS).</p>';
    return;
  }
  const iniBox = $('initials');
  iniBox.innerHTML = '';
  let lastGroup = '';
  data.initials.forEach((t) => {
    if (t.group !== lastGroup) {
      lastGroup = t.group;
      const h = document.createElement('div');
      h.className = 'py-group-h';
      h.textContent = lastGroup;
      iniBox.appendChild(h);
    }
    iniBox.appendChild(
      pyCard(t.py, t.vi, t.ex, t.exPy, t.exVi, t.semi ? 'bán nguyên âm' : '', t.say, t.detail, t.guide, t.audio),
    );
  });
  finalsData = data.finals;
  renderFinals();
  const toneBox = $('tones');
  toneBox.innerHTML = '';
  data.tones.forEach((t) => {
    const d = document.createElement('div');
    d.className = 'tone-card' + (t.id === 0 ? ' neutral' : '');
    d.innerHTML =
      `<div class="tone-mark">${t.mark}</div>` +
      `<div class="tone-name">${t.name}</div>` +
      `<div class="tone-desc">${t.desc}</div>` +
      `<div class="py-ex"><b>${t.ex}</b> ${t.exPy} · ${t.exVi} <button class="speak" title="Nghe đọc mẫu thật">🔊</button></div>`;
    d.querySelector('.speak').onclick = (ev) => { ev.stopPropagation(); playAudio(t.audio, t.ex); };
    toneBox.appendChild(d);
  });
}

function renderFinals() {
  const box = $('finals');
  box.innerHTML = '';
  finalsData
    .filter((f) => finalGroup === 'all' || f.mouth === finalGroup)
    .forEach((f) => box.appendChild(pyCard(f.py, `${f.mouth} · đọc: ${f.vi}`, f.ex, f.exPy, f.exVi, '', f.say, '', f.guide, f.audio)));
  document.querySelectorAll('#finalTabs button').forEach((b) =>
    b.classList.toggle('active', b.dataset.fgroup === finalGroup),
  );
}

document.querySelectorAll('#finalTabs button').forEach((b) => {
  b.onclick = () => { finalGroup = b.dataset.fgroup; renderFinals(); };
});

// ---- Dashboard: HSK 2.0 vs 3.0 ----
async function loadGuide() {
  let g = null;
  try {
    const r = await fetch('/api/guide');
    if (r.ok) g = await r.json();
  } catch (e) {}
  if (!g) {
    $('dashboard').insertAdjacentHTML('beforeend', '<p class="muted">⚠️ Không tải được data guide (cần chạy server NestJS).</p>');
    return;
  }
  $('guideStats').innerHTML = g.standard.stats.map((s) =>
    `<div class="stat-card"><div class="stat-val">${s.value}</div><div class="stat-label">${s.label}</div></div>`).join('');
  $('guideBands').innerHTML = g.standard.bands.map((b) =>
    `<div class="band-card"><div class="band-name">${b.name}</div><div class="band-levels">${b.levels}</div><div class="muted">${b.desc}</div></div>`).join('');
  $('guideOutlines').innerHTML = g.standard.outlines.map((o) =>
    `<span class="tag" title="${o.vi}">${o.zh} · ${o.vi}</span>`).join('');
  $('guideVocabTable').querySelector('tbody').innerHTML = g.vocab.map((r) =>
    `<tr><td><b>HSK ${r.level}</b></td><td>${r.hsk20New} / ${r.hsk20Total}</td><td><b>${r.hsk30New} / <span class="hl-blue">${r.hsk30Total}</span></b></td><td>${r.stdNew} / ${r.stdTotal}</td></tr>`).join('');
  $('guideSkills').innerHTML = g.skills.map((s) =>
    `<div class="skill-card"><div><b>${s.levels}:</b> ${s.skills.join(' · ')}</div><div class="muted">${s.note}</div></div>`).join('');
  $('guideInsights').innerHTML = g.insights.map((t) => `<li>${t}</li>`).join('');
  $('guideRoadmap').innerHTML = g.hsk3Roadmap.map((s) =>
    `<div class="road-card"><div class="road-phase">${s.phase}</div><div><b>${s.title}</b></div><div class="muted">${s.desc}</div></div>`).join('');
}

// ---- Ngữ pháp HSK 3.0: dữ liệu chính thức từ SQLite qua /api/grammar (bản 2025) ----
const GRAM_LEVEL_LABEL = { hsk1: 'HSK 1', hsk2: 'HSK 2', hsk3: 'HSK 3', hsk4: 'HSK 4', hsk5: 'HSK 5', hsk6: 'HSK 6', hsk79: 'HSK 7–9' };

function gramLevelLabel(k) {
  return GRAM_LEVEL_LABEL[k] || '';
}
let GRAMMAR_ALL = [];

function gramFiltered() {
  const q = ($('gramSearch').value || '').trim().toLowerCase();
  let arr = gramLevel === 'all' ? GRAMMAR_ALL : GRAMMAR_ALL.filter((g) => g.k === gramLevel);
  if (q) {
    const nq = noTone(q);
    const m = (s) => {
      s = (s || '').toLowerCase();
      return s.includes(q) || noTone(s).includes(nq);
    };
    arr = arr.filter((g) =>
      m(g.zh) || m(g.cat) || m(g.sub) || m(g.detail) || m(g.vi)
    );
  }
  return arr;
}

function gramCard(g) {
  const d = document.createElement('div');
  d.className = 'gram-card';
  const catVi = g.cat_vi || '';
  const subVi = g.sub_vi || '';
  const detVi = g.detail_vi || '';
  const crumbs = [
    g.cat ? `<span>${g.cat}${catVi ? ` <i>(${catVi})</i>` : ''}</span>` : '',
    g.sub ? `<span>${g.sub}${subVi ? ` <i>(${subVi})</i>` : ''}</span>` : '',
    g.detail && g.detail !== g.sub ? `<span>${g.detail}${detVi ? ` <i>(${detVi})</i>` : ''}</span>` : '',
  ].filter(Boolean).join('<b class="gram-sep">›</b>');
  d.innerHTML =
    `<div class="gram-head">` +
    `<div class="gram-zh">${g.zh || g.detail || g.sub}</div>` +
    `<span class="gram-lvl">${gramLevelLabel(g.k)}</span></div>` +
    `<div class="gram-crumb">${crumbs || '<span class="muted">Điểm ngữ pháp</span>'}</div>` +
    `<div class="gram-vi">${g.vi ? `<b>${g.vi}</b>` : '<span class="muted">🇻🇳 đang bổ sung nghĩa tiếng Việt…</span>'}</div>` +
    `<div class="gram-ex-item" data-say="${(g.zh || g.detail || g.sub)}"><span class="btn-speak">🔊 Nghe đọc</span></div>`;
  d.querySelector('.btn-speak').onclick = () => speak(d.querySelector('.gram-ex-item').dataset.say);
  return d;
}

function renderGrammar() {
  const list = gramFiltered();
  const box = $('grammar');
  const count = $('gramCount');
  box.innerHTML = '';
  const shown = list.slice(0, gramShown);
  shown.forEach((g) => box.appendChild(gramCard(g)));
  count.textContent = `${list.length} / ${GRAMMAR_ALL.length} điểm ngữ pháp (HSK 3.0 · bản 2025)`;
  if (!shown.length) box.innerHTML = '<p class="muted">Không tìm thấy điểm ngữ pháp nào.</p>';
  let more = $('gramMore');
  if (!more) { more = document.createElement('button'); more.id = 'gramMore'; more.className = 'btn-more'; box.after(more); }
  more.textContent = `Xem thêm ⬇ (còn ${Math.max(list.length - gramShown, 0)})`;
  more.style.display = list.length > gramShown ? '' : 'none';
  more.onclick = () => { gramShown += 24; renderGrammar(); };
  document.querySelectorAll('#gramTabs button').forEach((b) =>
    b.classList.toggle('active', b.dataset.gramLevel === gramLevel),
  );
}

const GRAM_LEVELS = [
  { k: 'all', label: '📚 Tất cả' },
  { k: 'hsk1', label: 'HSK 1' },
  { k: 'hsk2', label: 'HSK 2' },
  { k: 'hsk3', label: 'HSK 3' },
  { k: 'hsk4', label: 'HSK 4' },
  { k: 'hsk5', label: 'HSK 5' },
  { k: 'hsk6', label: 'HSK 6' },
  { k: 'hsk79', label: 'HSK 7–9' },
];

let gramLevel = 'all';
let gramShown = 24;

async function loadGrammar() {
  try {
    const res = await fetch('/api/grammar');
    const json = await res.json();
    GRAMMAR_ALL = json.data.map((g) => ({
      k: g.level, cat: g.cat, sub: g.sub, detail: g.detail, zh: g.zh, vi: g.vi,
      cat_vi: g.cat_vi, sub_vi: g.sub_vi, detail_vi: g.detail_vi,
    }));
    renderGrammar();
  } catch (err) {
    $('grammar').innerHTML = '<p class="muted">Không tải được dữ liệu ngữ pháp từ database.</p>';
    console.error(err);
  }
}

(function initGrammar() {
  const tabs = $('gramTabs');
  tabs.innerHTML = GRAM_LEVELS.map((l) =>
    `<button data-gram-level="${l.k}">${l.label}</button>`).join('');
  tabs.querySelectorAll('button').forEach((b) => {
    b.onclick = () => { gramLevel = b.dataset.gramLevel; gramShown = 24; $('gramSearch').value = ''; renderGrammar(); };
  });
  $('gramSearch').addEventListener('input', () => { gramShown = 24; renderGrammar(); });
  $('gramCount').textContent = 'Đang tải dữ liệu chính thức…';
  loadGrammar();
})();

// ---- Trang tài liệu tiếng Việt trong tab Ngữ pháp (nguồn /api/grammar/docs) ----
let GRAM_DOCS = [];

function renderDoc(level) {
  const doc = GRAM_DOCS.find((d) => d.level === level);
  const titleEl = $('docTitle');
  const bodyEl = $('docBody');
  if (!doc) {
    titleEl.textContent = '';
    bodyEl.textContent = 'Không có tài liệu cho cấp này.';
  } else {
    titleEl.textContent = doc.title || gramLevelLabel(level);
    bodyEl.textContent = doc.content;
  }
  document.querySelectorAll('#docTabs button').forEach((b) =>
    b.classList.toggle('active', b.dataset.docLevel === level));
  bodyEl.scrollTop = 0;
}

function showGramPage(page) {
  document.querySelectorAll('#ngu-phap .gram-page').forEach((p) => {
    p.hidden = p.dataset.gramPage !== page;
  });
  document.querySelectorAll('#gramPages button').forEach((b) =>
    b.classList.toggle('active', b.dataset.gramPage === page));
}

async function loadGrammarDocs() {
  try {
    const res = await fetch('/api/grammar/docs');
    const json = await res.json();
    GRAM_DOCS = json.data || [];
    const tabs = $('docTabs');
    tabs.innerHTML = GRAM_DOCS.map((d) =>
      `<button data-doc-level="${d.level}">${gramLevelLabel(d.level)}</button>`).join('');
    tabs.querySelectorAll('button').forEach((b) => {
      b.onclick = () => renderDoc(b.dataset.docLevel);
    });
    if (GRAM_DOCS.length) renderDoc(GRAM_DOCS[0].level);
    else $('docBody').textContent = 'Chưa có tài liệu tiếng Việt.';
  } catch (err) {
    console.error(err);
    $('docBody').textContent = 'Không tải được tài liệu từ database.';
  }
}

document.querySelectorAll('#gramPages button').forEach((b) => {
  b.onclick = () => showGramPage(b.dataset.gramPage);
});

// ---- Khóa học: video bài giảng (public/static/HSK{N}) + ghi chú từng bài ----
let coursesData = { total: 0, levels: [] };
let courseLevel = 0;
let courseLessonId = null;
let notesMap = {}; // lesson id -> { content, updatedAt }
let noteDirty = false;
let noteLoadedFor = null;
let noteTimer = null;

function currentLessons() {
  const lv = coursesData.levels.find((l) => l.level === courseLevel);
  return lv ? lv.lessons : [];
}

function findLesson(id) {
  for (const lv of coursesData.levels) {
    const lesson = lv.lessons.find((l) => l.id === id);
    if (lesson) return { ...lesson, levelName: lv.name };
  }
  return null;
}

async function loadCourses() {
  const tabs = $('courseTabs');
  try {
    const r = await fetch('/api/courses');
    if (!r.ok) throw new Error(r.status);
    coursesData = await r.json();
  } catch (e) {
    $('courseList').innerHTML = '<p class="muted">⚠️ Không tải được danh sách bài giảng (cần chạy server NestJS).</p>';
    return;
  }
  if (!coursesData.total) {
    tabs.innerHTML = '';
    $('courseEmpty').textContent = 'Chưa có video bài giảng. Thêm file .mp4 vào public/static/HSK1/ rồi tải lại trang.';
    $('courseList').innerHTML = '<p class="muted">Chưa có bài nào.</p>';
    return;
  }
  courseLevel = coursesData.levels[0].level;
  tabs.innerHTML = coursesData.levels
    .map((l) => `<button data-level="${l.level}">${l.name} <span class="pill">${l.lessons.length}</span></button>`)
    .join('');
  tabs.querySelectorAll('button').forEach((b) => {
    b.onclick = () => {
      flushNote();
      courseLevel = Number(b.dataset.level);
      renderCourseList();
      const lessons = currentLessons();
      if (!lessons.some((l) => l.id === courseLessonId)) selectLesson(lessons[0]?.id);
    };
  });
  renderCourseList();
  selectLesson(coursesData.levels[0].lessons[0].id);
}

function renderCourseList() {
  const box = $('courseList');
  if (!coursesData.levels.length) return;
  document.querySelectorAll('#courseTabs button').forEach((b) =>
    b.classList.toggle('active', Number(b.dataset.level) === courseLevel));
  box.innerHTML = '';
  currentLessons().forEach((l) => {
    const b = document.createElement('button');
    b.className = 'lesson-item' + (l.id === courseLessonId ? ' active' : '');
    b.dataset.lesson = l.id;
    const note = notesMap[l.id];
    b.innerHTML =
      `<span class="li-no">${l.title}</span>` +
      `<span class="li-name">${l.file.replace(/\.[^.]+$/, '')}</span>` +
      (note && note.content ? '<span class="li-note" title="Đã có ghi chú">📝</span>' : '');
    b.onclick = () => selectLesson(l.id);
    box.appendChild(b);
  });
}

function setNoteStatus(m) { $('noteStatus').textContent = m || ''; }

async function loadNoteMap() {
  try {
    const r = await fetch('/api/notes', { headers: authHeaders({}) });
    if (!r.ok) return;
    const d = await r.json();
    notesMap = (d && d.data) || {};
  } catch (e) { /* chạy file tĩnh thì bỏ qua */ }
}

async function selectLesson(id) {
  if (!id || id === courseLessonId) return;
  flushNote(); // lưu ghi chú bài cũ trước khi chuyển
  const lesson = findLesson(id);
  if (!lesson) return;
  courseLessonId = id;
  const v = $('courseVideo');
  v.hidden = false;
  $('courseEmpty').hidden = true;
  if (v.getAttribute('src') !== lesson.url) { v.src = lesson.url; v.load(); }
  $('courseTitle').textContent = `${lesson.title} — ${lesson.levelName}`;
  $('courseSub').textContent = lesson.file;
  renderCourseList();
  updateLessonNav();
  await loadNote(id);
}

function updateLessonNav() {
  const lessons = currentLessons();
  const i = lessons.findIndex((l) => l.id === courseLessonId);
  $('btnPrevLesson').disabled = i <= 0;
  $('btnNextLesson').disabled = i < 0 || i >= lessons.length - 1;
}

function goLesson(delta) {
  const lessons = currentLessons();
  const i = lessons.findIndex((l) => l.id === courseLessonId);
  const j = i + delta;
  if (i >= 0 && j >= 0 && j < lessons.length) selectLesson(lessons[j].id);
}

async function loadNote(id) {
  const ta = $('noteBody');
  ta.value = '';
  noteDirty = false;
  noteLoadedFor = id;
  setNoteStatus('Đang tải ghi chú…');
  try {
    const r = await fetch('/api/notes?lesson=' + encodeURIComponent(id), { headers: authHeaders({}) });
    const d = await r.json();
    if (noteLoadedFor !== id) return; // đã chuyển sang bài khác
    ta.value = d.content || '';
    setNoteStatus(d.content ? `Đã lưu · ${(d.updatedAt || '').slice(0, 16).replace('T', ' ')}` : '');
  } catch (e) { setNoteStatus('⚠️ Không tải được ghi chú.'); }
}

async function saveNote() {
  if (!courseLessonId) return;
  const lesson = courseLessonId;
  const content = $('noteBody').value; // đọc ngay, trước khi có thể chuyển bài
  noteDirty = false;
  clearTimeout(noteTimer);
  setNoteStatus('Đang lưu…');
  try {
    const r = await fetch('/api/notes', {
      method: 'POST', headers: authHeaders(),
      body: JSON.stringify({ lesson, content }),
    });
    const d = await r.json();
    if (!d.ok) {
      if (lesson === courseLessonId) { noteDirty = true; setNoteStatus('⚠️ ' + (d.error || 'Lưu thất bại.')); }
      return;
    }
    notesMap[lesson] = { content: d.content, updatedAt: d.updatedAt };
    if (lesson === courseLessonId) {
      setNoteStatus(d.content ? `✅ Đã lưu · ${new Date().toLocaleTimeString('vi-VN').slice(0, 5)}` : '');
      renderCourseList();
    }
  } catch (e) {
    if (lesson === courseLessonId) { noteDirty = true; setNoteStatus('⚠️ Không kết nối được server.'); }
  }
}

function flushNote() {
  clearTimeout(noteTimer);
  if (noteDirty && courseLessonId) saveNote();
}

async function deleteNote() {
  if (!courseLessonId) return;
  if (!confirm('Xóa ghi chú của bài này?')) return;
  const lesson = courseLessonId;
  try {
    await fetch('/api/notes?lesson=' + encodeURIComponent(lesson), { method: 'DELETE', headers: authHeaders({}) });
    delete notesMap[lesson];
    if (lesson === courseLessonId) { $('noteBody').value = ''; noteDirty = false; setNoteStatus('🗑️ Đã xóa ghi chú.'); }
    renderCourseList();
  } catch (e) { setNoteStatus('⚠️ Không kết nối được server.'); }
}

// Chèn chữ Hán vừa vẽ/nhận dạng được vào vị trí con trỏ trong ô ghi chú
function insertIntoNote(ch) {
  const ta = $('noteBody');
  const start = ta.selectionStart ?? ta.value.length;
  const end = ta.selectionEnd ?? start;
  ta.value = ta.value.slice(0, start) + ch + ta.value.slice(end);
  ta.setSelectionRange(start + ch.length, start + ch.length);
  ta.focus();
  ta.dispatchEvent(new Event('input', { bubbles: true })); // kích hoạt tự lưu như khi gõ
}

$('noteBody').addEventListener('input', () => {
  noteDirty = true;
  setNoteStatus('Đang chỉnh sửa…');
  clearTimeout(noteTimer);
  noteTimer = setTimeout(() => { if (noteDirty) saveNote(); }, 1200); // tự lưu sau khi ngừng gõ
});
$('btnSaveNote').onclick = saveNote;
$('btnDeleteNote').onclick = deleteNote;
$('btnPrevLesson').onclick = () => goLesson(-1);
$('btnNextLesson').onclick = () => goLesson(1);

// ---- Điều hướng theo tab: bấm mục nào hiện đúng nội dung đó ----
let currentView = 'dashboard';

function showView(name, sub) {
  if (currentView === 'khoa-hoc' && name !== 'khoa-hoc') flushNote(); // rời tab thì lưu ghi chú đang viết
  currentView = name;
  document.querySelectorAll('main .view').forEach((v) =>
    v.classList.toggle('active', v.dataset.view === name),
  );
  if (name === 'phat-am' && sub) showSub(sub);
  document.querySelectorAll('.sidebar a').forEach((a) => {
    const match =
      a.dataset.view === name && (!a.dataset.sub || a.dataset.sub === (sub || currentSub));
    a.classList.toggle('active', !!match);
  });
  if (location.hash !== '#' + name) history.replaceState(null, '', '#' + name);
  window.scrollTo({ top: 0 });
}

let currentSub = 'thanh-mau';
function showSub(sub) {
  currentSub = sub;
  document.querySelectorAll('#phat-am .subview').forEach((v) =>
    v.classList.toggle('active', v.dataset.sub === sub),
  );
  document.querySelectorAll('#pronTabs button').forEach((b) =>
    b.classList.toggle('active', b.dataset.sub === sub),
  );
  document.querySelectorAll('.sidebar a').forEach((a) => {
    if (a.dataset.view === 'phat-am')
      a.classList.toggle('active', a.dataset.sub === sub);
  });
}

document.querySelectorAll('#pronTabs button').forEach((b) => {
  b.onclick = () => showSub(b.dataset.sub);
});

function closeSidebar() { $('sidebar').classList.remove('open'); $('overlay').classList.remove('show'); }
$('navToggle').onclick = () => {
  $('sidebar').classList.toggle('open');
  $('overlay').classList.toggle('show');
};
$('overlay').onclick = closeSidebar;
document.querySelectorAll('.sidebar a').forEach((a) => {
  a.onclick = (ev) => {
    ev.preventDefault();
    showView(a.dataset.view, a.dataset.sub);
    if (a.dataset.hsk) { $('vocabSearch').value = ''; loadHskLevel(Number(a.dataset.hsk)); }
    if (a.dataset.radview) setRadView(a.dataset.radview);
    closeSidebar();
  };
});
document.querySelector('.sidebar .brand').onclick = () => closeSidebar();

// Mở đúng tab khi tải trang (theo #hash), mặc định: dashboard
(function initView() {
  const h = (location.hash || '').replace('#', '');
  const views = ['dashboard', 'khoa-hoc', 'account', 'luyen-bo-thu', 'luyen-viet', 'bo-thu', 'tu-vung', 'phat-am', 'ngu-phap', 'api'];
  showSub('thanh-mau');
  showView(views.includes(h) ? h : 'dashboard');
})();

loadGuide();
loadCourses();
loadVocab().then(() => render(currentText()));
loadRadicals();
loadPronunciation();
loadGrammarDocs();
renderAuth();
$('btnLogin').onclick = () => authAction('login');
$('btnRegister').onclick = () => authAction('register');
$('btnLogout').onclick = logout;
$('btnChangePw').onclick = async () => {
  const msg = $('pwMsg');
  const oldPw = $('pwOld').value, nw = $('pwNew').value, nw2 = $('pwNew2').value;
  if (nw !== nw2) { msg.textContent = '⚠️ Mật khẩu mới nhập lại chưa khớp.'; return; }
  msg.textContent = '…';
  try {
    const r = await fetch('/api/auth/change-password', {
      method: 'POST', headers: authHeaders(),
      body: JSON.stringify({ oldPassword: oldPw, newPassword: nw }),
    });
    const d = await r.json();
    if (!d.ok) { msg.textContent = '⚠️ ' + (d.error || 'Thất bại.'); return; }
    msg.textContent = '✅ Đổi mật khẩu thành công!';
    $('pwOld').value = $('pwNew').value = $('pwNew2').value = '';
  } catch (e) { msg.textContent = '⚠️ Không kết nối được server.'; }
};
$('btnResetProgress').onclick = async () => {
  if (!confirm('Xóa toàn bộ tiến độ luyện tập của bạn? Không thể hoàn tác.')) return;
  try {
    await fetch('/api/progress', { method: 'DELETE', headers: authHeaders({}) });
    refreshProgress(); // tự xóa luôn các nhãn tiến độ dưới thẻ chữ
  } catch (e) { /* bỏ qua */ }
};
$('authPass').addEventListener('keydown', (e) => { if (e.key === 'Enter') authAction('login'); });

// ===== ✍️ Vẽ chữ để tìm (dùng chung cho tab Từ vựng & Bộ thủ) =====
const HAND_GRID = 16; // độ phân giải lưới so sánh
let handData = null; // cache {ch, level, py, vi} của mọi chữ HSK
const handGridCache = new Map(); // chữ -> lưới bitmap

async function loadHandData() {
  if (handData) return;
  const r = await fetch('/api/vocab?level=all&limit=2000');
  if (!r.ok) return;
  const res = await r.json();
  const rows = Array.isArray(res) ? res : res.data || [];
  const map = new Map();
  for (const v of rows) {
    for (const ch of [...v.zh]) {
      if (!map.has(ch)) map.set(ch, { ch, level: v.level, py: v.py, vi: v.vi });
    }
  }
  for (const r2 of await (await fetch('/api/radicals?common=')).json()) {
    for (const ch of [...r2.zh]) if (!map.has(ch)) map.set(ch, { ch, level: 0, py: r2.py, vi: r2.vi });
  }
  handData = [...map.values()];
}

// Vẽ chữ mẫu ra canvas ảo rồi co về lưới HAND_GRID x HAND_GRID (0/1 theo mực in)
function gridFromChar(ch) {
  if (handGridCache.has(ch)) return handGridCache.get(ch);
  const S = HAND_GRID * 8; // vẽ ở độ phân giải cao để nét mảnh rõ
  const cv = document.createElement('canvas');
  cv.width = cv.height = S;
  const cx = cv.getContext('2d');
  cx.font = `${Math.floor(S * 0.72)}px "Microsoft YaHei", "SimSun", "Noto Sans CJK SC", "Segoe UI", sans-serif`;
  cx.textAlign = 'center';
  cx.textBaseline = 'middle';
  cx.fillStyle = '#000';
  cx.fillText(ch, S / 2, S / 2);
  const img = cx.getImageData(0, 0, S, S).data;
  const g = new Uint8Array(HAND_GRID * HAND_GRID);
  const cell = S / HAND_GRID;
  for (let r = 0; r < HAND_GRID; r++) {
    for (let c = 0; c < HAND_GRID; c++) {
      const cx0 = Math.floor(c * cell), cy0 = Math.floor(r * cell);
      let ink = 0;
      for (let y = cy0; y < Math.ceil((r + 1) * cell); y++) {
        for (let x = cx0; x < Math.ceil((c + 1) * cell); x++) {
          if (img[(y * S + x) * 4 + 3] > 80) ink++;
        }
      }
      g[r * HAND_GRID + c] = ink > 0 ? 1 : 0;
    }
  }
  handGridCache.set(ch, g);
  return g;
}

// Chuyển nét vẽ (tọa độ canvas) thành lưới bitmap cùng chuẩn gridFromChar
function gridFromStroke(strokes) {
  const flat = strokes.flat();
  const minX = Math.min(...flat.map((p) => p.x));
  const maxX = Math.max(...flat.map((p) => p.x));
  const minY = Math.min(...flat.map((p) => p.y));
  const maxY = Math.max(...flat.map((p) => p.y));
  const w = maxX - minX, h = maxY - minY;
  if (!w || !h) return null;
  const S = HAND_GRID * 8;
  const cv = document.createElement('canvas');
  cv.width = cv.height = S;
  const cx = cv.getContext('2d');
  cx.strokeStyle = '#000';
  cx.lineWidth = Math.max(2, S * 0.06);
  cx.lineCap = cx.lineJoin = 'round';
  const scale = Math.max(w, h);
  const pad = 0.06;
  const offX = (minX + maxX) / 2, offY = (minY + maxY) / 2;
  for (const s of strokes) {
    if (s.length < 2) continue;
    cx.beginPath();
    for (let i = 0; i < s.length; i++) {
      const nx = (s[i].x - offX) / scale / (1 + 2 * pad) + 0.5;
      const ny = (s[i].y - offY) / scale / (1 + 2 * pad) + 0.5;
      const px = nx * S, py = ny * S;
      if (i === 0) cx.moveTo(px, py); else cx.lineTo(px, py);
    }
    cx.stroke();
  }
  const img = cx.getImageData(0, 0, S, S).data;
  const g = new Uint8Array(HAND_GRID * HAND_GRID);
  const cell = S / HAND_GRID;
  for (let r = 0; r < HAND_GRID; r++) {
    for (let c = 0; c < HAND_GRID; c++) {
      const cx0 = Math.floor(c * cell), cy0 = Math.floor(r * cell);
      let ink = 0;
      for (let y = cy0; y < Math.ceil((r + 1) * cell); y++) {
        for (let x = cx0; x < Math.ceil((c + 1) * cell); x++) {
          if (img[(y * S + x) * 4 + 3] > 60) ink++;
        }
      }
      g[r * HAND_GRID + c] = ink > 0 ? 1 : 0;
    }
  }
  return g;
}

// Độ khớp giữa 2 lưới: IoU cho phép dịch ±1 ô để bù nét lệch nhỏ
function matchScore(a, b) {
  let best = -1;
  for (let dy = -1; dy <= 1; dy++) {
    for (let dx = -1; dx <= 1; dx++) {
      let inter = 0, uni = 0;
      for (let r = 0; r < HAND_GRID; r++) {
        for (let c = 0; c < HAND_GRID; c++) {
          const rr = r + dy, cc = c + dx;
          const inB = rr >= 0 && rr < HAND_GRID && cc >= 0 && cc < HAND_GRID
            ? b[rr * HAND_GRID + cc] : 0;
          if (a[r * HAND_GRID + c] && inB) inter++;
          if (a[r * HAND_GRID + c] || inB) uni++;
        }
      }
      if (uni && inter / uni > best) best = inter / uni;
    }
  }
  return best;
}

// Tạo một ô vẽ + nút điều khiển cho một tab. cfg: {canvas,btnOpen,btnClear,btnGo,panel,results,onPick}
function initHandWriter(cfg) {
  const canvas = $(cfg.canvas);
  const ctx = canvas.getContext('2d');
  const strokes = [];
  let drawing = false;

  function fit() {
    canvas.width = canvas.height = 340;
    ctx.clearRect(0, 0, 340, 340);
    ctx.strokeStyle = '#e5e7eb';
    ctx.lineWidth = 1;
    for (let i = 1; i < 4; i++) {
      const p = 340 * i / 4;
      ctx.beginPath(); ctx.moveTo(p, 0); ctx.lineTo(p, 340); ctx.stroke();
      ctx.beginPath(); ctx.moveTo(0, p); ctx.lineTo(340, p); ctx.stroke();
    }
    ctx.strokeStyle = '#c0392b';
    ctx.lineWidth = 3;
    ctx.strokeRect(1, 1, 338, 338);
  }

  function point(ev) {
    const r = canvas.getBoundingClientRect();
    return {
      x: (ev.clientX - r.left) * canvas.width / r.width,
      y: (ev.clientY - r.top) * canvas.height / r.height,
    };
  }

  canvas.addEventListener('pointerdown', (ev) => {
    ev.preventDefault();
    drawing = true;
    strokes.push([point(ev)]);
    canvas.setPointerCapture(ev.pointerId);
  });
  canvas.addEventListener('pointermove', (ev) => {
    if (!drawing) return;
    const s = strokes[strokes.length - 1];
    const p = point(ev);
    s.push(p);
    ctx.strokeStyle = '#111';
    ctx.lineWidth = 8;
    ctx.lineCap = ctx.lineJoin = 'round';
    ctx.beginPath();
    ctx.moveTo(s[s.length - 2].x, s[s.length - 2].y);
    ctx.lineTo(p.x, p.y);
    ctx.stroke();
  });
  const stop = () => { drawing = false; };
  canvas.addEventListener('pointerup', stop);
  canvas.addEventListener('pointercancel', stop);

  $(cfg.btnClear).onclick = () => { strokes.length = 0; fit(); $(cfg.results).innerHTML = ''; };
  $(cfg.btnOpen).onclick = () => {
    const panel = $(cfg.panel);
    panel.classList.toggle('open');
    if (panel.classList.contains('open')) {
      strokes.length = 0;
      fit();
      $(cfg.results).innerHTML = '';
      setTimeout(() => canvas.scrollIntoView({ behavior: 'smooth', block: 'center' }), 60);
    }
  };

  $(cfg.btnGo).onclick = async () => {
    const out = $(cfg.results);
    if (strokes.flat().length < 2) { out.innerHTML = '<p class="muted">Bạn chưa vẽ gì cả — hãy vẽ một chữ vào ô trắng.</p>'; return; }
    out.innerHTML = '<p class="muted">Đang nhận dạng…</p>';
    try { await loadHandData(); } catch (e) { /* server tắt -> không có ứng viên */ }
    if (!handData) { out.innerHTML = '<p class="muted">⚠️ Không tải được dữ liệu từ vựng.</p>'; return; }
    const draw = gridFromStroke(strokes);
    if (!draw) { out.innerHTML = '<p class="muted">Vẽ trong phạm vi ô đỏ nhé.</p>'; return; }
    const scored = handData
      .map((c) => ({ c, s: matchScore(draw, gridFromChar(c.ch)) }))
      .filter((x) => x.s >= 0.18)
      .sort((a, b) => b.s - a.s)
      .slice(0, 8);
    if (!scored.length) { out.innerHTML = '<p class="muted">Không tìm thấy chữ gần giống. Vẽ to, đủ nét, đúng thứ tự như mẫu nhé.</p>'; return; }
    out.innerHTML = '<p class="muted">Kết quả (bấm để chọn):</p>';
    scored.forEach(({ c, s }) => {
      const b = document.createElement('button');
      b.className = 'hand-hit';
      b.innerHTML =
        `<span class="hh-zh">${c.ch}</span>` +
        `<span class="hh-meta"><b>${c.py || ''}${c.level ? ` HSK${c.level}` : ''}</b><span>${c.vi || ''}</span></span>` +
        `<span style="margin-left:auto;color:#999;font-size:12px">${Math.round(s * 100)}%</span>`;
      b.onclick = () => {
        $(cfg.panel).classList.remove('open');
        cfg.onPick(c);
      };
      out.appendChild(b);
    });
  };

  return { fit };
}

// Tab Từ vựng: chọn chữ -> lọc từ vựng
initHandWriter({
  canvas: 'handCanvas', btnOpen: 'btnHandSearch', btnClear: 'handClear', btnGo: 'handRecognize',
  panel: 'handPanel', results: 'handResults',
  onPick: (c) => {
    $('vocabSearch').value = c.ch;
    if (c.level && Number(c.level) !== hskLevel) {
      loadHskLevel(Number(c.level));
    } else {
      renderVocab(true);
    }
  },
});

// Tab Bộ thủ: chọn chữ -> tìm bộ thủ trùng ký tự
initHandWriter({
  canvas: 'radHandCanvas', btnOpen: 'btnRadHandSearch', btnClear: 'radHandClear', btnGo: 'radHandRecognize',
  panel: 'radHandPanel', results: 'radHandResults',
  onPick: (c) => {
    radView = 'all';
    $('radSearch').value = c.ch;
    renderRadicals();
    $('radSearch').scrollIntoView({ behavior: 'smooth', block: 'center' });
  },
});

// Tab Khóa học: chữ vẽ/nhận dạng được sẽ chèn vào ghi chú bài giảng
initHandWriter({
  canvas: 'noteHandCanvas', btnOpen: 'btnNoteHandSearch', btnClear: 'noteHandClear', btnGo: 'noteHandRecognize',
  panel: 'noteHandPanel', results: 'noteHandResults',
  onPick: (c) => insertIntoNote(c.ch),
});
