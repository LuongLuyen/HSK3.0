import { Module } from '@nestjs/common';
import { ServeStaticModule } from '@nestjs/serve-static';
import { join } from 'node:path';
import { AppController } from './app.controller.js';
import { AppService } from './app.service.js';
import { CharactersModule } from './characters/characters.module.js';
import { DbModule } from './db/db.module.js';
import { AuthModule } from './auth/auth.module.js';
import { VocabModule } from './vocab/vocab.module.js';
import { ProgressModule } from './progress/progress.module.js';
import { GrammarModule } from './grammar/grammar.module.js';
import { CoursesModule } from './courses/courses.module.js';

@Module({
  imports: [
    // Phục vụ web tĩnh trong thư mục public/ (index.html, app.js, style.css)
    ServeStaticModule.forRoot({
      rootPath: join(process.cwd(), 'public'),
      exclude: ['/api/{*path}'],
    }),
    DbModule, // SQLite: data/app.db (tự tạo + seed lần đầu) — dùng chung toàn app
    AuthModule,
    CharactersModule,
    VocabModule,
    ProgressModule,
    GrammarModule,
    CoursesModule,
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
