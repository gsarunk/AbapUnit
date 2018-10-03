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
      WHEN 'IV'.        "Added Half line comment from Eclipse
        e_arabic = 4.
      WHEN 'V'.
        e_arabic = 5.   "Clean up Starting
      WHEN 'VI'.
        e_arabic = 6.   "Roman six Addition
      WHEN 'VII'.
        e_arabic = 7.   "Roman seven Addition
      WHEN 'VIII'.
        e_arabic = 8.   "Roman VIII Addition Test Background
      WHEN 'IX'.        "Added logic for 9 during GE demo
        e_arabic = 9.
      WHEN 'X'.         "Added logic for 9 during GE demo
        e_arabic = 10.  "Added 10.
      When 'X1'.
        e_arabic = 11.  "Added 11 .
      When 'XII'.
        e_arabic = 12.  "Added 12 
      When 'XIII'.
        e_arabic = 13.  "Added 13     
      When 'IV'.
        e_arabic = 14.  "Added 14      
    
      WHEN OTHERS.
    ENDCASE.
  ENDMETHOD.

ENDCLASS.
