@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for Material Valuation Data'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_MAT_VALUATION as select from ztab_mat_valuati

{
  key product,
  key valuationarea,
  key valuationtype,

  valuationclass,
  pricedeterminationcontrol,

  cuky_field,

  @Semantics.amount.currencyCode: 'cuky_field'
  standardprice,

  priceunitqty,
  inventoryvaluationprocedure,
  ismarkedfordeletion,

  @Semantics.amount.currencyCode: 'cuky_field'
  movingaverageprice,

  valuationcategory,
  productusagetype,
  productorigintype,
  isproducedinhouse,

  prodcostestnumber,
  projectstockvaluationclass,
  valuationclasssalesorderstock,

  @Semantics.amount.currencyCode: 'cuky_field'
  plannedprice1incocodecrcy,

  @Semantics.amount.currencyCode: 'cuky_field'
  plannedprice2incocodecrcy,

  @Semantics.amount.currencyCode: 'cuky_field'
  plannedprice3incocodecrcy,

  futureplndprice1valdtydate,
  futureplndprice2valdtydate
}
