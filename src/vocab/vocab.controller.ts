import { Controller, Get, Param, Query } from '@nestjs/common';
import { VocabService, type VocabQuery } from './vocab.service.js';

@Controller('api/vocab')
export class VocabController {
  constructor(private readonly service: VocabService) {}

  // Đặt route tĩnh TRƯỚC route :char để Express không nhầm "levels" là 1 chữ.
  @Get('levels')
  levels() {
    return this.service.levels();
  }

  @Get()
  list(@Query() query: VocabQuery) {
    return this.service.list(query);
  }

  @Get(':char')
  lookup(@Param('char') char: string) {
    return this.service.lookup(char);
  }
}

@Controller('api/guide')
export class GuideController {
  constructor(private readonly service: VocabService) {}

  @Get()
  all() {
    return this.service.guide();
  }
}

@Controller('api/radicals')
export class RadicalsController {
  constructor(private readonly service: VocabService) {}

  @Get()
  list(
    @Query('q') q?: string,
    @Query('strokes') strokes?: string,
    @Query('common') common?: string,
  ) {
    return this.service.radicals({ q, strokes, common });
  }

  @Get(':id')
  byId(@Param('id') id: string) {
    return this.service.radicalById(id);
  }
}

@Controller('api/pronunciation')
export class PronunciationController {
  constructor(private readonly service: VocabService) {}

  @Get()
  all() {
    return this.service.pronunciation();
  }
}
