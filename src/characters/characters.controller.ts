import { Controller, Get, Param, NotFoundException } from '@nestjs/common';
import { CharactersService } from './characters.service.js';

@Controller('api/characters')
export class CharactersController {
  constructor(private readonly service: CharactersService) {}

  // GET /api/characters/你 -> data 1 chữ (strokes, medians) từ MakeMeAHanzi (qua hanzi-writer-data CDN, có cache)
  @Get(':char')
  async getOne(@Param('char') char: string) {
    const data = await this.service.getCharacter(char);
    if (!data) throw new NotFoundException(`Không có dữ liệu chữ “${char}”`);
    return data;
  }

  // GET /api/characters/你/strokes -> chỉ trả số nét + strokes (nhẹ cho list)
  @Get(':char/strokes')
  async getStrokes(@Param('char') char: string) {
    const data = await this.service.getCharacter(char);
    if (!data) throw new NotFoundException(`Không có dữ liệu chữ “${char}”`);
    return { character: char, strokeCount: data.strokes.length, strokes: data.strokes };
  }
}
