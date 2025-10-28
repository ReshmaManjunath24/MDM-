@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for Material Sales Data'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_MAT_SALES as select from ztab_mat_sales

{
    key product ,
    salesstatus ,
    salesstatusvaliditydate ,
    taxclassification ,
    transportationgroup
    
}
