import { Body, Controller, Get, Post } from '@nestjs/common';
import { Mapping } from '@/db/entities/mapping.entity';
import { MappingService } from './mapping.service';
import { SETTINGS } from '../../utils/app.utils';
import { MappingDto } from '../../dtos';

@Controller('mapping')
export class MappingController {
  constructor(private readonly service: MappingService) {}

  @Get()
  async index(): Promise<any> {
    return await this.service.all();
  }

  @Post()
  async create(@Body(SETTINGS.VALIDATION_PIPE) dto: MappingDto): Promise<any> {
    return await this.service.create(dto);
  }
}
