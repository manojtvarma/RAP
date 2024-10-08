managed implementation in class zbp_01_i_salesorderheadertp unique;
strict ( 2 );

define behavior for Z01_I_SalesOrderHeaderTP alias _SalesOrderHeader
persistent table z01_so_header
lock master
authorization master ( instance )
early numbering
//etag master <field_name>
{
  create;
  update;
  delete;
  field ( readonly ) OrderId;
  association _SalesOrderItem { create; }
  mapping for z01_so_header
    {
      OrderId         = order_id;
      PartnerId       = partner_id;
      OrderStatus     = order_status;
      TotalAmount     = total_amount;
      Currency        = currency;
      CreatedBy       = created_by;
      CreatedDateTime = created_date_time;
      ChangedBy       = changed_by;
      ChangedDateTime = changed_date_time;
    }
}

define behavior for Z01_I_SalesOrderItemTP alias _SalesOrderItem
implementation in class zbp_01_i_salesorderitemtp unique
persistent table z01_so_item
lock dependent by _SalesOrderHeader
authorization dependent by _SalesOrderHeader
//etag master <field_name>
{
  update;
  delete;
  field ( readonly ) OrderId, ItemNo;
  association _SalesOrderHeader;
  mapping for z01_so_item
    {
      OrderId    = order_id;
      ItemNo     = item_no;
      MaterialId = material_id;
      Quantity   = quantity;
      Unit       = unit;
      Price      = price;
      Currency   = currency;
    }
}