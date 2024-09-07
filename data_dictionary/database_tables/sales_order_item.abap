@EndUserText.label : 'Sales Order Item'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table z01_so_item {

  key client   : abap.clnt not null;
  @AbapCatalog.foreignKey.screenCheck : false
  key order_id : z01_order_id not null
    with foreign key z01_so_header
      where order_id = z01_so_item.order_id;
  key item_no  : z01_item_no not null;
  @AbapCatalog.foreignKey.screenCheck : false
  material_id  : z01_material_id
    with foreign key z01_material
      where material_id = z01_so_item.material_id;
  @Semantics.quantity.unitOfMeasure : 'z01_so_item.unit'
  quantity     : z01_quantity;
  unit         : z01_unit;
  @Semantics.amount.currencyCode : 'z01_so_item.currency'
  price        : z01_amount;
  currency     : z01_currency;

}
