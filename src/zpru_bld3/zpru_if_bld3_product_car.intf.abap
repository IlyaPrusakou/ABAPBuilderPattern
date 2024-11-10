INTERFACE zpru_if_bld3_product_car
  PUBLIC .
  INTERFACES zpru_if_bld3_product.

  TYPES: tv_car_color TYPE c LENGTH 40.

    METHODS get_car_color
      RETURNING VALUE(rv_car_color) TYPE tv_car_color.

ENDINTERFACE.
