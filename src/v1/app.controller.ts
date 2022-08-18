import { Body, Controller, Get, Post, Query } from '@nestjs/common';
import { SETTINGS } from '@/utils/app.utils';
import { AppService } from './app.service';
import { RequestDto } from '@/dtos';
import { MappingService } from './mapping/mapping.service';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get()
  async index(@Query() dto: RequestDto): Promise<any> {
    console.log(dto);

    return await this.appService.get(dto);
  }

  @Post()
  async create(@Body(SETTINGS.VALIDATION_PIPE) dto: RequestDto): Promise<any> {
    return await this.appService.get(dto);
  }
}
