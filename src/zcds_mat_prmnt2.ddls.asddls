@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for Material Procurement 2'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_MAT_PRMNT2 as select from ztab_mat_prmnt

{
   key product ,
    productdescription ,
    plant ,
    plantdescription ,
    isautopurordcreationallowed ,
    isautopurordcreationalloweddes ,
    issourcelistrequired ,
    issourcelistrequireddesc ,
    sourceofsupplycategory ,
    sourceofsupplycategorydesc ,
    itmisrlvttojitdelivschedules,
    itmisrlvttojitdelivschedulesde
  
}
