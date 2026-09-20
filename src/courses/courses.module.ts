import { Module } from '@nestjs/common';
import { CoursesController } from './courses.controller.js';
import { CoursesService } from './courses.service.js';
import { NotesController } from './notes.controller.js';
import { NotesService } from './notes.service.js';
import { AuthModule } from '../auth/auth.module.js';

@Module({
  imports: [AuthModule],
  controllers: [CoursesController, NotesController],
  providers: [CoursesService, NotesService],
})
export class CoursesModule {}
