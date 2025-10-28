@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for Material Approval'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_MAT_APPROVAL as select from ztab_approval

{

key approverid as ApproverId,
 process as Process,
 plant as Plant,
 industrysector as IndustrySector,
 materialtype as MaterialType,
 approverlevel as ApproverLevel,
approver1 as Approver1,
approver2 as Approver2,
approver3     as Approver3, 
approver4 as Approver4,
department as ApproverDepartment

}
 