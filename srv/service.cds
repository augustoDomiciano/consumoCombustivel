using { cuid, managed } from '@sap/cds/common';

@odata service Consumo {
  entity Cnhs : cuid, managed { 
    categoria:String
  }
  entity ConsumoVeiculos : cuid, managed {
    kmPrimeiro:Integer;
    kmSegundo:Integer;
    litros:Integer
  }
}