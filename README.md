# RAP -  ABAP Restful ABAP  Programming Model

## Before starting with SAP RAP Programming:

[Download the Eclipse IDE and add the ABAP Development Tools (ADT) Plugin](https://developers.sap.com/tutorials/abap-install-adt..html)

[Create Trial Account on SAP BTP](https://developers.sap.com/tutorials/hcp-create-trial-account.html)

[Create SAP BTP ABAP Environment for Trial Account](https://developers.sap.com/tutorials/abap-environment-trial-onboarding.html) 

[Create an ABAP Cloud Project](https://developers.sap.com/tutorials/abap-environment-create-abap-cloud-project.html)

[Create an ABAP Package](https://developers.sap.com/tutorials/abap-dev-create-package..html) ZLEARN_SAP_RAP

## We want to create basic sales order application using RAP

[Create Database Table](https://developers.sap.com/tutorials/abap-environment-create-table..html)

* Z01_MATERIAL
```
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
```
* Z01_PARTNER
* Z01_SO_HEADER
* Z01_SO_ITEM










