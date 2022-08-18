import { Body, Module, Post } from '@nestjs/common';
import { DbModule } from '@/db/db.module';
import { UserService } from './user.service';

import { UserController } from './user.controller';

@Module({
  imports: [DbModule],
  providers: [UserService],
  controllers: [UserController],
  exports: [UserService],
})
export class UserModule {}
