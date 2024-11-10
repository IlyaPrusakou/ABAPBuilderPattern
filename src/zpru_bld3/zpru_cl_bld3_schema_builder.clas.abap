CLASS zpru_cl_bld3_schema_builder DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES zpru_if_bld3_builder_schema.

    METHODS constructor
      IMPORTING iv_brand TYPE zpru_if_bld3_builder=>tv_brand
                iv_model TYPE zpru_if_bld3_builder=>tv_model.

  PROTECTED SECTION.
    DATA mv_id                TYPE zpru_if_bld3_builder=>tv_id.
    DATA mv_brand             TYPE zpru_if_bld3_builder=>tv_brand.
    DATA mv_model             TYPE zpru_if_bld3_builder=>tv_model.
    DATA mv_price             TYPE zpru_if_bld3_builder=>tv_price.
    DATA mv_equipment         TYPE zpru_if_bld3_builder=>tv_equipment.
    DATA mv_multimedia        TYPE zpru_if_bld3_builder=>tv_multimedia.
    DATA mv_assistance_system TYPE zpru_if_bld3_builder=>tv_assistance_system.
    DATA mv_schema_color      TYPE zpru_if_bld3_builder_schema=>tv_schema_color.
ENDCLASS.


CLASS zpru_cl_bld3_schema_builder IMPLEMENTATION.
  METHOD constructor.
    mv_brand = iv_brand.
    mv_model = iv_model.
  ENDMETHOD.

  METHOD zpru_if_bld3_builder~set_equipment.
    mv_equipment = iv_equipment.
    ro_builder = me.
  ENDMETHOD.

  METHOD zpru_if_bld3_builder~set_price.
    mv_price = iv_price.
    ro_builder = me.
  ENDMETHOD.

  METHOD zpru_if_bld3_builder~set_multimedia.
    mv_multimedia = iv_multimedia.
    ro_builder = me.
  ENDMETHOD.

  METHOD zpru_if_bld3_builder~set_assistance_system.
    mv_assistance_system = iv_assistance_system.
    ro_builder = me.
  ENDMETHOD.

  METHOD zpru_if_bld3_builder_schema~set_schema_color.
    mv_schema_color   = iv_schema_color.
    ro_builder = me.
  ENDMETHOD.

  METHOD zpru_if_bld3_builder_schema~build.
    ro_car = NEW zpru_cl_bld3_schema(
      iv_id                = mv_id
      iv_brand             = mv_brand
      iv_model             = mv_model
      iv_price             = mv_price
      iv_equipment         = mv_equipment
      iv_multimedia        = mv_multimedia
      iv_assistance_system = mv_assistance_system
      iv_schema_color      = mv_schema_color ).
  ENDMETHOD.

  METHOD zpru_if_bld3_builder~set_id.
    mv_id      = iv_id.
    ro_builder = me.
  ENDMETHOD.

ENDCLASS.
