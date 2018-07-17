CLASS zcl_roman2arabic DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS to_arabic IMPORTING i_roman         TYPE char10
                      RETURNING VALUE(e_arabic) TYPE char10.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_roman2arabic IMPLEMENTATION.
  METHOD to_arabic.

    CASE i_roman.
      WHEN 'I'.
        e_arabic = 1.

      WHEN 'II'.
        e_arabic = 2.
      WHEN 'III'.
        e_arabic = 3.
      WHEN 'IV'.
        e_arabic = 4.
      WHEN 'V'.
        e_arabic = 5.
      WHEN 'IX'.           "Added logic for 9 during GE demo
        e_arabic = 9.
      WHEN 'X'.           "Added logic for 9 during GE demo
        e_arabic = 10.    "Added 10.    
      WHEN OTHERS.
    ENDCASE.
  ENDMETHOD.

ENDCLASS.
