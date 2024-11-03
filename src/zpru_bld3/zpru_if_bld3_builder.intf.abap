INTERFACE zpru_if_bld3_builder
  PUBLIC .
  TYPES tv_id                TYPE c LENGTH 10.
  TYPES tv_brand             TYPE c LENGTH 40.
  TYPES tv_model             TYPE c LENGTH 40.
  TYPES tv_price             TYPE p LENGTH 8 DECIMALS 0.
  TYPES tv_equipment         TYPE c LENGTH 40.
  TYPES tv_multimedia        TYPE c LENGTH 40.
  TYPES tv_assistance_system TYPE c LENGTH 40.
  TYPES tv_color              TYPE c LENGTH 40.

  METHODS set_id
    IMPORTING iv_id             TYPE tv_id
    RETURNING VALUE(ro_builder) TYPE REF TO zpru_if_bld3_builder.

  METHODS set_price
    IMPORTING iv_price          TYPE tv_price
    RETURNING VALUE(ro_builder) TYPE REF TO zpru_if_bld3_builder.

  METHODS set_equipment
    IMPORTING iv_equipment      TYPE tv_equipment
    RETURNING VALUE(ro_builder) TYPE REF TO zpru_if_bld3_builder.

  METHODS set_multimedia
    IMPORTING iv_multimedia     TYPE tv_multimedia
    RETURNING VALUE(ro_builder) TYPE REF TO zpru_if_bld3_builder.

  METHODS set_assistance_system
    IMPORTING iv_assistance_system TYPE tv_assistance_system
    RETURNING VALUE(ro_builder)    TYPE REF TO zpru_if_bld3_builder.

  METHODS set_color
    IMPORTING iv_color          TYPE tv_color
    RETURNING VALUE(ro_builder) TYPE REF TO zpru_if_bld3_builder.

*  METHODS build
*    RETURNING VALUE(ro_car) TYPE REF TO zpru_cl_bld2_car.
ENDINTERFACE.
