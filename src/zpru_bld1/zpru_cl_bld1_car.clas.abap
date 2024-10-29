CLASS zpru_cl_bld1_car DEFINITION
  PUBLIC FINAL
  CREATE PRIVATE
  GLOBAL FRIENDS zpru_cl_bld1_car_builder.

  PUBLIC SECTION.
    TYPES tv_id                TYPE c LENGTH 10.
    TYPES tv_brand             TYPE c LENGTH 40.
    TYPES tv_model             TYPE c LENGTH 40.
    TYPES tv_price             TYPE p LENGTH 8 DECIMALS 0.
    TYPES tv_equipment         TYPE c LENGTH 40.
    TYPES tv_multimedia        TYPE c LENGTH 40.
    TYPES tv_assistance_system TYPE c LENGTH 40.

    METHODS get_id
      RETURNING VALUE(rv_id) TYPE tv_id.

    METHODS get_brand
      RETURNING VALUE(rv_brand) TYPE tv_brand.

    METHODS get_model
      RETURNING VALUE(rv_model) TYPE tv_model.

    METHODS get_price
      RETURNING VALUE(rv_price) TYPE tv_price.

    METHODS get_equipment
      RETURNING VALUE(rv_equipment) TYPE tv_equipment.

    METHODS get_multimedia
      RETURNING VALUE(rv_multimedia) TYPE tv_multimedia.

    METHODS get_assistance_system
      RETURNING VALUE(rv_assistance_system) TYPE tv_assistance_system.

  PROTECTED SECTION.
    DATA mv_id                TYPE tv_id.
    DATA mv_brand             TYPE tv_brand.
    DATA mv_model             TYPE tv_model.
    DATA mv_price             TYPE tv_price.
    DATA mv_equipment         TYPE tv_equipment.
    DATA mv_multimedia        TYPE tv_multimedia.
    DATA mv_assistance_system TYPE tv_assistance_system.

  PRIVATE SECTION.
    METHODS constructor
      IMPORTING Iv_id                TYPE tv_id
                Iv_brand             TYPE tv_brand
                Iv_model             TYPE tv_model
                iv_price             TYPE tv_price
                iv_equipment         TYPE tv_equipment
                iv_multimedia        TYPE tv_multimedia
                iv_assistance_system TYPE tv_assistance_system.

ENDCLASS.


CLASS zpru_cl_bld1_car IMPLEMENTATION.
  METHOD constructor.
    mv_id                = iv_id.
    mv_brand             = iv_brand.
    mv_model             = iv_model.
    mv_price             = iv_price.
    mv_equipment         = iv_equipment.
    Mv_multimedia        = iv_multimedia.
    mv_assistance_system = iv_assistance_system.
  ENDMETHOD.

  METHOD get_assistance_system.
    rv_assistance_system = mv_assistance_system.
  ENDMETHOD.

  METHOD get_brand.
    rv_brand = mv_brand.
  ENDMETHOD.

  METHOD get_equipment.
    rv_equipment = mv_equipment.
  ENDMETHOD.

  METHOD get_id.
    rv_id = mv_id.
  ENDMETHOD.

  METHOD get_model.
    rv_model = mv_model.
  ENDMETHOD.

  METHOD get_multimedia.
    rv_multimedia = mv_multimedia.
  ENDMETHOD.

  METHOD get_price.
    rv_price = mv_price.
  ENDMETHOD.
ENDCLASS.
