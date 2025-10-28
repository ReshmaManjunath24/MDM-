@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for Material Ledger Price'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_MAT_LDGPRCE as select from ztab_mat_ldgprce

{
   key product ,
    productdescription ,
    valuationarea ,
    valuationareadescription,
    valuationtype ,
    valuationtypedescription ,
    currencyrole ,
    currencyroledescription ,
    currency ,
    currencydescription ,
    // Add currency reference fields
    //futureprice ,
    futurepricedescription ,
    futurepricevaliditystartdate ,
    futurepricevaliditystartdatede ,
     // Add currency reference fields
   // plannedprice ,
    plannedpricedescription 

}
