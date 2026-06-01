@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee View'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Z_DD_SMV_I as projection on Z_DD_SMV
{
    
   @UI.facet: [
    { id:       'EmployeeInfo',
      type:     #FIELDGROUP_REFERENCE,
      targetQualifier: 'BasicInfo',
      label:    'Basic Information',
      position: 10 },
    { id:       'ContactInfo',
      type:     #FIELDGROUP_REFERENCE,
      targetQualifier: 'ContactInfo',
      label:    'Contact Information',
      position: 20 },
    { id:       'AdminInfo',
      type:     #FIELDGROUP_REFERENCE,
      targetQualifier: 'AdminInfo',
      label:    'Administrative Information',
      position: 30 }
  ]

  @UI: { lineItem:       [{ position: 10, label: 'Emp ID' }],
         selectionField: [{ position: 10 }],
         fieldGroup:     [{ qualifier: 'BasicInfo', position: 10, label: 'Emp ID' }] }
  key EmpId,

  @UI: { lineItem:       [{ position: 20, label: 'Emp Name' }],
         selectionField: [{ position: 20 }],
         fieldGroup:     [{ qualifier: 'BasicInfo', position: 20, label: 'Emp Name' }] }
  @Search.defaultSearchElement: true
  EmpName,

  @UI: { lineItem:       [{ position: 30, label: 'Department' }],
         selectionField: [{ position: 30 }],
         fieldGroup:     [{ qualifier: 'BasicInfo', position: 30, label: 'Department' }] }
  Department,

  @UI: { lineItem:       [{ position: 40, label: 'Designation' }],
         fieldGroup:     [{ qualifier: 'BasicInfo', position: 40, label: 'Designation' }] }
  Designation
}
