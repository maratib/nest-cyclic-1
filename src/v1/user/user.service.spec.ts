import { UserModule } from './user.module';
import { Test, TestingModule } from '@nestjs/testing';
import { UserService } from './user.service';

describe('UserService', () => {
  let service: UserService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      imports: [UserModule],
    }).compile();

    service = module.get<UserService>(UserService);
    // const user = await service.getUserByEmail('moon@gmail.com');
    // console.log(user);
  });

  it('UserService should be defined', () => {
    console.log('UserService only test');

    expect(service).toBeDefined();
  });

  it('UserService auto run test', () => {
    console.log('Only auto run');

    expect(service).toBeDefined();
  });

  // it('UserService create user', async () => {
  //   const user = new UserRegisterDto();
  //   user.name = 'Moon';
  //   user.email = 'moon@gmail.com';
  //   user.password = 'Sam@12345';
  //   user.confirm = 'moon@gmail.com';

  //   const res = await service.create(user);
  //   console.log(res);

  //   expect(service).toBeDefined();
  // });
});
