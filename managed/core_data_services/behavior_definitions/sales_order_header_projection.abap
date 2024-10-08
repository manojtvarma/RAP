projection;
strict ( 2 );

define behavior for Z01_C_SalesOrderHeaderTP alias SalesOrderHeader
{
  use create;
  use update;
  use delete;

  use association _SalesOrderItem { create; }
}

define behavior for Z01_C_SalesOrderItemTP alias SalesOrderItem
{
  use update;
  use delete;

  use association _SalesOrderHeader;
}