import { Injectable } from '@nestjs/common';
import { DatabaseService } from '../db/database.service.js';
import { GRAM_CAT_VI, GRAM_SUB_VI, GRAM_DET_VI } from './grammar.data.js';

export interface GrammarQuery {
  level?: string;
  q?: string;
  limit?: string;
  offset?: string;
}

function norm(s: string): string {
  return (s || '')
    .toLowerCase()
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')
    .replace(/đ/g, 'd')
    .replace(/\s+/g, '');
}

export interface GrammarResult {
  total: number;
  level: string;
  limit: number;
  offset: number;
  data: GrammarRow[];
}

interface GrammarRow {
  k?: string;
  level: string;
  cat: string;
  sub: string;
  detail: string;
  zh: string;
  vi: string;
  cat_vi: string;
  sub_vi: string;
  detail_vi: string;
}

export interface GrammarDoc {
  level: string;
  title: string;
  content: string;
}

export interface GrammarDocsResult {
  total: number;
  data: GrammarDoc[];
}

@Injectable()
export class GrammarService {
  constructor(private readonly dbx: DatabaseService) {}

  private get db() {
    return this.dbx.db;
  }

  /** Danh sách điểm ngữ pháp HSK 3.0 (bản 2025) trong SQLite, hỗ trợ lọc cấp + tìm kiếm + phân trang. */
  list(query: GrammarQuery = {}): { total: number; level: string; limit: number; offset: number; data: GrammarRow[] } {
    const levelRaw = query.level || 'all';
    const q = norm(query.q || '');
    const limit = Math.min(Math.max(parseInt(query.limit || '600', 10) || 600, 1), 1000);
    const offset = Math.max(parseInt(query.offset || '0', 10) || 0, 0);

    let rows: any[];
    if (levelRaw === 'all') {
      rows = this.db.prepare('SELECT * FROM grammar ORDER BY id').all();
    } else {
      rows = this.db.prepare('SELECT * FROM grammar WHERE level = ? ORDER BY id').all(levelRaw);
    }
    let pool = rows.map((r) => ({
      k: r.level, level: r.level, cat: r.cat || '', sub: r.sub || '', detail: r.detail || '',
      zh: r.zh || '', vi: r.vi || '',
      cat_vi: GRAM_CAT_VI[r.cat] || '', sub_vi: GRAM_SUB_VI[r.sub] || '', detail_vi: GRAM_DET_VI[r.detail] || '',
    }));

    if (q) {
      const raw = (query.q || '').trim().toLowerCase();
      pool = pool.filter(
        (e) =>
          e.zh.includes(raw) ||
          e.cat.includes(raw) ||
          e.sub.includes(raw) ||
          e.detail.includes(raw) ||
          norm(e.vi).includes(q),
      );
    }
    return { total: pool.length, level: levelRaw, limit, offset, data: pool.slice(offset, offset + limit) };
  }

  levels() {
    const rows = this.db
      .prepare('SELECT level, COUNT(*) AS n FROM grammar GROUP BY level ORDER BY level')
      .all() as { level: string; n: number }[];
    return { hsk1: 0, hsk2: 0, hsk3: 0, hsk4: 0, hsk5: 0, hsk6: 0, hsk79: 0, ...Object.fromEntries(rows.map((r) => [r.level, r.n])) };
  }

  /** Tài liệu ngữ pháp tiếng Việt (public/static/Vietnam/*.txt) đã nạp vào SQLite. */
  docs(): GrammarDocsResult {
    const rows = this.db
      .prepare('SELECT level, title, content FROM grammar_docs ORDER BY id')
      .all() as { level: string; title: string | null; content: string }[];
    return {
      total: rows.length,
      data: rows.map((r) => ({ level: r.level, title: r.title || '', content: r.content || '' })),
    };
  }
}