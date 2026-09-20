import { Controller, Get } from '@nestjs/common';
import { CoursesService, type CourseCatalog } from './courses.service.js';

@Controller('api/courses')
export class CoursesController {
  constructor(private readonly service: CoursesService) {}

  // Danh mục video bài giảng theo cấp (nguồn: public/static/HSK{N}).
  @Get()
  list(): CourseCatalog {
    return this.service.list();
  }
}
