using { cuid, managed } from '@sap/cds/common';

@odata service Consumo {
  entity Cnhs : cuid, managed { 
    categoria:String;
  }
  entity ConsumoVeiculos : cuid, managed {
    CNH:String;
    kmPrimeiro:Integer;
    kmSegundo:Integer;
    litros:Integer;
  }
}

@odata 
@path: 'calc' service CalculoConsumo {
  action CalculoConsumo(kmPrimeiro: Decimal(13,3), kmSegundo: Decimal(13,3), litros : Decimal(13,3)) returns Decimal(13,5);
}