import { CaService } from './ca.service';
import { Controller, Get } from '@nestjs/common';
import { CaDto } from '../../dtos';
import cActions from './ca.json';

@Controller('ca')
export class CaController {
  constructor(private readonly service: CaService) {}

  @Get()
  async index() {
    cActions['Contents'].forEach(async (e) => {
      const dto = new CaDto();
      dto.identifierType = e.IdentifierType == 'null' ? null : e.IdentifierType;
      dto.identifier = e.Identifier == 'null' ? null : e.Identifier;
      dto.caType = e['Corporate Actions Type'] == 'null' ? null : e['Corporate Actions Type'];
      dto.eventType = e['Capital Change Event Type'] == 'null' ? null : e['Capital Change Event Type'];
      dto.eventDesc = e['Capital Change Event Type Description'] == 'null' ? null : e['Capital Change Event Type Description'];
      dto.adjType = e['Actual Adjustment Type'] == 'null' ? null : e['Actual Adjustment Type'];
      dto.adjDesc = e['Actual Adjustment Type Description'] == 'null' ? null : e['Actual Adjustment Type Description'];
      dto.adjFactor = e['Adjustment Factor'] == 'null' ? null : e['Adjustment Factor'];
      dto.currency = e['Currency Code'] == 'null' ? null : e['Currency Code'];
      dto.exchange = e['Exchange Code'] == 'null' ? null : e['Exchange Code'];
      dto.effectiveDate = e['Effective Date'] == 'null' ? null : e['Effective Date'];
      dto.payDate = e['Dividend Pay Date'] == 'null' ? null : e['Dividend Pay Date'];
      dto.divRate = e['Dividend Rate'] == 'null' ? null : e['Dividend Rate'];
      dto.nomValue = e['Nominal Value'] == 'null' ? null : e['Nominal Value'];
      dto.nomCurrency = e['Nominal Value Currency'] == 'null' ? null : e['Nominal Value Currency'];
      dto.nomDate = e['Nominal Value Date'] == 'null' ? null : e['Nominal Value Date'];

      const res = await this.service.create(dto);
    });

    return 'Hello Ca';
  }
}
