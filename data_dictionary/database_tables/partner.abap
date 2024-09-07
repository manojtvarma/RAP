@EndUserText.label : 'Partner'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table z01_partner {

  key client     : abap.clnt not null;
  key partner_id : z01_partner_id not null;
  partner_role   : z01_partner_role;
  first_name     : /dmo/first_name;
  last_name      : /dmo/last_name;
  email_address  : /dmo/email_address;
  phone_number   : /dmo/phone_number;
  address        : include z01_address;

}