CLASS zpru_cl_bld3_example DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zpru_cl_bld3_example IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA lo_mercedes_builder_car TYPE REF TO zpru_if_bld3_builder_car.
    DATA lo_mercedes_builder_schema TYPE REF TO zpru_if_bld3_builder_schema.
    DATA lo_director TYPE REF TO zpru_cl_bld3_car_director.
    DATA lv_mercedes_string TYPE string.

    lo_director = NEW zpru_cl_bld3_car_director( ).
    lo_mercedes_builder_car = NEW zpru_cl_bld3_car_builder( iv_brand = 'MERCEDES'
                                                            iv_model = 'C 180 T-Model' ).
    lo_director->build_mercedes_car( io_builder = lo_mercedes_builder_car ).

    lo_mercedes_builder_car->zpru_if_bld3_builder~set_id( '1' ).
    DATA(lo_mercedes_c180_car) = lo_mercedes_builder_car->build( ).

    lo_mercedes_builder_schema = NEW zpru_cl_bld3_schema_builder( iv_brand = 'MERCEDES'
                                                                  iv_model = 'C 180 T-Model' ).

    lo_director->build_mercedes_schema( io_builder = lo_mercedes_builder_schema ).
    lo_mercedes_builder_schema->zpru_if_bld3_builder~set_id( '2' ).
    DATA(lo_mercedes_c180_schema) = lo_mercedes_builder_schema->build( ).

lv_mercedes_string = |{ lo_mercedes_c180_car->zpru_if_bld3_product~get_assistance_system( ) }| &&
                     |{ lo_mercedes_c180_car->get_car_color( ) }| &&
                     |{ lo_mercedes_c180_schema->zpru_if_bld3_product~get_equipment( ) }| &&
                     |{ lo_mercedes_c180_schema->get_schema_color( ) }|.

    out->write( EXPORTING data = lv_mercedes_string name = 'Mercedes C 180 data' ).

  ENDMETHOD.
ENDCLASS.
