@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for Material MRP Data'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_MAT_MRPAREA as select from ztab_mat_mrparea

{
   key product,
productdescription,
plant,
plantdescription,
mrparea,
mrpareadescription,
mrptype,
mrptypedescription,
mrpresponsible,
mrpresponsibledescription,
mrpgroup,
mrpgroupdescription,

@Semantics.quantity.unitOfMeasure: 'baseunit'
reorderthresholdquantity,
reorderthresholdquantitydescri,

planningtimefence,
planningtimefencedescription,
lotsizingprocedure,
lotsizingproceduredescription,

@Semantics.quantity.unitOfMeasure: 'baseunit'
lotsizeroundingquantity,
lotsizeroundingquantitydescrip,

@Semantics.quantity.unitOfMeasure: 'baseunit'
minimumlotsizequantity,
minimumlotsizequantitydescript,

@Semantics.quantity.unitOfMeasure: 'baseunit'
maximumlotsizequantity,
maximumlotsizequantitydescript,

@Semantics.quantity.unitOfMeasure: 'baseunit'
maximumstockquantity,
maximumstockquantitydescriptio,

assemblyscrappercent,
assemblyscrappercentdescriptio,
procurementsubtype,
procurementsubtypedescription,
dfltstoragelocationextprocmt,
dfltstoragelocationextprocmtde,
mrpplanningcalendar,
mrpplanningcalendardescription,

@Semantics.quantity.unitOfMeasure: 'baseunit'
safetystockquantity,
safetystockquantitydescription,

rangeofcvrgprflcode,
rangeofcvrgprflcodedescription,
safetyduration,
safetydurationdescription,

@Semantics.quantity.unitOfMeasure: 'baseunit'
fixedlotsizequantity,
fixedlotsizequantitydescriptio,

@Semantics.amount.currencyCode: 'currency'
lotsizeindependentcosts,
lotsizeindependentcostsdescrip,

isstoragecosts,
isstoragecostsdescription,
rqmtqtyrcpttakttmeinwrkgdays,
rqmtqtyrcpttakttmeinwrkgdaysde,
srvclvl,
srvclvldescription,
ismarkedfordeletion,
ismarkedfordeletiondescription,
perdprflforsftytme,
perdprflforsftytmedescription,
ismrpdependentrqmt,
ismrpdependentrqmtdescription,
issafetytime,
issafetytimedescription,
planneddeliverydurationindays,
planneddeliverydurationindaysd,
isplanneddeliverytime,
isplanneddeliverytimedescripti,

currency,
currencydescription,
baseunit,
baseunitdescription,

planandorderdaydetermination,
planandorderdaydeterminationde,
roundingprofile,
roundingprofiledescription,
storagelocation,
storagelocationdescription


}
