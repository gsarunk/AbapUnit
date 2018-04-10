*"* use this source file for your ABAP unit test classes
CLASS ltcl_roman2arabic_unit DEFINITION FOR TESTING
        RISK LEVEL HARMLESS
        DURATION SHORT.
  PRIVATE SECTION.
    DATA r_cut TYPE REF TO zcl_roman2arabic.
    METHODS:
      setup,
      teardown,
      input_i_output_1 FOR TESTING,
      input_ii_output_2 FOR TESTING,
      input_iii_output_3 FOR TESTING,
      input_iv_output_4 FOR TESTING,
      input_v_output_5 FOR TESTING,
      input_6_output_6 FOR TESTING.

ENDCLASS.


CLASS ltcl_roman2arabic_unit IMPLEMENTATION.
  METHOD setup.
*   given
    r_cut = NEW zcl_roman2arabic( ).

  ENDMETHOD.

  METHOD input_i_output_1.

*   when
    DATA(l_arabic) = r_cut->to_arabic( i_roman = 'I').
*   then
    cl_abap_unit_assert=>assert_equals( act = l_arabic
                                        exp = 1 ).
  ENDMETHOD.

  METHOD input_ii_output_2.
*  when
    DATA(l_arabic) = r_cut->to_arabic( i_roman = 'II').
*  then
    cl_abap_unit_assert=>assert_equals( act = l_arabic
                                        exp = 2 ).
  ENDMETHOD.

  METHOD input_iii_output_3.
*   when
    DATA(l_arabic) = r_cut->to_arabic( i_roman = 'III').
*   then
    cl_abap_unit_assert=>assert_equals( act = l_arabic
                                        exp = 3 ).
  ENDMETHOD.

  METHOD input_iv_output_4.
*   when
    DATA(l_arabic) = r_cut->to_arabic( i_roman = 'IV').
*   then
    cl_abap_unit_assert=>assert_equals( act = l_arabic
                                        exp = 4 ).
  ENDMETHOD.
  METHOD input_v_output_5.
*   when
    DATA(l_arabic) = r_cut->to_arabic( i_roman = 'V').
*   then
    cl_abap_unit_assert=>assert_equals( act = l_arabic
                                        exp = 4 ).
  ENDMETHOD.

  METHOD input_vi_output_6.
*   when
    DATA(l_arabic) = r_cut->to_arabic( i_roman = 'VI').
*   then
    cl_abap_unit_assert=>assert_equals( act = l_arabic
                                        exp = 6 ).
  ENDMETHOD.

  METHOD teardown.
    CLEAR r_cut.
  ENDMETHOD.

ENDCLASS.
