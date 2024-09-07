@EndUserText.label : 'Material'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table z01_material {

  key client      : abap.clnt not null;
  key material_id : z01_material_id not null;
  description     : z01_description;
  category        : z01_material_category;
  measure_unit    : z01_unit;
  @Semantics.quantity.unitOfMeasure : 'z01_material.weight_unit'
  weight          : z01_weight;
  weight_unit     : z01_unit;
  @Semantics.amount.currencyCode : 'z01_material.currency'
  price           : z01_amount;
  currency        : z01_currency;

}