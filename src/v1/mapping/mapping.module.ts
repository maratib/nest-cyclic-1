import { Module } from '@nestjs/common';
import { MappingService } from './mapping.service';
import { MappingController } from './mapping.controller';
import { DbModule } from '../../db/db.module';

@Module({
  imports: [DbModule],
  providers: [MappingService],
  controllers: [MappingController],
  exports: [MappingService],
})
export class MappingModule {}
