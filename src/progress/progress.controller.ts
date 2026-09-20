import { Body, Controller, Delete, Get, Headers, Post } from '@nestjs/common';
import { ProgressService } from './progress.service.js';
import { AuthService } from '../auth/auth.service.js';

@Controller('api/progress')
export class ProgressController {
  constructor(
    private readonly service: ProgressService,
    private readonly auth: AuthService,
  ) {}

  @Get()
  all(@Headers('authorization') authHeader?: string) {
    return this.service.all(this.auth.userIdFromHeader(authHeader));
  }

  // body: { char: "你好", mistakes: 1 } — đăng nhập thì lưu riêng theo tài khoản.
  @Post()
  save(@Headers('authorization') authHeader: string | undefined, @Body() body: { char: string; mistakes?: number }) {
    return this.service.save(this.auth.userIdFromHeader(authHeader), body?.char, body?.mistakes ?? 0);
  }

  // Xóa toàn bộ tiến độ của user hiện tại (hoặc của khách).
  @Delete()
  reset(@Headers('authorization') authHeader?: string) {
    return this.service.reset(this.auth.userIdFromHeader(authHeader));
  }
}
