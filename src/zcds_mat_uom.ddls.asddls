@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for Material UOM data'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_MAT_UOM as select from ztab_mat_uom

{
    key product,
  key alternativeunit,

  quantitynumerator,
  quantitydenominator,

  @Semantics.quantity.unitOfMeasure : 'alternativeunit'
  materialvolume,

  volumeunit,

  @Semantics.quantity.unitOfMeasure : 'alternativeunit'
  grossweight,

  weightunit,
  globaltradeitemnumber,
  globaltradeitemnumbercategory,

  @Semantics.quantity.unitOfMeasure : 'alternativeunit'
  unitspecificproductlength,

  @Semantics.quantity.unitOfMeasure : 'alternativeunit'
  unitspecificproductwidth,

  @Semantics.quantity.unitOfMeasure : 'alternativeunit'
  unitspecificproductheight,

  productmeasurementunit,
  lowerlevelpackagingunit,

  @Semantics.quantity.unitOfMeasure : 'alternativeunit'
  remainingvolumeafternesting,

  maximumstackingfactor,

  @Semantics.quantity.unitOfMeasure : 'alternativeunit'
  capacityusage,

  baseunit
}
