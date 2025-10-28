@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for Material MRP Plant Data'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_MAT_PLANT as select from ztab_mat_plant

{
 
  key product,
  key plant,

  purchasinggroup,
  countryoforigin,
  regionoforigin,
  productioninvtrymanagedloc,
  profilecode,
  profilevaliditystartdate,
  availabilitychecktype,
  fiscalyearvariant,
  periodtype,
  profitcenter,
  commodity,
  goodsreceiptduration,
  maintenancestatusname,
  ismarkedfordeletion,
  mrptype,
  mrpresponsible,
  abcindicator,

  @Semantics.quantity.unitOfMeasure : 'baseunit'
  minimumlotsizequantity,

  @Semantics.quantity.unitOfMeasure : 'baseunit'
  maximumlotsizequantity,

  @Semantics.quantity.unitOfMeasure : 'baseunit'
  fixedlotsizequantity,

  consumptiontaxctrlcode,
  iscoproduct,
  productisconfigurable,
  stockdeterminationgroup,

  @Semantics.quantity.unitOfMeasure : 'baseunit'
  stockintransferquantity,

  @Semantics.quantity.unitOfMeasure : 'baseunit'
  stockintransitquantity,

  hasposttoinspectionstock,
  isbatchmanagementrequired,
  serialnumberprofile,
  isnegativestockallowed,

  @Semantics.quantity.unitOfMeasure : 'baseunit'
  goodsreceiptblockedstockqty,

  hasconsignmentctrl,
  fiscalyearcurrentperiod,
  fiscalmonthcurrentperiod,
  procurementtype,
  isinternalbatchmanaged,
  productcfopcategory,
  productisexcisetaxrelevant,

  baseunit,
  configurableproduct,
  goodsissueunit,
  materialfreightgroup,
  originalbatchreferencematerial,
  origlbatchmanagementisrequired,
  productiscriticalprt,
  productlogisticshandlinggroup


    }
