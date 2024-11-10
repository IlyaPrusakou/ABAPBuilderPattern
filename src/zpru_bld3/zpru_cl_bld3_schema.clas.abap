CLASS zpru_cl_bld3_schema DEFINITION
  PUBLIC FINAL
  CREATE PRIVATE
  GLOBAL FRIENDS zpru_cl_bld3_schema_builder.

  PUBLIC SECTION.

    INTERFACES zpru_if_bld3_product_schema.

  PROTECTED SECTION.
    DATA mv_id                TYPE zpru_if_bld3_product~tv_id.
    DATA mv_brand             TYPE zpru_if_bld3_product~tv_brand.
    DATA mv_model             TYPE zpru_if_bld3_product~tv_model.
    DATA mv_price             TYPE zpru_if_bld3_product~tv_price.
    DATA mv_equipment         TYPE zpru_if_bld3_product~tv_equipment.
    DATA mv_multimedia        TYPE zpru_if_bld3_product~tv_multimedia.
    DATA mv_assistance_system TYPE zpru_if_bld3_product~tv_assistance_system.
    DATA mv_schema_color      TYPE zpru_if_bld3_product_schema~tv_schema_color.

  PRIVATE SECTION.
    METHODS constructor
      IMPORTING Iv_id                TYPE zpru_if_bld3_product~tv_id
                Iv_brand             TYPE zpru_if_bld3_product~tv_brand
                Iv_model             TYPE zpru_if_bld3_product~tv_model
                iv_price             TYPE zpru_if_bld3_product~tv_price
                iv_equipment         TYPE zpru_if_bld3_product~tv_equipment
                iv_multimedia        TYPE zpru_if_bld3_product~tv_multimedia
                iv_assistance_system TYPE zpru_if_bld3_product~tv_assistance_system
                iv_schema_color      TYPE zpru_if_bld3_product_schema~tv_schema_color.

ENDCLASS.


CLASS zpru_cl_bld3_schema IMPLEMENTATION.
  METHOD constructor.
    mv_id                = iv_id.
    mv_brand             = iv_brand.
    mv_model             = iv_model.
    mv_price             = iv_price.
    mv_equipment         = iv_equipment.
    mv_multimedia        = iv_multimedia.
    mv_assistance_system = iv_assistance_system.
    mv_schema_color             = iv_schema_color.
  ENDMETHOD.

  METHOD zpru_if_bld3_product~get_assistance_system.
    rv_assistance_system = mv_assistance_system.
  ENDMETHOD.

  METHOD zpru_if_bld3_product~get_brand.
    rv_brand = mv_brand.
  ENDMETHOD.

  METHOD zpru_if_bld3_product~get_equipment.
    rv_equipment = mv_equipment.
  ENDMETHOD.

  METHOD zpru_if_bld3_product~get_id.
    rv_id = mv_id.
  ENDMETHOD.

  METHOD zpru_if_bld3_product~get_model.
    rv_model = mv_model.
  ENDMETHOD.

  METHOD zpru_if_bld3_product~get_multimedia.
    rv_multimedia = mv_multimedia.
  ENDMETHOD.

  METHOD zpru_if_bld3_product~get_price.
    rv_price = mv_price.
  ENDMETHOD.

  METHOD zpru_if_bld3_product_schema~get_schema_color.
    rv_schema_color = mv_schema_color.
  ENDMETHOD.

ENDCLASS.
