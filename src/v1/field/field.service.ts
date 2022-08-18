import { FieldDto } from '@/dtos';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Field } from '@/db/entities/field.entity';

@Injectable()
export class FieldService {
  constructor(@InjectRepository(Field) private readonly fieldRepo: Repository<Field>) {}

  async create(fieldDto: FieldDto): Promise<Field> {
    return await this.fieldRepo.save(fieldDto);
  }

  async getById(id: number): Promise<Field | null> {
    return this.fieldRepo.findOne({ where: { id } });
  }

  async getByName(name: string): Promise<Field | null> {
    return this.fieldRepo.findOne({ where: { name } });
  }

  async getAll(): Promise<Field[] | null> {
    return this.fieldRepo.find();
  }

  async getAllByType(fieldType: string): Promise<Field[] | null> {
    return this.fieldRepo.find({ where: { fieldType }, order: { id: 'ASC' } });
  }
}
