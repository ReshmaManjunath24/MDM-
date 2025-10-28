@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for Material Int Trade Data'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZTAB_MAT_INT_TRADE as select from ztab_mat_intrade

{
  key  product ,
    productdescription ,
    plant ,
    plantdescription ,
    countryoforigin ,
    countryoforigindescription ,
    regionoforigin ,
    regionoforigindescription,
    consumptiontaxctrlcode ,
    consumptiontaxctrlcodedescript ,
    productcasnumber ,
    productcasnumberdescription ,
    prodintltradeclassification ,
    prodintltradeclassificationdes ,
    exportandimportproductgroup ,
    exportandimportproductgroupdes
   
}
