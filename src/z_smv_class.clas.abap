CLASS z_smv_class DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z_smv_class IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA lt_employee TYPE TABLE OF zsm_table_1.

    lt_employee = VALUE #(
      (
        emp_id          = 'EMP001'
        emp_name        = 'Somesh Perni'
        department      = 'IT'
        designation     = 'ABAP Developer'

      )
      (
        emp_id          = 'EMP002'
        emp_name        = 'Eswar Kumar'
        department      = 'Finance'
        designation     = 'Accountant'

      )
      (
        emp_id          = 'EMP003'
        emp_name        = 'Ravi Shankar'
        department      = 'HR'
        designation     = 'HR Manager'

      )
      (
        emp_id          = 'EMP004'
        emp_name        = 'Priya Reddy'
        department      = 'IT'
        designation     = 'SAP Consultant'

      )
      (
        emp_id          = 'EMP005'
        emp_name        = 'Arjun Das'
        department      = 'Operations'
        designation     = 'Team Lead'

      )
       (
        emp_id          = 'EMP006'
        emp_name        = 'Aadhi'
        department      = 'JAVA'
        designation     = 'Manager'

      )
    ).

    INSERT zsm_table_1 FROM TABLE @lt_employee.

    IF sy-subrc = 0.
      out->write( 'Records inserted successfully!' ).
      out->write( |Total records: { lines( lt_employee ) }| ).
    ELSE.
      out->write( 'Error inserting records!' ).
    ENDIF.
  ENDMETHOD.

ENDCLASS.
