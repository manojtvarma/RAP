@EndUserText.label : 'Address Details'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
define structure z01_address {

  street       : /dmo/street;
  city         : /dmo/city;
  postal_code  : /dmo/postal_code;
  country_code : land1;

}