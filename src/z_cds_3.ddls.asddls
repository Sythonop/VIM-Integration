@AbapCatalog.sqlViewName: 'ZCDS3'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Display 1'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@UI.headerInfo : { typeName: 'Employee Details',
typeNamePlural: 'Employee Details' }
define root view Z_CDS_3
  as select from zsm_table_1
{

  key emp_id,
      emp_name,
      department,
      designation,
      status
}
