@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for Material Sales Plant Data'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_MAT_SALESNB as select from ztab_mat_salesnb

{
  key  product ,
    productdescription ,
    plant ,
    plantdescription ,
    maximumstorageperiod ,
    maximumstorageperioddesc ,
    qualitymgmtctrlkey ,
    qualitymgmtctrlkeydesc ,
    matlqualityauthorizationgroup ,
    matlqualityauthorizationgroupd ,
    hasposttoinspectionstock ,
    hasposttoinspectionstockdesc ,
    insplotdocumentationisrequired ,
    suplrqualitymanagementsystem ,
    suplrqualitymanagementsystemde ,
    recrrginspintervaltimeindays ,
    recrrginspintervaltimeindaysde ,
    productqualitycertificatetype ,
    productqualitycertificatetyped 
}
