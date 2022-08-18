import { CaDto } from './../../dtos/index';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Ca } from '../../db/entities/ca.entity';

@Injectable()
export class CaService {
  constructor(@InjectRepository(Ca) private readonly caRepo: Repository<Ca>) {}

  async all(): Promise<any> {
    return this.caRepo.find();
  }
  async create(dto: CaDto): Promise<any> {
    // console.log(dto);

    // return null;

    return await this.caRepo.save(dto);
  }
}
