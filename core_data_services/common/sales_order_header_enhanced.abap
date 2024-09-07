@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Header'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Z01_I_SalesOrderHeaderEnhanced
  as select from Z01_I_SalesOrderHeader
{
  key OrderId,
      
      'Standard Order'                                                                                           as OrderType,
      'sap-icon://sales-order'                                                                                   as OrderIcon,

      PartnerId,
      concat_with_space(_Partner.FirstName, _Partner.LastName, 1)                                                as PartnerName,
      _Partner._PartnerRoleText.Description                                                                      as PartnerRoleDescription,

      OrderStatus,
      _OrderStatusText.Description                                                                               as OrderStatusDescription,
      case
        when OrderStatus = 'BL'
        or OrderStatus = 'CA' then 1
        when OrderStatus = 'PR' then 2
         when OrderStatus = 'OP'
         or  OrderStatus = 'CO'
          or OrderStatus = 'RE' then 3
        else 0
        end                                                                                                      as OrderStatusCriticality,

      @Semantics.amount.currencyCode: 'Currency'
      TotalAmount,
      Currency,

      CreatedDateTime,
      @EndUserText.label: 'Created On'
      tstmp_to_dats( CreatedDateTime,
                     abap_system_timezone( $session.client, 'NULL' ),
                     $session.client, 'NULL' )                                                                   as CreatedOn,
      @EndUserText.label: 'Created At'
      tstmp_to_tims( CreatedDateTime, abap_system_timezone( $session.client, 'NULL' ), $session.client, 'NULL' ) as CreatedAt,

      @EndUserText.label: 'Created By'
      CreatedBy,


      ChangedDateTime,
      @EndUserText.label: 'Changed On'
      tstmp_to_dats( ChangedDateTime,
                     abap_system_timezone( $session.client, 'NULL' ),
                     $session.client, 'NULL' )                                                                   as ChangedOn,
      @EndUserText.label: 'Changed At'
      tstmp_to_tims( ChangedDateTime, abap_system_timezone( $session.client, 'NULL' ), $session.client, 'NULL' ) as ChangedAt,

      @EndUserText.label: 'ChangedBy'
      ChangedBy,

      /* Associations */
      _Currency,
      _OrderStatusText,
      _Partner,
      _SalesOrderItem

}
