import { MappingService } from './mapping/mapping.service';
import { RequestDto } from './../dtos/index';
import { Injectable } from '@nestjs/common';
import { Report } from '../types';
import { Mapping } from '../db/entities/mapping.entity';
import { CaService } from './ca/ca.service';
import * as ejs from 'ejs';
@Injectable()
export class AppService {
  constructor(private readonly mappingService: MappingService, private readonly caService: CaService) {}

  getHello(): string {
    return 'Hello User API';
  }

  async get(dto: RequestDto): Promise<any> {
    const mapping = await this.mappingService.get(dto);
    if (mapping) {
      if (mapping.report === Report.JSON) {
        return await this.doJsonTemplate(mapping);
      }
      return await this.doXmlTemplate(mapping);
    }
    return null;
  }

  async doJsonTemplate(mapping: Mapping): Promise<any> {
    const jsonRes = { type: 'ca', data: [] };
    const caData = await this.caService.all();
    caData.forEach((e) => {
      const ejsTemplate = ejs.render(mapping.template, e);
      jsonRes.data.push(JSON.parse(ejsTemplate));
    });

    return jsonRes;
  }
  async doXmlTemplate(mapping: Mapping): Promise<any> {
    const json = await this.doJsonTemplate(mapping);
    const xmlData = this.OBJtoXML(json);
    return `<?xml version="1.0" encoding="UTF-8"?><root>${xmlData}</root>`;
  }

  OBJtoXML(obj) {
    var xml = '';
    for (var prop in obj) {
      xml += obj[prop] instanceof Array ? '' : '<' + prop + '>';
      if (obj[prop] instanceof Array) {
        for (var array in obj[prop]) {
          xml += '<' + prop + '>';
          xml += this.OBJtoXML(new Object(obj[prop][array]));
          xml += '</' + prop + '>';
        }
      } else if (typeof obj[prop] == 'object') {
        xml += this.OBJtoXML(new Object(obj[prop]));
      } else {
        xml += obj[prop];
      }
      xml += obj[prop] instanceof Array ? '' : '</' + prop + '>';
    }
    var xml = xml.replace(/<\/?[0-9]{1,}>/g, '');
    return xml;
  }
}
