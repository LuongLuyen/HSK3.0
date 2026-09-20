import { Body, Controller, Get, Headers, Post } from '@nestjs/common';
import { AuthService } from './auth.service.js';

@Controller('api/auth')
export class AuthController {
  constructor(private readonly service: AuthService) {}

  // body: { username, password } -> { ok, token, username }
  @Post('register')
  register(@Body() body: { username?: string; password?: string }) {
    return this.service.register(body?.username || '', body?.password || '');
  }

  @Post('login')
  login(@Body() body: { username?: string; password?: string }) {
    return this.service.login(body?.username || '', body?.password || '');
  }

  @Post('logout')
  logout(@Headers('authorization') auth?: string) {
    return this.service.logout(auth);
  }

  // body: { oldPassword, newPassword } — cần đăng nhập.
  @Post('change-password')
  changePassword(
    @Headers('authorization') auth: string | undefined,
    @Body() body: { oldPassword?: string; newPassword?: string },
  ) {
    return this.service.changePassword(auth, body?.oldPassword || '', body?.newPassword || '');
  }

  @Get('me')
  me(@Headers('authorization') auth?: string) {
    return this.service.me(auth);
  }
}
