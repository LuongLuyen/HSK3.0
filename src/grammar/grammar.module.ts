import { Module } from '@nestjs/common';
import { GrammarController } from './grammar.controller.js';
import { GrammarService } from './grammar.service.js';

@Module({
  controllers: [GrammarController],
  providers: [GrammarService],
})
export class GrammarModule {}