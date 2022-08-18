import { MappingDto, RequestDto } from '@/dtos/index';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Mapping } from '@/db/entities/mapping.entity';
import { Repository } from 'typeorm';
import { Report } from '../../types';

@Injectable()
export class MappingService {
  constructor(@InjectRepository(Mapping) private readonly mappingRepo: Repository<Mapping>) {}

  async all(): Promise<Mapping[] | null> {
    return this.mappingRepo.find();
  }

  async get(dto: RequestDto): Promise<any | null> {
    return await this.mappingRepo.findOne({ where: { user: dto.mac, mapping: dto.type } });
  }

  async create(dto: MappingDto): Promise<any> {
    console.log(dto);

    dto.template = this.getJsonTemplate(dto.source);
    const mappingAlready = await this.mappingRepo.findOne({ where: { user: dto.user, mapping: dto.mapping } });
    if (mappingAlready) {
      console.log(mappingAlready);
      return await this.mappingRepo.save({ id: mappingAlready.id, ...dto });
    }

    return await this.mappingRepo.save(dto);
  }

  getJsonTemplate(source: string): string {
    const json = JSON.parse(source);
    let templateString = '{';
    let first = true;
    json.forEach((e) => {
      if (!first) {
        templateString += ',';
      }
      const element = `"${e.name}":"<%=${e.field}%>"`;
      templateString += element;
      first = false;
    });
    templateString += '}';

    return templateString;
  }
}
