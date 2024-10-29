CLASS zpru_cl_bld1_example DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zpru_cl_bld1_example IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    " pass mandatory fields
    DATA(lo_mercedes_builder) = NEW zpru_cl_bld1_car_builder( iv_id    = '1'
                                                              iv_brand = 'MERCEDES'
                                                              iv_model = 'C 180 T-Model' ).
    " pass optional fields
    lo_mercedes_builder->set_price(
    '100000' )->set_multimedia(
    'AVANTGARDE' )->set_equipment(
    'Memory Package' )->set_assistance_system(
    'Driving Assistance Package Plus' ).

    " construct final object
    DATA(lo_mercedes_c_180) = lo_mercedes_builder->build( ).

    DATA(lo_bmw_builder) = NEW zpru_cl_bld1_car_builder( iv_id    = '2'
                                                         iv_brand = 'BMW'
                                                         iv_model = 'BMW 5 Series Sedan' ).

    " pass optional fields
    lo_bmw_builder->set_price(
    '200000' )->set_multimedia(
    'BMW Avalanche' )->set_equipment(
    'Titanium' )->set_assistance_system(
    'BMW Live Cockpit Professional' ).

    " construct final object
    DATA(lo_bmw_5_sedan) = lo_bmw_builder->build( ).

    out->write( EXPORTING data = lo_mercedes_c_180 name = 'Console app is finished' ).
  ENDMETHOD.

ENDCLASS.
