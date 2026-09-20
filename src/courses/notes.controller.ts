import { Body, Controller, Delete, Get, Headers, Post, Query } from '@nestjs/common';
import { NotesService } from './notes.service.js';
import { AuthService } from '../auth/auth.service.js';

@Controller('api/notes')
export class NotesController {
  constructor(
    private readonly service: NotesService,
    private readonly auth: AuthService,
  ) {}

  // ?lesson=HSK1/HSK1-B1 → ghi chú 1 bài; không có lesson → toàn bộ ghi chú của user.
  @Get()
  get(@Headers('authorization') authHeader: string | undefined, @Query('lesson') lesson?: string) {
    const userId = this.auth.userIdFromHeader(authHeader);
    return lesson ? this.service.get(userId, lesson) : this.service.all(userId);
  }

  // body: { lesson: "HSK1/HSK1-B1", content: "..." } — đăng nhập thì lưu riêng theo tài khoản.
  @Post()
  save(
    @Headers('authorization') authHeader: string | undefined,
    @Body() body: { lesson?: string; content?: string },
  ) {
    return this.service.save(this.auth.userIdFromHeader(authHeader), body?.lesson || '', body?.content || '');
  }

  @Delete()
  remove(@Headers('authorization') authHeader: string | undefined, @Query('lesson') lesson?: string) {
    return this.service.remove(this.auth.userIdFromHeader(authHeader), lesson || '');
  }
}
