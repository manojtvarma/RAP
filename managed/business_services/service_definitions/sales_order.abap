@EndUserText.label: 'Sales Order Managed'
define service Z01_SALES_ORDER_M {
  expose Z01_C_SalesOrderHeaderTP as SalesOrderHeader;
  expose Z01_C_SalesOrderItemTP   as SalesOrderItem;
  expose Z01_C_PartnerContactCard as PartnerContactCard;
  expose Z01_C_PartnerVH          as F4_ParterId;
  expose Z01_C_OrderStatusVH      as F4_SalesOrderStatus;
  expose Z01_C_SalesOrderIdVH     as F4_SalesOrderId;
}