CLASS zpru_cl_bld2_car_builder DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    TYPES tv_id                TYPE c LENGTH 10.
    TYPES tv_brand             TYPE c LENGTH 40.
    TYPES tv_model             TYPE c LENGTH 40.
    TYPES tv_price             TYPE p LENGTH 8 DECIMALS 0.
    TYPES tv_equipment         TYPE c LENGTH 40.
    TYPES tv_multimedia        TYPE c LENGTH 40.
    TYPES tv_assistance_system TYPE c LENGTH 40.
    TYPES tv_color              TYPE c LENGTH 40.

    METHODS constructor
      IMPORTING iv_brand TYPE tv_brand
                iv_model TYPE tv_model.

    METHODS set_id
      IMPORTING iv_id             TYPE tv_id
      RETURNING VALUE(ro_builder) TYPE REF TO zpru_cl_bld2_car_builder.

    METHODS set_price
      IMPORTING iv_price          TYPE tv_price
      RETURNING VALUE(ro_builder) TYPE REF TO zpru_cl_bld2_car_builder.

    METHODS set_equipment
      IMPORTING iv_equipment      TYPE tv_equipment
      RETURNING VALUE(ro_builder) TYPE REF TO zpru_cl_bld2_car_builder.

    METHODS set_multimedia
      IMPORTING iv_multimedia     TYPE tv_multimedia
      RETURNING VALUE(ro_builder) TYPE REF TO zpru_cl_bld2_car_builder.

    METHODS set_assistance_system
      IMPORTING iv_assistance_system TYPE tv_assistance_system
      RETURNING VALUE(ro_builder)    TYPE REF TO zpru_cl_bld2_car_builder.

    METHODS set_color
      IMPORTING iv_color          TYPE tv_color
      RETURNING VALUE(ro_builder) TYPE REF TO zpru_cl_bld2_car_builder.

    METHODS build
      RETURNING VALUE(ro_car) TYPE REF TO zpru_cl_bld2_car.

  PROTECTED SECTION.
    DATA mv_id                TYPE tv_id.
    DATA mv_brand             TYPE tv_brand.
    DATA mv_model             TYPE tv_model.
    DATA mv_price             TYPE tv_price.
    DATA mv_equipment         TYPE tv_equipment.
    DATA mv_multimedia        TYPE tv_multimedia.
    DATA mv_assistance_system TYPE tv_assistance_system.
    DATA mv_color             TYPE tv_color.
ENDCLASS.


CLASS zpru_cl_bld2_car_builder IMPLEMENTATION.
  METHOD constructor.
    mv_brand = iv_brand.
    mv_model = iv_model.
  ENDMETHOD.

  METHOD set_equipment.
    mv_equipment = iv_equipment.
    ro_builder = me.
  ENDMETHOD.

  METHOD set_price.
    mv_price = iv_price.
    ro_builder = me.
  ENDMETHOD.

  METHOD set_multimedia.
    mv_multimedia = iv_multimedia.
    ro_builder = me.
  ENDMETHOD.

  METHOD set_assistance_system.
    mv_assistance_system = iv_assistance_system.
    ro_builder = me.
  ENDMETHOD.

  METHOD set_color.
    mv_color = iv_color.
    ro_builder = me.
  ENDMETHOD.

  METHOD build.
    ro_car = NEW zpru_cl_bld2_car(
      iv_id                = mv_id
      iv_brand             = mv_brand
      iv_model             = mv_model
      iv_price             = mv_price
      iv_equipment         = mv_equipment
      iv_multimedia        = mv_multimedia
      iv_assistance_system = mv_assistance_system
      iv_color             = mv_color ).
  ENDMETHOD.

  METHOD set_id.
    mv_id = iv_id.
    ro_builder = me.
  ENDMETHOD.

ENDCLASS.
