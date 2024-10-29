CLASS zpru_cl_bld2_car_director DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS build_mercedes
      IMPORTING
        io_builder TYPE REF TO zpru_cl_bld2_car_builder.
    METHODS build_bwm
      IMPORTING
        io_builder TYPE REF TO zpru_cl_bld2_car_builder.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zpru_cl_bld2_car_director IMPLEMENTATION.
  METHOD build_bwm.
    io_builder->set_price(
    '200000' )->set_multimedia(
    'BMW Avalanche' )->set_equipment(
    'Titanium' )->set_assistance_system(
    'BMW Live Cockpit Professional' ).
  ENDMETHOD.

  METHOD build_mercedes.
    io_builder->set_price(
    '100000' )->set_multimedia(
    'AVANTGARDE' )->set_equipment(
    'Memory Package' )->set_assistance_system(
    'Driving Assistance Package Plus' ).
  ENDMETHOD.

ENDCLASS.
