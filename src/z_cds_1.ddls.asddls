@AbapCatalog.sqlViewName: 'ZCDS1'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Display 1'
@Metadata.ignorePropagatedAnnotations: true
@UI.headerInfo : { typeName: 'Employee Details',
typeNamePlural: 'Employee Details' }
define root view Z_CDS_1
  as select from zsm_table_1
{
      @UI.facet: [{ purpose: #STANDARD,
      type: #IDENTIFICATION_REFERENCE,
      label: 'Employee Detail',
      position: 10
       }]

      @UI.selectionField: [{ position: 10 }]
      @UI.lineItem: [{ position: 10 }]
      @UI.identification: [{position: 10  }]
  key emp_id,
      @UI.selectionField: [{ position: 20 }]
      @UI.lineItem: [{ position: 20 }]
      @UI.identification: [{position: 20  }]
      emp_name,
      @UI.lineItem: [{ position: 30 }]
      @UI.identification: [{position: 30  }]
      department,
      @UI.lineItem: [{ position: 40 }]
      @UI.identification: [{position: 40  }]
      designation,
      status
}
