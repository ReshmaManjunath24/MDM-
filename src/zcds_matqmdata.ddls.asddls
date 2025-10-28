@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for Material QM Data'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_MATQMDATA as select from ztab_matqmdata

{
    key product as Product,
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
