import * as bcrypt from 'bcrypt';
import { Injectable, UnauthorizedException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { User } from '../../db/entities/user.entity';
import { LoginDto, UserDto } from '@/dtos';
import { Role } from '@/types';

@Injectable()
export class UserService {
  constructor(@InjectRepository(User) private readonly userRepo: Repository<User>) {}

  async all(): Promise<User[] | null> {
    return this.userRepo.find();
  }

  async create(userDto: UserDto): Promise<User> {
    return await this.userRepo.save(this.userRepo.create(userDto));
    // return await this.userRepo.save(userRegister);
  }

  async getUserByEmail(email: string): Promise<User | null> {
    return this.userRepo.findOne({ where: { email } });
  }

  async getUserById(id: string): Promise<User | null> {
    return this.userRepo.findOne({ where: { id } });
  }
  getRoleById(id: number): string {
    return Role.USER;
  }

  async doLogin(dto: LoginDto) {
    const user = await this.userRepo.findOne({ where: { email: dto.username } });
    if (user) {
      if (!(await bcrypt.compare(dto.password, user.password))) throw new UnauthorizedException();
      return user.id;
    }
    return null;
  }
}
