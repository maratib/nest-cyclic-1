import { ApiProperty } from '@nestjs/swagger';
import { Transform } from 'class-transformer';
import { IsEmail, IsNotEmpty, IsNumber, IsOptional, Length, Matches } from 'class-validator';
import { Report } from '../types';
import { MESSAGES, REGEX } from '../utils/app.utils';
import { toNumber } from '../utils/cast.helper';

export class LoginDto {
  @ApiProperty({
    description: 'Email address of the user',
    example: 'reachme@amitavroy.com',
  })
  @IsNotEmpty()
  @IsEmail()
  username: string;

  @ApiProperty({
    description: 'Password in plain text',
    example: 'Password@123',
  })
  @IsNotEmpty()
  password: string;
}

export class PaginationDto {
  @Transform(({ value }) => toNumber(value, { default: 1, min: 1 }))
  @IsNumber()
  @IsOptional()
  public page: number = 1;

  @Transform(({ value }) => toNumber(value, { default: 2, min: 1 }))
  @IsNumber()
  @IsOptional()
  public limit: number = 2;
}

export class RequestDto {
  @IsNotEmpty()
  mac: string;

  @IsNotEmpty()
  type: string;
}

export class CaDto {
  identifierType: string = null;
  identifier: string = null;
  caType: string = null;
  eventType: string = null;
  eventDesc: string = null;
  adjType: string = null;
  adjDesc: string = null;
  adjFactor: string = null;
  currency: string = null;
  exchange: string = null;
  effectiveDate: Date = null;
  payDate: Date = null;
  divRate: string = null;
  nomValue: string = null;
  nomCurrency: string = null;
  nomDate: Date = null;
}

export class MappingDto {
  @IsNotEmpty()
  user: string;

  @IsNotEmpty()
  mapping: string;

  @IsNotEmpty()
  report: Report;

  @IsNotEmpty()
  source: string;

  @IsOptional()
  template: string;
}

export class FieldDto {
  @IsNotEmpty()
  name: string;

  @IsNotEmpty()
  desc: string;

  @IsNotEmpty()
  fieldType: string;

  @IsNotEmpty()
  fieldFormat: string;
}

export class UserDto {
  @ApiProperty({
    description: 'The name of the User',
    example: 'Jhon Doe',
  })
  @IsNotEmpty()
  name: string;

  @ApiProperty({
    description: 'The email address of the User',
    example: 'jhon.doe@gmail.com',
  })
  @IsNotEmpty({ message: 'No empty email allowed' })
  @IsEmail()
  email: string;

  @ApiProperty({
    description: 'The password of the User',
    example: 'Password@123',
  })
  @IsNotEmpty()
  @Length(8, 24)
  @Matches(REGEX.PASSWORD_RULE, { message: MESSAGES.PASSWORD_RULE_MESSAGE })
  password: string;

  @ApiProperty({
    description: 'Confirm the password',
    example: 'Password@123',
  })
  @IsNotEmpty()
  @Length(8, 24)
  @Matches(REGEX.PASSWORD_RULE, { message: MESSAGES.PASSWORD_RULE_MESSAGE })
  confirm: string;
}
