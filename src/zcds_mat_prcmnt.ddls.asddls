@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for Material Procurement'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_MAT_PRCMNT as select from ztab_mat_prcmnt

{
    key product ,
    purchaseorderquantityunit ,
    varblpurordunitstatus ,
    purchasingacknprofile

}
