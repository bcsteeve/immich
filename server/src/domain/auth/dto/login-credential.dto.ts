import { ApiProperty } from '@nestjs/swagger';
import { Transform } from 'class-transformer';
import { IsEmail, IsNotEmpty, IsString } from 'class-validator';

export class LoginCredentialDto {
  @IsEmail({ require_tld: false })
  @ApiProperty({ example: 'testuser@email.com' })
  @Transform(({ value }) => value.toLowerCase())
  email!: string;

  @IsString()
  @IsNotEmpty()
  @ApiProperty({ example: 'password' })
  password!: string;
}
