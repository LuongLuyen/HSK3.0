import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHealth() {
    return {
      ok: true,
      app: 'HSK3.0',
      dataSource: 'MakeMeAHanzi via hanzi-writer-data CDN (có cache server)',
      time: new Date().toISOString(),
    };
  }
}
