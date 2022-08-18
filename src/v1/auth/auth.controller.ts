import { UserService } from '@/v1/user/user.service';
import { Body, Controller, Post } from '@nestjs/common';
import { LoginDto } from '../../dtos';

@Controller('auth')
export class AuthController {
  constructor(private readonly userService: UserService) {}

  @Post('login')
  async login(@Body() loginDto: LoginDto): Promise<any> {
    return await this.userService.doLogin(loginDto);
  }
}
