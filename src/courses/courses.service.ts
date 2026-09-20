import { Injectable } from '@nestjs/common';
import { existsSync, readdirSync } from 'node:fs';
import { join } from 'node:path';

const VIDEO_EXT = /\.(mp4|webm|m4v|ogv|ogg|mov)$/i;
const LEVEL_DIR = /^HSK(\d+)$/i;

export interface Lesson {
  id: string;
  level: number;
  no: number;
  title: string;
  file: string;
  url: string;
}

export interface CourseLevel {
  level: number;
  name: string;
  dir: string;
  lessons: Lesson[];
}

export interface CourseCatalog {
  total: number;
  levels: CourseLevel[];
}

@Injectable()
export class CoursesService {
  /** Quét public/static/HSK{N}/*.mp4 — thả video vào là tự có bài mới, không cần khai báo. */
  list(): CourseCatalog {
    const root = join(process.cwd(), 'public', 'static');
    if (!existsSync(root)) return { total: 0, levels: [] };

    const dirs = readdirSync(root, { withFileTypes: true })
      .filter((d) => d.isDirectory() && LEVEL_DIR.test(d.name))
      .map((d) => ({ name: d.name, level: Number(d.name.match(LEVEL_DIR)![1]) }))
      .sort((a, b) => a.level - b.level);

    const levels: CourseLevel[] = [];
    for (const { name, level } of dirs) {
      const abs = join(root, name);
      const lessons = readdirSync(abs)
        .filter((f) => VIDEO_EXT.test(f))
        .map((file) => {
          const base = file.replace(VIDEO_EXT, '');
          const m = base.match(/-B(\d+)$/i);
          const no = m ? Number(m[1]) : 0;
          return {
            id: `${name}/${base}`,
            level,
            no,
            title: no ? `Bài ${no}` : base,
            file,
            url: `/static/${name}/${encodeURIComponent(file)}`,
          };
        })
        .sort((a, b) => a.no - b.no || a.file.localeCompare(b.file));
      if (lessons.length) levels.push({ level, name: `HSK ${level}`, dir: name, lessons });
    }
    const total = levels.reduce((s, l) => s + l.lessons.length, 0);
    return { total, levels };
  }
}
