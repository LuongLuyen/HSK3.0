import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module.js';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  app.enableCors();
  await app.listen(process.env.PORT ?? 3000);
  console.log(`Hoc-viet-chu-han NestJS: http://localhost:${process.env.PORT ?? 3000}`);
}
await bootstrap();
