@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for Material MRP Plant Descri'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_MAT_PLT_DESC as select from ztab_mat_plt_des

{
    key product ,
    key plant ,
    plantdescription ,
    productdescription 
    
}
