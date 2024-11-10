INTERFACE zpru_if_bld3_product_schema
  PUBLIC .
  INTERFACES zpru_if_bld3_product.

  TYPES: tv_schema_color TYPE c LENGTH 40.

    METHODS get_schema_color
      RETURNING VALUE(rv_schema_color) TYPE tv_schema_color.

ENDINTERFACE.
