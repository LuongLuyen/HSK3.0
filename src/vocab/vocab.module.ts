import { Module } from '@nestjs/common';
import { VocabController, RadicalsController, PronunciationController, GuideController } from './vocab.controller.js';
import { VocabService } from './vocab.service.js';

@Module({
  controllers: [VocabController, RadicalsController, PronunciationController, GuideController],
  providers: [VocabService],
})
export class VocabModule {}
