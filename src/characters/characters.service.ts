import { Injectable } from '@nestjs/common';

// Data gốc: MakeMeAHanzi graphics.txt -> đã convert sẵn thành JSON từng chữ
// trong package hanzi-writer-data, host trên jsDelivr:
// https://cdn.jsdelivr.net/npm/hanzi-writer-data@latest/你.json
// Service này proxy + cache trong RAM để frontend gọi cùng 1 chỗ /api.
const UPSTREAM = 'https://cdn.jsdelivr.net/npm/hanzi-writer-data@latest';

@Injectable()
export class CharactersService {
  private cache = new Map<string, any>();

  async getCharacter(char: string): Promise<any | null> {
    const ch = [...char][0]; // chỉ lấy 1 ký tự đầu (tránh :char nhiều chữ)
    if (!ch || ch.trim() === '') return null;
    if (this.cache.has(ch)) return this.cache.get(ch);

    try {
      const res = await fetch(`${UPSTREAM}/${encodeURIComponent(ch)}.json`);
      if (!res.ok) return null;
      const data = await res.json();
      // Giữ tối đa ~2000 chữ trong cache
      if (this.cache.size > 2000) this.cache.clear();
      this.cache.set(ch, data);
      return data;
    } catch {
      return null;
    }
  }
}
