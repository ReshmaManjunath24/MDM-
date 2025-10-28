@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for Material Inspection Description'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_MAT_INP_DES as select from ztab_mat_inpdes

{
    key product ,
    key language ,
    longtext 
    
}
