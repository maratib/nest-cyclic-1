import { Body, Controller, Get, Post } from '@nestjs/common';
import { SETTINGS } from '@/utils/app.utils';
import { UserDto } from '@/dtos';
import { User } from '@/db/entities/user.entity';
import { UserService } from './user.service';

@Controller('user')
export class UserController {
  constructor(private readonly service: UserService) {}

  @Get()
  async index(): Promise<User[]> {
    return await this.service.all();
  }

  @Post()
  async create(@Body(SETTINGS.VALIDATION_PIPE) userDto: UserDto): Promise<User | null> {
    return await this.service.create(userDto);
  }
}
