@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for Material Ledger Account'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_MAT_LDGRACT as select from ztab_mat_ldgract

{
  key  product,
  productdescription,
  valuationarea,
  valuationareadescription,
  valuationtype,
  valuationtypedescription,
  currencyrole,
  currencyroledescription,
  currency,
  currencydescription,
  productpricecontrol,
  productpricecontroldesc,
  priceunitqty,
  priceunitqtydescription,

  @Semantics.amount.currencyCode: 'currency'
  movingaverageprice,
  movingaveragepricedesc,

  @Semantics.amount.currencyCode: 'currency'
  standardprice,
  standardpricedescription
}
