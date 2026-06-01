CLASS lhc_Z_CDS_3 DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS setcomplete FOR MODIFY
      IMPORTING keys FOR ACTION z_cds_3~setcomplete RESULT result.

ENDCLASS.

CLASS lhc_Z_CDS_3 IMPLEMENTATION.

  METHOD setcomplete.
    MODIFY ENTITY z_cds_2 UPDATE FROM VALUE  #(  FOR key IN Keys ( emp_id = key-emp_id
    status = 'Completed'
    %control-status = if_abap_behv=>mk-on ) )
    FAILED DATA(it_fail)
    REPORTED DATA(it_reported).
  ENDMETHOD.

ENDCLASS.
