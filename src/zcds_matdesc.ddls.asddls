@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for Material Description'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_MATDESC as select from zmat_matdesc

{
    key product ,
    key language ,
    productdescription 
}
