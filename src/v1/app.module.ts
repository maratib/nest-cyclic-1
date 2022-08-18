import { config, validationSchema, getEnvFile } from '@/config/index';
import { ConfigModule } from '@nestjs/config';
import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { UserModule } from './user/user.module';
import { CaModule } from './ca/ca.module';
import { FieldModule } from './field/field.module';
import { MappingModule } from './mapping/mapping.module';
import { AuthModule } from './auth/auth.module';

@Module({
  imports: [
    ConfigModule.forRoot({
      validationSchema,
      envFilePath: getEnvFile(),
      isGlobal: true,
      load: [config],
    }),
    UserModule,
    CaModule,
    FieldModule,
    MappingModule,
    AuthModule,
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
