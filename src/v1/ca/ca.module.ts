import { Module } from '@nestjs/common';
import { DbModule } from '../../db/db.module';
import { CaService } from './ca.service';
import { CaController } from './ca.controller';

@Module({
  imports: [DbModule],
  providers: [CaService],
  controllers: [CaController],
  exports: [CaService],
})
export class CaModule {}
