@EndUserText.label : 'Sales Order Header'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table z01_so_header {

  key client   : abap.clnt not null;
  key order_id : z01_order_id not null;
  @AbapCatalog.foreignKey.screenCheck : false
  partner_id   : z01_partner_id
    with foreign key z01_partner
      where partner_id = z01_so_header.partner_id;
  order_status : z01_order_status;
  @Semantics.amount.currencyCode : 'z01_so_header.currency'
  total_amount : z01_amount;
  currency     : z01_currency;
  admin        : include z01_admin;

}
