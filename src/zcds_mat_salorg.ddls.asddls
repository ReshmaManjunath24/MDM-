@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for Material Sales Org'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_MAT_SALORG as select from ztab_mat_salorg

{
  key product,
  key productsalesorg,
  key productdistributionchnl,

  @Semantics.quantity.unitOfMeasure : 'deliveryquantityunit'
  minimumorderquantity,

  supplyingplant,
  pricespecificationproductgroup,
  accountdetnproductgroup,

  @Semantics.quantity.unitOfMeasure : 'deliveryquantityunit'
  deliverynoteprocmindelivqty,

  itemcategorygroup,
  deliveryquantityunit,

  @Semantics.quantity.unitOfMeasure : 'deliveryquantityunit'
  deliveryquantity,

  productsalesstatus,
  productsalesstatusvaliditydate,
  salesmeasureunit,
  ismarkedfordeletion,
  producthierarchy,
  firstsalesspecproductgroup,
  secondsalesspecproductgroup,
  thirdsalesspecproductgroup,
  fourthsalesspecproductgroup,
  fifthsalesspecproductgroup,

  @Semantics.quantity.unitOfMeasure : 'deliveryquantityunit'
  minimummaketoorderorderqty,

  baseunit,
  logisticsstatisticsgroup,
  volumerebategroup,
  productcommissiongroup,
  cashdiscountisdeductible,
  pricingreferenceproduct,
  roundingprofile,
  productunitgroup,
  variablesalesunitisnotallowed,
  producthasattributeid01,
  producthasattributeid02,
  producthasattributeid03,
  producthasattributeid04,
  producthasattributeid05,
  producthasattributeid06,
  producthasattributeid07,
  producthasattributeid08,
  producthasattributeid09,
  producthasattributeid10
}
