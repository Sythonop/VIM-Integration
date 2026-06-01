@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Data definition CDS'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Z_DD_SMV
  as select from zsm_table_1

{

  key emp_id      as EmpId,
      emp_name    as EmpName,
      department  as Department,
      designation as Designation


}
