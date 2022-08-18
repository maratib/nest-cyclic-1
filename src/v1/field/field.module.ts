import { Module } from '@nestjs/common';
import { DbModule } from '@/db/db.module';
import { FieldController } from './field.controller';
import { FieldService } from './field.service';

@Module({
  imports: [DbModule],
  controllers: [FieldController],
  providers: [FieldService],
  exports: [FieldService],
})
export class FieldModule {}
