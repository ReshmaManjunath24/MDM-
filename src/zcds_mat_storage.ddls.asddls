@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for Material Plant Data'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_MAT_STORAGE as select from ztab_mat_storage

{
    key product ,
    storageconditions ,
    temperatureconditionind ,
    hazardousmaterialnumber ,
    labeltype ,
    labelform,
    minremainingshelflife ,
    expirationdate ,
    shelflifeexpirationdateperiod ,
    totalshelflife ,
    baseunit 
}
