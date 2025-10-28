@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS for Material Storage Plant'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_MATSTORPLNT as select from ztab_matstorplnt

{
  key  product ,
    productdescription ,
    plant ,
    plantdescription ,
    inventoryforcyclecountind ,
    inventoryforcyclecountinddesc ,
    provisioningservicelevel ,
    provisioningserviceleveldesc ,
    cyclecountingindicatorisfixed ,
    cyclecountingindicatorisfixedd ,
    prodmaximumstorageperiodunit ,
    prodmaximumstorageperiodunitde ,
    wrhsmgmtptwyandstkremovalstrgy ,
    wrhsmgmtptwystkremovalstrgydes 
    
}
