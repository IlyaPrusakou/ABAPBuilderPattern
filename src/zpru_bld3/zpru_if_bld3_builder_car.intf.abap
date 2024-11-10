INTERFACE zpru_if_bld3_builder_car
  PUBLIC .
  INTERFACES zpru_if_bld3_builder.

  TYPES: tv_car_color TYPE c LENGTH 40.

  METHODS set_car_color
    IMPORTING iv_car_color          TYPE tv_car_color
    RETURNING VALUE(ro_builder) TYPE REF TO zpru_if_bld3_builder_car.

  METHODS build
    RETURNING VALUE(ro_car) TYPE REF TO zpru_if_bld3_product_car.

ENDINTERFACE.
