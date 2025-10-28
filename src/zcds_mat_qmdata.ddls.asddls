@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for Material QM Data'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_MAT_QMDATA as select from ztab_mat_qmdata

{
    key product ,
    productdescription ,
    qltymgmtinprocmtisactive ,
    qltymgmtinprocmtisactivedesc 

}
