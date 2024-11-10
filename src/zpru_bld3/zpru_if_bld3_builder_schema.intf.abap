INTERFACE zpru_if_bld3_builder_schema
  PUBLIC .
  INTERFACES zpru_if_bld3_builder.

  TYPES: tv_schema_color TYPE c LENGTH 40.

  METHODS set_schema_color
    IMPORTING iv_schema_color          TYPE tv_schema_color
    RETURNING VALUE(ro_builder) TYPE REF TO zpru_if_bld3_builder_schema.

  METHODS build
    RETURNING VALUE(ro_car) TYPE REF TO zpru_if_bld3_product_schema.

ENDINTERFACE.
