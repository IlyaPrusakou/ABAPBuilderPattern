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

    data(lv_mercedes_string) = |{ lo_mercedes_c_180->get_id( ) }; { lo_mercedes_c_180->get_brand( ) }; | &&
                               |{ lo_mercedes_c_180->get_model( ) }; { lo_mercedes_c_180->get_price( ) }; | &&
                               |{ lo_mercedes_c_180->get_multimedia( ) }; { lo_mercedes_c_180->get_equipment( ) }; | &&
                               |{ lo_mercedes_c_180->get_assistance_system( ) }; { lo_mercedes_c_180->get_assistance_system( ) }|.

    data(lv_bmw_string) = |{ lo_bmw_5_sedan->get_id( ) }; { lo_bmw_5_sedan->get_brand( ) }; | &&
                          |{ lo_bmw_5_sedan->get_model( ) }; { lo_bmw_5_sedan->get_price( ) }; | &&
                          |{ lo_bmw_5_sedan->get_multimedia( ) }; { lo_bmw_5_sedan->get_equipment( ) }; | &&
                          |{ lo_bmw_5_sedan->get_assistance_system( ) }; { lo_bmw_5_sedan->get_assistance_system( ) }|.


    out->write( EXPORTING data = lv_mercedes_string name = 'Mercedes C 180 data' ).
    out->write( EXPORTING data = lv_bmw_string name = 'BMW 5 Series Sedan 180 data' ).
  ENDMETHOD.

ENDCLASS.
