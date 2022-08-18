import { Test, TestingModule } from '@nestjs/testing';
import { FieldDto } from '@/dtos';
import { FieldService } from './field.service';
import { FieldModule } from './field.module';

describe('FieldService', () => {
  let service: FieldService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      imports: [FieldModule],
    }).compile();

    service = module.get<FieldService>(FieldService);
    // const user = await service.getUserByEmail('moon@gmail.com');
    // console.log(user);
  });

  it('FieldService should be defined', () => {
    console.log('UserService only test');

    expect(service).toBeDefined();
  });

  // it('FieldService create field', async () => {
  //   const dto = new FieldDto();
  //   dto.name = 'eventType';
  //   dto.desc = 'Capital Change Event Type';
  //   dto.fieldType = 'ca';
  //   dto.fieldFormat = 'number';

  //   const res = await service.create(dto);
  //   console.log(res);

  //   expect(service).toBeDefined();
  // });

  it('FieldService getAllByType test', async () => {
    const res = await service.getAllByType('ca');
    console.log(res);

    expect(service).toBeDefined();
  });
});
