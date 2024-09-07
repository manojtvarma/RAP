CLASS zbp_01_i_salesorderheadertp DEFINITION PUBLIC ABSTRACT FINAL FOR BEHAVIOR OF z01_i_salesorderheadertp.
ENDCLASS.

CLASS zbp_01_i_salesorderheadertp IMPLEMENTATION.
ENDCLASS.

/*Local Types*/
CLASS lhc__SalesOrderHeader DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR _SalesOrderHeader RESULT result.

    METHODS earlynumbering_create FOR NUMBERING
      IMPORTING entities FOR CREATE _SalesOrderHeader.

ENDCLASS.

CLASS lhc__SalesOrderHeader IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD earlynumbering_create.
  ENDMETHOD.

ENDCLASS.