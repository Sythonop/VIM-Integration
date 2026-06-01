CLASS lhc_Z_CDS_2 DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS create FOR MODIFY
      IMPORTING entities FOR CREATE z_cds_2.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE z_cds_2.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE z_cds_2.

    METHODS read FOR READ
      IMPORTING keys FOR READ z_cds_2 RESULT result.

    METHODS lock FOR LOCK
      IMPORTING keys FOR LOCK z_cds_2.

ENDCLASS.

CLASS lhc_Z_CDS_2 IMPLEMENTATION.

  METHOD create.
    DATA:lt_emp TYPE STANDARD TABLE OF zsm_table_1.

    lt_emp = VALUE #( FOR ls IN entities ( emp_id = ls-emp_id
                                           emp_name = ls-emp_name
                                           department = ls-department
                                           designation = ls-designation )  ).

    INSERT zsm_table_1 FROM TABLE @lt_emp.
  ENDMETHOD.

  METHOD update.
    DATA:lt_emp TYPE STANDARD TABLE OF zsm_table_1.

    lt_emp = VALUE #( FOR ls IN entities ( emp_id = ls-emp_id
                                           emp_name = ls-emp_name
                                           department = ls-department
                                           designation = ls-designation )  ).

    UPDATE  zsm_table_1 FROM TABLE @lt_emp.
  ENDMETHOD.

  METHOD delete.
    DATA : lt_emp TYPE RANGE OF int4.
    lt_emp = VALUE #( FOR ls IN keys ( sign = 'I' option = 'EQ' low = ls-emp_id ) ).
    DELETE FROM zsm_table_1 WHERE emp_id IN @lt_emp.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD lock.
  ENDMETHOD.

ENDCLASS.

CLASS lsc_Z_CDS_2 DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS finalize REDEFINITION.

    METHODS check_before_save REDEFINITION.

    METHODS save REDEFINITION.

    METHODS cleanup REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_Z_CDS_2 IMPLEMENTATION.

  METHOD finalize.
  ENDMETHOD.

  METHOD check_before_save.
  ENDMETHOD.

  METHOD save.
  ENDMETHOD.

  METHOD cleanup.
  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.
