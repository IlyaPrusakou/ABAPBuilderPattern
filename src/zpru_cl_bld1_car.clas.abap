CLASS zpru_cl_bld1_car DEFINITION
  PUBLIC
  FINAL
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

ENDCLASS.
