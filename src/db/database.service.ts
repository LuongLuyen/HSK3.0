import { Injectable, OnModuleInit } from '@nestjs/common';
import { DatabaseSync } from 'node:sqlite';
import { existsSync, mkdirSync } from 'node:fs';
import { join, dirname } from 'node:path';
import { SCHEMA, seedDatabase } from './seed.js';

// Tất cả data (HSK 3245 từ, 214 bộ thủ, phát âm) nằm trong 1 file SQLite.
// - Mặc định: <project>/data/app.db (tự tạo + tự seed khi chạy lần đầu).
// - Test: đặt DB_PATH=':memory:' để dùng DB trong RAM.
// - Tiến độ luyện viết (progress) cũng lưu tại đây nên không mất khi restart.
@Injectable()
export class DatabaseService implements OnModuleInit {
  readonly db: DatabaseSync;
  readonly path: string;

  constructor() {
    this.path = process.env.DB_PATH || join(process.cwd(), 'data', 'app.db');
    if (this.path !== ':memory:') {
      const dir = dirname(this.path);
      if (!existsSync(dir)) mkdirSync(dir, { recursive: true });
    }
    this.db = new DatabaseSync(this.path);
    this.db.exec('PRAGMA journal_mode = WAL;');
    this.db.exec(SCHEMA);
  }

  onModuleInit() {
    seedDatabase(this.db);
  }
}
