CLASS zpru_cl_bld3_car_director DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS build_mercedes_car
      IMPORTING
        io_builder TYPE REF TO zpru_if_bld3_builder_car.
    METHODS build_bwm_car
      IMPORTING
        io_builder TYPE REF TO zpru_if_bld3_builder_car.

    METHODS build_mercedes_schema
      IMPORTING
        io_builder TYPE REF TO zpru_if_bld3_builder_schema.
    METHODS build_bwm_schema
      IMPORTING
        io_builder TYPE REF TO zpru_if_bld3_builder_schema.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zpru_cl_bld3_car_director IMPLEMENTATION.
  METHOD build_bwm_car.
    io_builder->set_car_color( 'BMW Car Orange' ).

    io_builder->zpru_if_bld3_builder~set_price(
    '200000' )->set_multimedia(
    'BMW Avalanche' )->set_equipment(
    'Titanium' )->set_assistance_system(
    'BMW Live Cockpit Professional' ).
  ENDMETHOD.

  METHOD build_mercedes_car.
    io_builder->set_car_color( 'Mercedes Car Blue' ).

    io_builder->zpru_if_bld3_builder~set_price(
    '100000' )->set_multimedia(
    'AVANTGARDE' )->set_equipment(
    'Memory Package' )->set_assistance_system(
    'Driving Assistance Package Plus' ).

  ENDMETHOD.

  METHOD build_bwm_schema.
    io_builder->set_schema_color( 'BMW Schema Purple' ).

    io_builder->zpru_if_bld3_builder~set_price(
    '200000' )->set_multimedia(
    'BMW Avalanche' )->set_equipment(
    'Titanium' )->set_assistance_system(
    'BMW Live Cockpit Professional' ).
  ENDMETHOD.

  METHOD build_mercedes_schema.
    io_builder->set_schema_color( 'BMW Schema Pink' ).

    io_builder->zpru_if_bld3_builder~set_price(
    '100000' )->set_multimedia(
    'AVANTGARDE' )->set_equipment(
    'Memory Package' )->set_assistance_system(
    'Driving Assistance Package Plus' ).
  ENDMETHOD.

ENDCLASS.
