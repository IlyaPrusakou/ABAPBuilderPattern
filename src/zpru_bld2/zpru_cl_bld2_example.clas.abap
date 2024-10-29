CLASS zpru_cl_bld2_example DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zpru_cl_bld2_example IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA(lo_director) = NEW zpru_cl_bld2_car_director( ).
    DATA(lo_mercedes_builder) = NEW zpru_cl_bld2_car_builder( iv_brand = 'MERCEDES'
                                                              iv_model = 'C 180 T-Model' ).
    lo_director->build_mercedes( io_builder = lo_mercedes_builder ).

    lo_mercedes_builder->set_color( 'BLUE' ).
    lo_mercedes_builder->set_id( '1' ).
    DATA(lo_mercedes_c180_1_blue) = lo_mercedes_builder->build( ).

    lo_mercedes_builder->set_id( '2' ).
    DATA(lo_mercedes_c180_2_blue) = lo_mercedes_builder->build( ).

    lo_mercedes_builder->set_id( '3' ).
    DATA(lo_mercedes_c180_3_blue) = lo_mercedes_builder->build( ).

    lo_mercedes_builder->set_color( 'RED' ).
    lo_mercedes_builder->set_id( '4' ).
    DATA(lo_mercedes_c180_4_red) = lo_mercedes_builder->build( ).

    data(lv_mercedes_string) =
    |{ lo_mercedes_c180_1_blue->get_id( ) }; { lo_mercedes_c180_1_blue->get_color( ) }// { lo_mercedes_c180_1_blue->get_equipment( ) }// | &&
    |{ lo_mercedes_c180_2_blue->get_id( ) }; { lo_mercedes_c180_2_blue->get_color( ) }// { lo_mercedes_c180_2_blue->get_equipment( ) }// | &&
    |{ lo_mercedes_c180_3_blue->get_id( ) }; { lo_mercedes_c180_3_blue->get_color( ) }// { lo_mercedes_c180_3_blue->get_equipment( ) }// | &&
    |{ lo_mercedes_c180_4_red->get_id( ) }; { lo_mercedes_c180_4_red->get_color( ) }// { lo_mercedes_c180_4_red->get_equipment( ) }// |.

    out->write( EXPORTING data = lv_mercedes_string name = 'Mercedes C 180 data' ).

  ENDMETHOD.
ENDCLASS.
