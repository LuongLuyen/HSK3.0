// Sinh `src/vocab/hsk.data.ts` (từ vựng HSK 1–4 theo HSK 3.0) từ nguồn mở.
// Chạy:  node scripts/gen-hsk-data.mjs
//
// Nguồn:
//  1. Danh mục + thứ tự từ: HSK-3.0-Word-List (OCR từ PDF chính thức của Bộ GD
//     Trung Quốc 2021, HSK 3.0) — https://github.com/andycburke/HSK-3.0-Word-List
//     (L1: 500, L2: 772, L3: 973, L4: 1000 mục).
//  2. Pinyin + nghĩa Anh: CC-CEDICT qua
//     https://github.com/jelleverheyen/hsk-vocabulary (wordlists/exclusive/new).
//  3. Nghĩa Việt: file src/vocab/vi.data.ts (thủ công, đang bổ sung dần).
//     Từ chưa có nghĩa Việt sẽ có `vi: ''` — frontend hiển thị nghĩa Anh.
import { writeFileSync, readFileSync } from 'node:fs';
import { join, dirname } from 'node:path';
import { fileURLToPath } from 'node:url';

const ROOT = join(dirname(fileURLToPath(import.meta.url)), '..');
const ANDY_CSV =
  'https://raw.githubusercontent.com/andycburke/HSK-3.0-Word-List/main/HSK-3.0-Word-List.csv';
const JELLE = (lvl) =>
  `https://raw.githubusercontent.com/jelleverheyen/hsk-vocabulary/main/wordlists/exclusive/new/${lvl}.min.json`;

// Trường hợp trong CSV nhưng không tra được pinyin (rất hiếm) — bổ sung tay.
const FALLBACK = {
  '表示': { py: 'biǎoshì', en: 'to express; to show; to indicate; expression' },
  '森林': { py: 'sēnlín', en: 'forest' },
};

async function getJson(url) {
  const r = await fetch(url);
  if (!r.ok) throw new Error(`GET ${url} -> ${r.status}`);
  return r.json();
}
async function getText(url) {
  const r = await fetch(url);
  if (!r.ok) throw new Error(`GET ${url} -> ${r.status}`);
  return r.text();
}

function loadViDict() {
  const src = readFileSync(join(ROOT, 'src', 'vocab', 'vi.data.ts'), 'utf8');
  const dict = {};
  for (const m of src.matchAll(/'([^']+)'\s*:\s*'([^']+)'/g)) dict[m[1]] = m[2];
  return dict;
}

const out = [];
const dict = new Map();
for (const lvl of [1, 2, 3, 4]) {
  const arr = await getJson(JELLE(lvl));
  for (const e of arr) {
    if (dict.has(e.s)) continue;
    const f = e.f?.[0];
    if (!f) continue;
    dict.set(e.s, {
      py: f.i?.y ?? '',
      en: (f.m ?? []).join('; ').slice(0, 300),
    });
  }
}
console.log('pinyin dict size:', dict.size);

const csv = await getText(ANDY_CSV);
const viDict = loadViDict();
console.log('vi dict size:', Object.keys(viDict).length);

let missing = [];
for (const line of csv.split('\n').slice(1)) {
  if (!line.trim()) continue;
  // CSV đơn giản, không có dấu phẩy trong ô
  const [lvlStr, , , hanzi, , usage] = line.split(',');
  const level = Number(lvlStr);
  if (![1, 2, 3, 4].includes(level) || !hanzi) continue;
  const zh = hanzi.trim();
  let info = dict.get(zh) || FALLBACK[zh];
  if (!info) {
    missing.push(`${level}:${zh}`);
    info = { py: '', en: '' };
  }
  out.push({
    zh,
    py: info.py,
    en: info.en,
    vi: viDict[zh] || '',
    level,
    ...(usage?.trim() ? { pos: usage.trim() } : {}),
  });
}
console.log('total entries:', out.length, '| missing pinyin:', missing.length);
if (missing.length) console.log(missing.join(' '));

const header = `// FILE TỰ ĐỘNG SINH bởi scripts/gen-hsk-data.mjs — KHÔNG SỬA TAY.
// Nguồn: HSK-3.0-Word-List (andycburke, OCR từ PDF chính thức HSK 3.0 của Bộ GD TQ)
//   + pinyin/nghĩa Anh CC-CEDICT (jelleverheyen/hsk-vocabulary)
//   + nghĩa Việt thủ công (src/vocab/vi.data.ts).
// Chạy lại: node scripts/gen-hsk-data.mjs
export interface HskEntry {
  zh: string; py: string; en: string; vi: string; level: 1 | 2 | 3 | 4; pos?: string;
}
export const HSK_LEVEL_COUNTS: Record<string, number> = { ${[1, 2, 3, 4]
  .map((l) => `${l}: ${out.filter((e) => e.level === l).length}`)
  .join(', ')} };
const RAW = `;
writeFileSync(
  join(ROOT, 'src', 'vocab', 'hsk.data.ts'),
  header +
    JSON.stringify(JSON.stringify(out)) +
    ';\nexport const HSK_VOCAB: HskEntry[] = JSON.parse(RAW);\n',
  'utf8',
);
console.log('wrote src/vocab/hsk.data.ts');
