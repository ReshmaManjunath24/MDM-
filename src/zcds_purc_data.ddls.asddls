@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for Material Purchasing Details'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_PURC_DATA as select from ztab_purc_data

{
    key material,
    key purchasinggroup ,
    key purchaseorderquantityunit ,
    batchmanagementrequired,
    batchmanagementrequired_2 ,
    sourcelistrequired
    }
