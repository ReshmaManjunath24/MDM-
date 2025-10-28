@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS view for Material Forecasting data'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_MAT_FORECST as select from ztab_mat_forecst

{
  key  product ,
    productdescription ,
    plant ,
    plantdescription ,
    consumptionrefusageenddate ,
    consumptionrefusageenddatedesc ,
    consumptionqtymultiplier ,
    consumptionqtymultiplierdesc ,
    consumptionreferenceproduct ,
    consumptionreferenceproductdes ,
    consumptionreferenceplant ,
    consumptionreferenceplantdesc 

}
