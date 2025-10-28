@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for Material Langauge'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_MAT_LANG as select from ztab_mat_lang

{
    key product ,
    key language ,
    productdescription ,
    languagedescription 

}
