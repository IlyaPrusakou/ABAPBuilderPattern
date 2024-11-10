INTERFACE zpru_if_bld3_product
  PUBLIC .

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

ENDINTERFACE.
