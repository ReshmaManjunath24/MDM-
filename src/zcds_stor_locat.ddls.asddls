@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for Material Storage Location'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_STOR_LOCAT as select from ztab_stor_locat

{
    key material ,
    key plant ,
    key storagelocation ,
    productioninvtrymanagedloc ,
    productioninvtrymanagedloc_2
  
}
