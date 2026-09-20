import { readFileSync, writeFileSync } from 'node:fs';
// Sinh src/vocab/hsk4.data.ts từ hsk4.json (1978 từ HSK Atlas, mã HSK1-4).
// Chạy: node scripts/gen-hsk4-data.mjs
const arr = JSON.parse(readFileSync('hsk4.json', 'utf8'));
const header = `// FILE TỰ ĐỘNG SINH bởi scripts/gen-hsk4-data.mjs — KHÔNG SỬA TAY.
// Nguồn: HSK Atlas (hskatlas.com/hsk3.0-level4, 9 trang, 1978 từ) + nghĩa Việt.
// Chạy lại: node scripts/gen-hsk4-data.mjs
export interface Hsk4Entry {
  stt: number; code: string; zh: string; py: string;
  meaning: string; meaning_vi: string; levels: string[];
}
export const HSK_LEVELS_FROM_CODE = ['HSK1', 'HSK2', 'HSK3', 'HSK4'];
`;
writeFileSync(
  'src/vocab/hsk4.data.ts',
  header + 'const RAW = ' + JSON.stringify(JSON.stringify(arr)) + ';\nexport const HSK4_VOCAB: Hsk4Entry[] = JSON.parse(RAW);\n',
  'utf8',
);
console.log('wrote src/vocab/hsk4.data.ts with', arr.length, 'entries');
