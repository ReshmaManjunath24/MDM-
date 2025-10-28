@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for Material Basic Details'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_MAT_DATA as select from ztab_mat_data

{
  key material,
  key salesorg,
  key distributionchannel,
  key division,

  productdescription,
  producttype,
  industrysector,
  baseunit,
  alternativeunit,
  productgroup,

  @Semantics.quantity.unitOfMeasure : 'weightunit'
  grossweight,
  weightunit,

  @Semantics.quantity.unitOfMeasure : 'weightunit'
  netweight,

  taxclassification,
  taxclassification_2,
  taxclassification_3,
  taxclassification_4,
  taxclassification_5,
  taxclassification_6,
  taxclassification_7,

  logicstatisticgroup,
  accountassignmentgroup,
  generalitemcategorygroup,
  itemcategorygroup,
  transportationgroup,
  loadinggroup,
  profitcenter,
  packagingmaterialgroup,

  mrpgroup,
  mrptype,
  mrpcontroller,

  @Semantics.quantity.unitOfMeasure : 'baseunit'
  fixedlotsizequantity,

  @Semantics.quantity.unitOfMeasure : 'baseunit'
  minimumlotsizequantity,

  @Semantics.quantity.unitOfMeasure : 'baseunit'
  maximumlotsizequantity,

  @Semantics.quantity.unitOfMeasure : 'baseunit'
  reorderthresholdquantity,

  procurementtype,
  specialprocurementtype,
  origlbatchmanagementisreq,
  backflushindicator,
  coproduct,

  @Semantics.quantity.unitOfMeasure : 'baseunit'
  inhouseproduction,

  periodindicator,
  strategygroup,
  consumptionmode,
  availabilitychecktype,
  productionunit,
  productionsupervisor,
  prodschedprofile,

  inspectioninterval,
  certificatetype,
  forecastmodel,
  periodindforsled,
  minimumremainingshelflife,
  totalshelflifeduration,
  serialnumberprofile,
  timeunit,
  expirationdate,

  valuationcategory,
  pricedeterminationcontrol,
  valuationclass,
  pricedeterminationcontrol_2,

  cuky_field,

  @Semantics.amount.currencyCode : 'cuky_field'
  movingaverageprice,

  @Semantics.amount.currencyCode : 'cuky_field'
  standardprice,

  @Semantics.amount.currencyCode : 'cuky_field'
  plannedprice1incocodecrcy,

  withquantitystructure,
  materialoriginindicator,
  origingroup,
  overheadgroup,
  variancekey,
  specialprocurementcosting,

  @Semantics.quantity.unitOfMeasure : 'baseunit'
  costinglotsize,

  coproductindicator,
  versionindicator,
  futureplndprice1valdtydate,

  prodhsnumber,
  storagebin,
  abcindicator,

  @Semantics.quantity.unitOfMeasure : 'baseunit'
  safetystockquantity,

  planneddeliverydurationindays
}
 