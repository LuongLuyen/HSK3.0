import { Controller, Get, Query } from '@nestjs/common';
import {
  GrammarService,
  type GrammarQuery,
  type GrammarResult,
  type GrammarDocsResult,
} from './grammar.service.js';

@Controller('api/grammar')
export class GrammarController {
  constructor(private readonly service: GrammarService) {}

  @Get('levels')
  levels() {
    return this.service.levels();
  }

  @Get('docs')
  docs(): GrammarDocsResult {
    return this.service.docs();
  }

  @Get()
  list(@Query() query: GrammarQuery): GrammarResult {
    return this.service.list(query);
  }
}