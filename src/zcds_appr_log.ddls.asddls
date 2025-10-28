@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for Approval Logs'
@Metadata.ignorePropagatedAnnotations: true
/*+[hideWarning] { "IDS" : [ "KEY_CHECK" ]  } */
define root view entity ZCDS_APPR_LOG as select from ztab_appr_log

{
    key material as Material,
    approverid as ApproverId,
    approvarname as ApprovarName,
    approverlevel as ApproverLevel,
    createdon as CreatedOn,
    createdby as CreatedBy,
    status as Status,
    comments as Comments,
    department as ApproverDepartment
}
