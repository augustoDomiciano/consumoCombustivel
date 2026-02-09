using { cuid, managed } from '@sap/cds/common';

@odata service Consumo {
  entity Cnhs : cuid, managed { 
    categoria:String
  }
  entity ConsumoVeiculos : cuid, managed {
    CNH:String;
    kmPrimeiro:Integer;
    kmSegundo:Integer;
    litros:Integer
  }

  entity RemoverConsumo{
    
  }
}