import { FieldService } from './field.service';
import { Body, Controller, Get, Param, Post } from '@nestjs/common';
import { SETTINGS } from '@/utils/app.utils';
import { FieldDto } from '@/dtos';
import { Field } from '@/db/entities/field.entity';

@Controller('field')
export class FieldController {
  constructor(private readonly service: FieldService) {}
  @Get()
  async index(): Promise<any> {
    return await this.service.getAll();
  }

  //find by id http://localhost:3000/fields/field/12
  @Get('/id/:id')
  async byId(@Param() params): Promise<Field> {
    return this.service.getById(params.id);
  }

  //find by id http://localhost:3000/fields/type/cs
  @Get('/type/:type')
  async byType(@Param() params): Promise<Field[] | null> {
    return this.service.getAllByType(params.type);
  }

  @Post()
  async create(@Body(SETTINGS.VALIDATION_PIPE) fieldDto: FieldDto): Promise<Field | null> {
    return await this.service.create(fieldDto);
  }
}
