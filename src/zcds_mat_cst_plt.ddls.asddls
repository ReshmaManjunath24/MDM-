@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for Material Costing for Plant'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_MAT_CST_PLT as select from ztab_mat_cst_plt

{
   key  product,
    productdescription ,
    plant ,
    plantdescription ,
    iscoproduct ,
    iscoproductdescription ,
    //add Qunatitity field annotion
    //costinglotsize ,
    costinglotsizedescription ,
    variancekey ,
    variancekeydescription ,
    baseunit ,
    baseunitdescription ,
    tasklistgroupcounter ,
    tasklistgroupcounterdescriptio ,
    tasklistgroup ,
    tasklistgroupdescription ,
    tasklisttype ,
    tasklisttypedescription ,
    costingproductionversion ,
    costingproductionversiondesc ,
    isfixedpricecoproduct ,
    isfixedpricecoproductdesc ,
    costingspecialprocurementtype ,
    costingspecialprocurementtyped ,
    sourcebomalternative ,
    sourcebomalternativedesc ,
    productbomusage,
    productbomusagedesc ,
    productiscostingrelevant ,
    productiscostingrelevantdesc
   
}
