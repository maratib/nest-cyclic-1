import { FieldModule } from './field.module';
import { Test, TestingModule } from '@nestjs/testing';
import { FieldController } from './field.controller';
import { FieldDto } from '@/dtos';

describe('FieldController', () => {
  let controller: FieldController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      imports: [FieldModule],
    }).compile();

    controller = module.get<FieldController>(FieldController);
  });

  it('FiledController should be defined', () => {
    expect(controller).toBeDefined();
  });

  //   it('FiledController post', async () => {
  //     const dto = new FieldDto();
  //     dto.name = 'eventType';
  //     dto.desc = 'Capital Change Event Type';
  //     dto.fieldType = 'ca';
  //     dto.fieldFormat = 'number';

  //     const res = await controller.post(dto);
  //     console.log(res);

  //     expect(controller).toBeDefined();
  //   });
});
