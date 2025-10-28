CLASS zcl_rule_engine DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.  " Needed for console execution

    TYPES tt_rule_engine TYPE STANDARD TABLE OF ztab_rule_engine WITH DEFAULT KEY.

    METHODS insert_layouts
      IMPORTING
        it_payload TYPE tt_rule_engine.

ENDCLASS.



CLASS zcl_rule_engine IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    " Console runner entry point

    DATA lt_payload TYPE tt_rule_engine.
    DATA lt_payload2 TYPE tt_rule_engine.

    " ✅ Correct demo data population
    lt_payload = VALUE #(

(   rule_id =   '1' process =   'Create'    layouts =   'BASIC DATA 1'  fieldsnames =   'Material'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' '
i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '2' process =   'Create'    layouts =   'BASIC DATA 1'  fieldsnames =   'Base Unit of Measure'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '3' process =   'Create'    layouts =   'BASIC DATA 1'  fieldsnames =   'Material Group'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '4' process =   'Create'    layouts =   'BASIC DATA 1'  fieldsnames =   'Ext. Matl Group'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '5' process =   'Create'    layouts =   'BASIC DATA 1'  fieldsnames =   'Division'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' '
i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '6' process =   'Create'    layouts =   'BASIC DATA 1'  fieldsnames =   'Lab/Office'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '7' process =   'Create'    layouts =   'BASIC DATA 1'  fieldsnames =   'Product allocation'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '8' process =   'Create'    layouts =   'BASIC DATA 1'  fieldsnames =   'Prod.hierarchy'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '9' process =   'Create'    layouts =   'BASIC DATA 1'  fieldsnames =   'Cross-Plant Material'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '10'    process =   'Create'    layouts =   'BASIC DATA 1'  fieldsnames =   'Valid from'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '11'    process =   'Create'    layouts =   'BASIC DATA 1'  fieldsnames =   'Assign effect. vals'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '12'    process =   'Create'    layouts =   'BASIC DATA 1'  fieldsnames =   'GenItemCatGroup'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '13'    process =   'Create'    layouts =   'BASIC DATA 1'  fieldsnames =   'Authorization Group'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '14'    process =   'Create'    layouts =   'BASIC DATA 1'  fieldsnames =   'Gross weight'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '15'    process =   'Create'    layouts =   'BASIC DATA 1'  fieldsnames =   'Weight unit'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '16'    process =   'Create'    layouts =   'BASIC DATA 1'  fieldsnames =   'Net weight'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '17'    process =   'Create'    layouts =   'BASIC DATA 1'  fieldsnames =   'Volume'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '18'    process =   'Create'    layouts =   'BASIC DATA 1'  fieldsnames =   'Volume unit'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '19'    process =   'Create'    layouts =   'BASIC DATA 1'  fieldsnames =   'Size/dimensions'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '20'    process =   'Create'    layouts =   'BASIC DATA 1'  fieldsnames =   'EAN/UPC'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '21'    process =   'Create'    layouts =   'BASIC DATA 1'  fieldsnames =   'EAN category'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '22'    process =   'Create'    layouts =   'BASIC DATA 1'  fieldsnames =   'Matl Grp Pack.Matls'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '23'    process =   'Create'    layouts =   'BASIC DATA 1'  fieldsnames =   'ref mat for pckg'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '24'    process =   'Create'    layouts =   'BASIC DATA 1'  fieldsnames =   'Languages Maintained'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '25'    process =   'Create'    layouts =   'BASIC DATA 1'  fieldsnames =   'Basic Data Text'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '26'    process =   'Create'    layouts =   'BASIC DATA 2'  fieldsnames =   'Material'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '27'    process =   'Create'    layouts =   'BASIC DATA 2'  fieldsnames =   'Description'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '28'    process =   'Create'    layouts =   'BASIC DATA 2'  fieldsnames =   'prod inspe memo'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '29'    process =   'Create'    layouts =   'BASIC DATA 2'  fieldsnames =   'Ind. Std Desc.'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '30'    process =   'Create'    layouts =   'BASIC DATA 2'  fieldsnames =   'CAD Indicator' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '31'    process =   'Create'    layouts =   'BASIC DATA 2'  fieldsnames =   'Basic Material'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '32'    process =   'Create'    layouts =   'BASIC DATA 2'  fieldsnames =   'MS Book Part Number'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '33'    process =   'Create'    layouts =   'BASIC DATA 2'  fieldsnames =   'Medium'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '34'    process =   'Create'    layouts =   'BASIC DATA 2'  fieldsnames =   'DG Indicator Profile'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '35'    process =   'Create'    layouts =   'BASIC DATA 2'  fieldsnames =   'Environmentally rlt'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '36'    process =   'Create'    layouts =   'BASIC DATA 2'  fieldsnames =   'In bulk/liquid'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '37'    process =   'Create'    layouts =   'BASIC DATA 2'  fieldsnames =   'Highly viscous'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '38'    process =   'Create'    layouts =   'BASIC DATA 2'  fieldsnames =   'segmentation Structure'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '39'    process =   'Create'    layouts =   'BASIC DATA 2'  fieldsnames =   'Segmentation Strategy' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '40'    process =   'Create'    layouts =   'BASIC DATA 2'  fieldsnames =   'No link'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '41'    process =   'Create'    layouts =   'BASIC DATA 2'  fieldsnames =   'Document'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '42'    process =   'Create'    layouts =   'BASIC DATA 2'  fieldsnames =   'Document Type' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '43'    process =   'Create'    layouts =   'BASIC DATA 2'  fieldsnames =   'Document Version'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '44'    process =   'Create'    layouts =   'BASIC DATA 2'  fieldsnames =   'Page Number'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '45'    process =   'Create'    layouts =   'BASIC DATA 2'  fieldsnames =   'Doc. Change Number'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '46'    process =   'Create'    layouts =   'BASIC DATA 2'  fieldsnames =   'Page Format'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '47'    process =   'Create'    layouts =   'BASIC DATA 2'  fieldsnames =   'Number of Sheets'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '48'    process =   'Create'    layouts =   'BASIC DATA 2'  fieldsnames =   'Cross-Plant CM'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '49'    process =   'Create'    layouts =   'BASIC DATA 2'  fieldsnames =   'Configure Variant' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '50'    process =   'Create'    layouts =   'BASIC DATA 2'  fieldsnames =   'Configurable Material '    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '51'    process =   'Create'    layouts =   'BASIC DATA 2'  fieldsnames =   'ANP Code'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '52'    process =   'Create'    layouts =   'BASIC DATA 2'  fieldsnames =   'Product group' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '53'    process =   'Create'    layouts =   'BASIC DATA 2'  fieldsnames =   'Product group type'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '54'    process =   'Create'    layouts =   'classification'    fieldsnames =   'Material'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '55'    process =   'Create'    layouts =   'classification'    fieldsnames =   'Class Type'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '56'    process =   'Create'    layouts =   'classification'    fieldsnames =   'Class' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '57'    process =   'Create'    layouts =   'classification'    fieldsnames =   'Description'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '58'    process =   'Create'    layouts =   'classification'    fieldsnames =   'Standard Class'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '59'    process =   'Create'    layouts =   'classification'    fieldsnames =   'Icon'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '60'    process =   'Create'    layouts =   'classification'    fieldsnames =   'Status'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '61'    process =   'Create'    layouts =   'classification'    fieldsnames =   'Item Number (Itm)' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '62'    process =   'Create'    layouts =   'Sales:Sales org .1'    fieldsnames =   'Material'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '63'    process =   'Create'    layouts =   'Sales:Sales org .1'    fieldsnames =   'Descr. (Description)'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '64'    process =   'Create'    layouts =   'Sales:Sales org .1'    fieldsnames =   'Base Unit of Measure'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '65'    process =   'Create'    layouts =   'Sales:Sales org .1'    fieldsnames =   'Division'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '66'    process =   'Create'    layouts =   'Sales:Sales org .1'    fieldsnames =   'X-distr.chain status'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '67'    process =   'Create'    layouts =   'Sales:Sales org .1'    fieldsnames =   'Valid from'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '68'    process =   'Create'    layouts =   'Sales:Sales org .1'    fieldsnames =   'Material Group'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '69'    process =   'Create'    layouts =   'Sales:Sales org. 2'    fieldsnames =   'Material'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '70'    process =   'Create'    layouts =   'Sales:Sales org. 2'    fieldsnames =   'Description'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '71'    process =   'Create'    layouts =   'Sales:Sales org. 2'    fieldsnames =   'Gen. item cat. grp'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '72'    process =   'Create'    layouts =   'Sales: General/Plant'  fieldsnames =   'Material'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '73'    process =   'Create'    layouts =   'Sales: General/Plant'  fieldsnames =   'Description'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '74'    process =   'Create'    layouts =   'Sales: General/Plant'  fieldsnames =   'Plant' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '75'    process =   'Create'    layouts =   'Sales: General/Plant'  fieldsnames =   'Base Unit of Measure'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '76'    process =   'Create'    layouts =   'Sales: General/Plant'  fieldsnames =   'Gross Weight'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '77'    process =   'Create'    layouts =   'Sales: General/Plant'  fieldsnames =   'Net Weight'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '78'    process =   'Create'    layouts =   'Sales: General/Plant'  fieldsnames =   'Qual f freegoodsdis'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '79'    process =   'Create'    layouts =   'Sales: General/Plant'  fieldsnames =   'Appr. batch rec. req.' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '80'    process =   'Create'    layouts =   'Sales: General/Plant'  fieldsnames =   'Batch management (Plant)'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =
'No'    customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '81'    process =   'Create'    layouts =   'Sales: General/Plant'  fieldsnames =   'matl grp pack matls'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '82'    process =   'Create'    layouts =   'Sales: General/Plant'  fieldsnames =   'ref mat for pckg'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '83'    process =   'Create'    layouts =   'Sales: General/Plant'  fieldsnames =   'Transportation Group'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '84'    process =   'Create'    layouts =   'Sales: General/Plant'  fieldsnames =   'Serialization Level'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '85'    process =   'Create'    layouts =   'Sales: General/Plant'  fieldsnames =   'ref mat for pckg'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '86'    process =   'Create'    layouts =   'Sales: General/Plant'  fieldsnames =   'Material Grp Pack. Matls'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =
'No'    customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '87'    process =   'Create'    layouts =   'Ext spp Basic Data'    fieldsnames =   'Material'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '88'    process =   'Create'    layouts =   'Ext spp Basic Data'    fieldsnames =   'Description'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '89'    process =   'Create'    layouts =   'Ext spp Basic Data'    fieldsnames =   'Product for kit to order'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =
'No'    customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '90'    process =   'Create'    layouts =   'Ext spp Basic Data'    fieldsnames =   'Procedure to order'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '91'    process =   'Create'    layouts =   'Ext spp Basic Data'    fieldsnames =   'push deployment from supplier '    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory
=     'No'    customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '92'    process =   'Create'    layouts =   'Ext spp Basic Data'    fieldsnames =   'inventory balancing not allowed'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory
=     'No'    customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '93'    process =   'Create'    layouts =   'Ext spp Basic Data'    fieldsnames =   'global stock on entry location DRP'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'
mandatory =     'No'    customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '94'    process =   'Create'    layouts =   'Ext spp Basic Data'    fieldsnames =   'Excl from express shipm'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =
'No'    customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '95'    process =   'Create'    layouts =   'Ext spp Basic Data'    fieldsnames =   'new product'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '96'    process =   'Create'    layouts =   'Ext spp Basic Data'    fieldsnames =   'invent plan mode'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '97'    process =   'Create'    layouts =   'Ext spp Basic Data'    fieldsnames =   'Production start date '    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =
'No'    customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '98'    process =   'Create'    layouts =   'Ext spp Basic Data'    fieldsnames =   'Production end date '  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '99'    process =   'Create'    layouts =   'Intl Trade:Export' fieldsnames =   'Material'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '100'   process =   'Create'    layouts =   'Intl Trade:Export' fieldsnames =   'Description'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '101'   process =   'Create'    layouts =   'Intl Trade:Export' fieldsnames =   'Plant' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '102'   process =   'Create'    layouts =   'Intl Trade:Export' fieldsnames =   'Intrastat Group'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '103'   process =   'Create'    layouts =   'Intl Trade:Export' fieldsnames =   'CAS number (pharm.)'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '104'   process =   'Create'    layouts =   'Intl Trade:Export' fieldsnames =   'PRODCOM no.'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '105'   process =   'Create'    layouts =   'Intl Trade:Export' fieldsnames =   'Control code'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '106'   process =   'Create'    layouts =   'Intl Trade:Export' fieldsnames =   'Country of origin' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '107'   process =   'Create'    layouts =   'Intl Trade:Export' fieldsnames =   'Region of origin'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '108'   process =   'Create'    layouts =   'Sales Text'    fieldsnames =   'Material'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '109'   process =   'Create'    layouts =   'Sales Text'    fieldsnames =   'Description'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '110'   process =   'Create'    layouts =   'Sales Text'    fieldsnames =   'sales org' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '111'   process =   'Create'    layouts =   'Sales Text'    fieldsnames =   'distribution channle'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '112'   process =   'Create'    layouts =   'Sales Text'    fieldsnames =   'language maintained '  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '113'   process =   'Create'    layouts =   'Purchasing'    fieldsnames =   'Material'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '114'   process =   'Create'    layouts =   'Purchasing'    fieldsnames =   'Description'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '115'   process =   'Create'    layouts =   'Purchasing'    fieldsnames =   'Plant' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' '
i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '116'   process =   'Create'    layouts =   'Purchasing'    fieldsnames =   'Base Unit of Measure'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '117'   process =   'Create'    layouts =   'Purchasing'    fieldsnames =   'order unit'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '118'   process =   'Create'    layouts =   'Purchasing'    fieldsnames =   'variable purchase order unit'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '119'   process =   'Create'    layouts =   'Purchasing'    fieldsnames =   'Purchasing Group'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '120'   process =   'Create'    layouts =   'Purchasing'    fieldsnames =   'Material Group'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '121'   process =   'Create'    layouts =   'Purchasing'    fieldsnames =   'Valid from'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '122'   process =   'Create'    layouts =   'Purchasing'    fieldsnames =   'Plant-specific material status'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =
'No'    customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '123'   process =   'Create'    layouts =   'Purchasing'    fieldsnames =   'Valid from'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '124'   process =   'Create'    layouts =   'Purchasing'    fieldsnames =   'Tax indicator for material'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '125'   process =   'Create'    layouts =   'Purchasing'    fieldsnames =   'Qual. free goods indicator'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '126'   process =   'Create'    layouts =   'Purchasing'    fieldsnames =   'Material freight group'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '127'   process =   'Create'    layouts =   'Purchasing'    fieldsnames =   'Automatic PO'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '128'   process =   'Create'    layouts =   'Purchasing'    fieldsnames =   'Batch management'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '129'   process =   'Create'    layouts =   'Purchasing'    fieldsnames =   'Batch management (Plant)'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '130'   process =   'Create'    layouts =   'Purchasing'    fieldsnames =   'Purchasing value key'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '131'   process =   'Create'    layouts =   'Purchasing'    fieldsnames =   '1st Reminder/Exped.'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '132'   process =   'Create'    layouts =   'Purchasing'    fieldsnames =   '2nd Reminder/Exped.'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '133'   process =   'Create'    layouts =   'Purchasing'    fieldsnames =   '3rd Reminder/Exped.'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '134'   process =   'Create'    layouts =   'Purchasing'    fieldsnames =   'Standard value for delivery date variance' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory
=     'No'    customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '135'   process =   'Create'    layouts =   'Purchasing'    fieldsnames =   'Shipping Instructions' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '136'   process =   'Create'    layouts =   'Purchasing'    fieldsnames =   'Underdelivery Tolerance (%)'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '137'   process =   'Create'    layouts =   'Purchasing'    fieldsnames =   'Overdelivery Tolerance (%)'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '138'   process =   'Create'    layouts =   'Purchasing'    fieldsnames =   'Min. delivery quantity (%)'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '139'   process =   'Create'    layouts =   'Purchasing'    fieldsnames =   'unltd overdelivery '   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '140'   process =   'Create'    layouts =   'Purchasing'    fieldsnames =   'ackowledment reqd '    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '141'   process =   'Create'    layouts =   'Purchasing'    fieldsnames =   'GR Processing Time (days)' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '142'   process =   'Create'    layouts =   'Purchasing'    fieldsnames =   'Post to inspection stock'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '143'   process =   'Create'    layouts =   'Purchasing'    fieldsnames =   'JIT delivery'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '144'   process =   'Create'    layouts =   'Purchasing'    fieldsnames =   'Critical Part' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '145'   process =   'Create'    layouts =   'Purchasing'    fieldsnames =   'mfr part profile'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '146'   process =   'Create'    layouts =   'Purchasing'    fieldsnames =   'manufacturer'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '147'   process =   'Create'    layouts =   'Purchasing'    fieldsnames =   'Source list requirement'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '148'   process =   'Create'    layouts =   'MRP 1' fieldsnames =   'Material'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' ' i18 =
' ' defaultvalues =     ' ' )
(   rule_id =   '149'   process =   'Create'    layouts =   'MRP 1' fieldsnames =   'Description'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' '
i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '150'   process =   'Create'    layouts =   'MRP 1' fieldsnames =   'Plant' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' ' i18 =
' ' defaultvalues =     ' ' )
(   rule_id =   '151'   process =   'Create'    layouts =   'MRP 1' fieldsnames =   'Base Unit of Measure'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '152'   process =   'Create'    layouts =   'MRP 1' fieldsnames =   'MRP Group' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' ' i18 =
' ' defaultvalues =     ' ' )
(   rule_id =   '153'   process =   'Create'    layouts =   'MRP 1' fieldsnames =   'Purchasing Group'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '154'   process =   'Create'    layouts =   'MRP 1' fieldsnames =   'ABC Indicator' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' '
i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '155'   process =   'Create'    layouts =   'MRP 1' fieldsnames =   'Plant-specific material status'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '156'   process =   'Create'    layouts =   'MRP 1' fieldsnames =   'Valid from'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' '
i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '157'   process =   'Create'    layouts =   'MRP 1' fieldsnames =   'MRP Type'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' ' i18 =
' ' defaultvalues =     ' ' )
(   rule_id =   '158'   process =   'Create'    layouts =   'MRP 1' fieldsnames =   'Reorder Point' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' '
i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '159'   process =   'Create'    layouts =   'MRP 1' fieldsnames =   'Planning Time Fence'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '160'   process =   'Create'    layouts =   'MRP 1' fieldsnames =   'Planning Cycle'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '161'   process =   'Create'    layouts =   'MRP 1' fieldsnames =   'MRP Controller'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '162'   process =   'Create'    layouts =   'MRP 1' fieldsnames =   'Lot Sizing Procedure'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '163'   process =   'Create'    layouts =   'MRP 1' fieldsnames =   'Minimum Lot Size'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '164'   process =   'Create'    layouts =   'MRP 1' fieldsnames =   'Maximum Lot Size'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '165'   process =   'Create'    layouts =   'MRP 1' fieldsnames =   'Fixed Lot Size'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '166'   process =   'Create'    layouts =   'MRP 1' fieldsnames =   'LS-Independent Costs'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '167'   process =   'Create'    layouts =   'MRP 1' fieldsnames =   'Storage Costs Code'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '168'   process =   'Create'    layouts =   'MRP 1' fieldsnames =   'Assembly Scrap (%)'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '169'   process =   'Create'    layouts =   'MRP 1' fieldsnames =   'Takt Time' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' ' i18 =
' ' defaultvalues =     ' ' )
(   rule_id =   '170'   process =   'Create'    layouts =   'MRP 1' fieldsnames =   'Rounding Profile'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '171'   process =   'Create'    layouts =   'MRP 1' fieldsnames =   'Rounding Value'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '172'   process =   'Create'    layouts =   'MRP 1' fieldsnames =   'MRP Area Exists'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '173'   process =   'Create'    layouts =   'MRP2'  fieldsnames =   'Material'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' ' i18 =
' ' defaultvalues =     ' ' )
(   rule_id =   '174'   process =   'Create'    layouts =   'MRP2'  fieldsnames =   'Description'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' '
i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '175'   process =   'Create'    layouts =   'MRP2'  fieldsnames =   'Plant' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' ' i18 =
' ' defaultvalues =     ' ' )
(   rule_id =   '176'   process =   'Create'    layouts =   'MRP2'  fieldsnames =   'Procurement Type'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '177'   process =   'Create'    layouts =   'MRP2'  fieldsnames =   'special Procurement'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '178'   process =   'Create'    layouts =   'MRP2'  fieldsnames =   'Batch entry'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' '
i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '179'   process =   'Create'    layouts =   'MRP2'  fieldsnames =   'Production Storage Location'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '180'   process =   'Create'    layouts =   'MRP2'  fieldsnames =   'JIT delivery schedule' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '181'   process =   'Create'    layouts =   'MRP2'  fieldsnames =   'Co product'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' '
i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '182'   process =   'Create'    layouts =   'MRP2'  fieldsnames =   'stock determination group' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '183'   process =   'Create'    layouts =   'MRP2'  fieldsnames =   'bulk material' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' '
i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '184'   process =   'Create'    layouts =   'MRP2'  fieldsnames =   'stor location for ext proc'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '185'   process =   'Create'    layouts =   'MRP2'  fieldsnames =   'In house Production'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '186'   process =   'Create'    layouts =   'MRP2'  fieldsnames =   'planned delivery time' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '187'   process =   'Create'    layouts =   'MRP2'  fieldsnames =   'goods rec proc time'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '188'   process =   'Create'    layouts =   'MRP2'  fieldsnames =   'plannig calender'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '189'   process =   'Create'    layouts =   'MRP2'  fieldsnames =   'scheduling margin key' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '190'   process =   'Create'    layouts =   'MRP2'  fieldsnames =   'Safety Stock'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' '
i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '191'   process =   'Create'    layouts =   'MRP2'  fieldsnames =   'Minimum Safety Stock'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '192'   process =   'Create'    layouts =   'MRP2'  fieldsnames =   'Service Level' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' '
i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '193'   process =   'Create'    layouts =   'MRP2'  fieldsnames =   'Range Coverage Profile'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '194'   process =   'Create'    layouts =   'MRP2'  fieldsnames =   'Safety Time Indicator' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '195'   process =   'Create'    layouts =   'MRP2'  fieldsnames =   'Safety Time '  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' '
i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '196'   process =   'Create'    layouts =   'MRP2'  fieldsnames =   'Profile for saf time'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '197'   process =   'Create'    layouts =   'MRP 3' fieldsnames =   'Material'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' ' i18 =
' ' defaultvalues =     ' ' )
(   rule_id =   '198'   process =   'Create'    layouts =   'MRP 3' fieldsnames =   'Description'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' '
i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '199'   process =   'Create'    layouts =   'MRP 3' fieldsnames =   'Plant' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' ' i18 =
' ' defaultvalues =     ' ' )
(   rule_id =   '200'   process =   'Create'    layouts =   'MRP 3' fieldsnames =   'Period Indicator'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '201'   process =   'Create'    layouts =   'MRP 3' fieldsnames =   'Fiscal Year Variant'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '202'   process =   'Create'    layouts =   'MRP 3' fieldsnames =   'Splitting Indicator'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '203'   process =   'Create'    layouts =   'MRP 3' fieldsnames =   'Strategy Group'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '204'   process =   'Create'    layouts =   'MRP 3' fieldsnames =   'Consumption mode'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '205'   process =   'Create'    layouts =   'MRP 3' fieldsnames =   'Backwardconsumption per.'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '206'   process =   'Create'    layouts =   'MRP 3' fieldsnames =   'Fwd consumption per.'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '207'   process =   'Create'    layouts =   'MRP 3' fieldsnames =   'Mixed MRP' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' ' i18 =
' ' defaultvalues =     ' ' )
(   rule_id =   '208'   process =   'Create'    layouts =   'MRP 3' fieldsnames =   'Planning material' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '209'   process =   'Create'    layouts =   'MRP 3' fieldsnames =   'Planning plant'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '210'   process =   'Create'    layouts =   'MRP 3' fieldsnames =   'Plan. conv. Factor'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '211'   process =   'Create'    layouts =   'MRP 3' fieldsnames =   'Base Unit of plan mat' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '212'   process =   'Create'    layouts =   'MRP 3' fieldsnames =   'Availability check'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '213'   process =   'Create'    layouts =   'MRP 3' fieldsnames =   'Tot. repl. lead time (days)'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '214'   process =   'Create'    layouts =   'MRP 3' fieldsnames =   'Cross-project' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' '
i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '215'   process =   'Create'    layouts =   'MRP 4' fieldsnames =   'Material'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' ' i18 =
' ' defaultvalues =     ' ' )
(   rule_id =   '216'   process =   'Create'    layouts =   'MRP 4' fieldsnames =   'Description'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' '
i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '217'   process =   'Create'    layouts =   'MRP 4' fieldsnames =   'Plant' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' ' i18 =
' ' defaultvalues =     ' ' )
(   rule_id =   '218'   process =   'Create'    layouts =   'MRP 4' fieldsnames =   'Storage Location'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '219'   process =   'Create'    layouts =   'MRP 4' fieldsnames =   'Individual coll req'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '220'   process =   'Create'    layouts =   'MRP 4' fieldsnames =   'Component scrap (%)'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '221'   process =   'Create'    layouts =   'MRP 4' fieldsnames =   'Version indiacator'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '222'   process =   'Create'    layouts =   'MRP 4' fieldsnames =   'Product versions'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '223'   process =   'Create'    layouts =   'MRP 4' fieldsnames =   'Requirement group' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '224'   process =   'Create'    layouts =   'MRP 4' fieldsnames =   'MRP relevant dep requirements' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '225'   process =   'Create'    layouts =   'MRP 4' fieldsnames =   'Discontinuation'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '226'   process =   'Create'    layouts =   'MRP 4' fieldsnames =   'Effective out date'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '227'   process =   'Create'    layouts =   'MRP 4' fieldsnames =   'Follow up Material'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '228'   process =   'Create'    layouts =   'MRP 4' fieldsnames =   'Repet Manufactureing ' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '229'   process =   'Create'    layouts =   'MRP 4' fieldsnames =   'REM profile'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' '
i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '230'   process =   'Create'    layouts =   'MRP 4' fieldsnames =   'action control'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '231'   process =   'Create'    layouts =   'MRP 4' fieldsnames =   'Material memo exists'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '232'   process =   'Create'    layouts =   'MRP 4' fieldsnames =   'Average Plant stock'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '233'   process =   'Create'    layouts =   'MRP 4' fieldsnames =   'material memo' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' '
i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '234'   process =   'Create'    layouts =   'Forecasting'   fieldsnames =   'Material Number'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '235'   process =   'Create'    layouts =   'Forecasting'   fieldsnames =   'Plant' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' '
i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '236'   process =   'Create'    layouts =   'Forecasting'   fieldsnames =   'Base unit of measure'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '237'   process =   'Create'    layouts =   'Forecasting'   fieldsnames =   'Forecast Model'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '238'   process =   'Create'    layouts =   'Forecasting'   fieldsnames =   'Last forecast' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '239'   process =   'Create'    layouts =   'Forecasting'   fieldsnames =   'Period Indicator'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '240'   process =   'Create'    layouts =   'Forecasting'   fieldsnames =   'Ref Matl consumption'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '241'   process =   'Create'    layouts =   'Forecasting'   fieldsnames =   'Ref Plant consumption' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '242'   process =   'Create'    layouts =   'Forecasting'   fieldsnames =   'Multiplier'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '243'   process =   'Create'    layouts =   'Forecasting'   fieldsnames =   'due to'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '244'   process =   'Create'    layouts =   'Forecasting'   fieldsnames =   'Hist periods'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '245'   process =   'Create'    layouts =   'Forecasting'   fieldsnames =   'Forecast Periods'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '246'   process =   'Create'    layouts =   'Forecasting'   fieldsnames =   'Periods per season'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '247'   process =   'Create'    layouts =   'Forecasting'   fieldsnames =   'Initialization pds'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '248'   process =   'Create'    layouts =   'Forecasting'   fieldsnames =   'Fixed periods' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '249'   process =   'Create'    layouts =   'Forecasting'   fieldsnames =   'Initialization'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )




    ).

       INSERT ztab_rule_engine FROM TABLE @lt_payload.


lt_payload2 = VALUE #(

(   rule_id =   '250'   process =   'Create'    layouts =   'Forecasting'   fieldsnames =   'Model Selection'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '251'   process =   'Create'    layouts =   'Forecasting'   fieldsnames =   'Optimization Level'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '252'   process =   'Create'    layouts =   'Forecasting'   fieldsnames =   'Alpha factor'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '253'   process =   'Create'    layouts =   'Forecasting'   fieldsnames =   'Gamma Factor'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '254'   process =   'Create'    layouts =   'Forecasting'   fieldsnames =   'Tracking Limit'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '255'   process =   'Create'    layouts =   'Forecasting'   fieldsnames =   'Selection procedure'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '256'   process =   'Create'    layouts =   'Forecasting'   fieldsnames =   'Weighting group'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '257'   process =   'Create'    layouts =   'Forecasting'   fieldsnames =   'Beta factor'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '258'   process =   'Create'    layouts =   'Forecasting'   fieldsnames =   'Delta factor'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '259'   process =   'Create'    layouts =   'Forecasting'   fieldsnames =   'Reset automatically'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '260'   process =   'Create'    layouts =   'Forecasting'   fieldsnames =   'Param optimization'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '261'   process =   'Create'    layouts =   'Forecasting'   fieldsnames =   'correction factors'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '262'   process =   'Create'    layouts =   'Forecasting'   fieldsnames =   'Forecast values'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '263'   process =   'Create'    layouts =   'Forecasting'   fieldsnames =   'consumtion vals'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '264'   process =   'Create'    layouts =   'Plant Data / Stor. 1'  fieldsnames =   'Material Number'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '265'   process =   'Create'    layouts =   'Plant Data / Stor. 1'  fieldsnames =   'Plant' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '266'   process =   'Create'    layouts =   'Plant Data / Stor. 1'  fieldsnames =   'Location'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '267'   process =   'Create'    layouts =   'Plant Data / Stor. 1'  fieldsnames =   'Storage Bin'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '268'   process =   'Create'    layouts =   'Plant Data / Stor. 1'  fieldsnames =   'Picking area'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '269'   process =   'Create'    layouts =   'Plant Data / Stor. 1'  fieldsnames =   'Storage Section'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '270'   process =   'Create'    layouts =   'Plant Data / Stor. 1'  fieldsnames =   'Storage Condition' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '271'   process =   'Create'    layouts =   'Plant Data / Stor. 1'  fieldsnames =   'Temperature Condition' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '272'   process =   'Create'    layouts =   'Plant Data / Stor. 1'  fieldsnames =   'Container Requirement' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '273'   process =   'Create'    layouts =   'Plant Data / Stor. 1'  fieldsnames =   'Hazardous Material Number' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =
'No'    customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '274'   process =   'Create'    layouts =   'Plant Data / Stor. 1'  fieldsnames =   'CC Phys inv Ind'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '275'   process =   'Create'    layouts =   'Plant Data / Stor. 1'  fieldsnames =   'CC Fixed'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '276'   process =   'Create'    layouts =   'Plant Data / Stor. 1'  fieldsnames =   'Number of Gr slips'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '277'   process =   'Create'    layouts =   'Plant Data / Stor. 1'  fieldsnames =   'Label type'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '278'   process =   'Create'    layouts =   'Plant Data / Stor. 1'  fieldsnames =   'Label form'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '279'   process =   'Create'    layouts =   'Plant Data / Stor. 1'  fieldsnames =   'Appr Batch recd req'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '280'   process =   'Create'    layouts =   'Plant Data / Stor. 1'  fieldsnames =   'Batch management'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '281'   process =   'Create'    layouts =   'Plant Data / Stor. 1'  fieldsnames =   'Batch Management(Plant)'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =
'No'    customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '282'   process =   'Create'    layouts =   'Plant Data / Stor. 1'  fieldsnames =   'Max storage period'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '283'   process =   'Create'    layouts =   'Plant Data / Stor. 1'  fieldsnames =   'Time unit' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '284'   process =   'Create'    layouts =   'Plant Data / Stor. 1'  fieldsnames =   'Minimum Remaining Shelf Life'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =
'No'    customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '285'   process =   'Create'    layouts =   'Plant Data / Stor. 1'  fieldsnames =   'Total Shelf Life'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '286'   process =   'Create'    layouts =   'Plant Data / Stor. 1'  fieldsnames =   'Period Ind for SLED'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '287'   process =   'Create'    layouts =   'Plant Data / Stor. 1'  fieldsnames =   'Storage percentage'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '288'   process =   'Create'    layouts =   'Plant Data / Stor. 1'  fieldsnames =   'Rounding rule SLED'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '289'   process =   'Create'    layouts =   'Plant Data / Stor. 1'  fieldsnames =   'Expiration date'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '290'   process =   'Create'    layouts =   'Plant Data / Stor. 1'  fieldsnames =   'Maturation time'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '291'   process =   'Create'    layouts =   'Plant Data / Stor. 1'  fieldsnames =   'Req Max sh Life'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '292'   process =   'Create'    layouts =   'Plant Data / Stor. 1'  fieldsnames =   'Segmentation strategy' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '293'   process =   'Create'    layouts =   'Plant Data / Stor. 1'  fieldsnames =   'Sort stock'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '294'   process =   'Create'    layouts =   'Plant Data / Stor. 1'  fieldsnames =   'Default stock segment' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '295'   process =   'Create'    layouts =   'Plant Data / Stor. 1'  fieldsnames =   'Unit of Issue' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '296'   process =   'Create'    layouts =   'Plant data Stor 2' fieldsnames =   'Net Weight'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '297'   process =   'Create'    layouts =   'Plant data Stor 2' fieldsnames =   'Gross Weight'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '298'   process =   'Create'    layouts =   'Plant data Stor 2' fieldsnames =   'Unit of Weight'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '299'   process =   'Create'    layouts =   'Plant data Stor 2' fieldsnames =   'Volume'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '300'   process =   'Create'    layouts =   'Plant data Stor 2' fieldsnames =   'Volume Unit'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '301'   process =   'Create'    layouts =   'Plant data Stor 2' fieldsnames =   'Size dimensions'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '302'   process =   'Create'    layouts =   'Plant data Stor 2' fieldsnames =   'Neg stocks in plant'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '303'   process =   'Create'    layouts =   'Plant data Stor 2' fieldsnames =   'Serial No Profile' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '304'   process =   'Create'    layouts =   'Plant data Stor 2' fieldsnames =   'Profit Center' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '305'   process =   'Create'    layouts =   'Plant data Stor 2' fieldsnames =   'IUID Relevant' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '306'   process =   'Create'    layouts =   'Plant data Stor 2' fieldsnames =   'IUUD type' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '307'   process =   'Create'    layouts =   'Plant data Stor 2' fieldsnames =   'serlevel'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '308'   process =   'Create'    layouts =   'Plant data Stor 2' fieldsnames =   'Log handling group'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '309'   process =   'Create'    layouts =   'Plant data Stor 2' fieldsnames =   'Dist profile'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '310'   process =   'Create'    layouts =   'Plant data Stor 2' fieldsnames =   'Stock determ group'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '311'   process =   'Create'    layouts =   'Plant data Stor 2' fieldsnames =   'External Allocation of UII'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =
'No'    customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '312'   process =   'Create'    layouts =   'Ware house mgt1'   fieldsnames =   'Warehouse Number'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '313'   process =   'Create'    layouts =   'Ware house mgt1'   fieldsnames =   'Base Unit of Measure'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '314'   process =   'Create'    layouts =   'Ware house mgt1'   fieldsnames =   'WM Unit'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '315'   process =   'Create'    layouts =   'Ware house mgt1'   fieldsnames =   'Unit of Issue' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '316'   process =   'Create'    layouts =   'Ware house mgt1'   fieldsnames =   'Proposed UoM from Material'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =
'No'    customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '317'   process =   'Create'    layouts =   'Ware house mgt1'   fieldsnames =   'Picking Storage Type'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '318'   process =   'Create'    layouts =   'Ware house mgt1'   fieldsnames =   'Hazardous Material Number' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '319'   process =   'Create'    layouts =   'Ware house mgt1'   fieldsnames =   'Volume'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '320'   process =   'Create'    layouts =   'Ware house mgt1'   fieldsnames =   'gross wheight' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '321'   process =   'Create'    layouts =   'Ware house mgt1'   fieldsnames =   'Capacity Usage '   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '322'   process =   'Create'    layouts =   'Ware house mgt1'   fieldsnames =   'Batch Management'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '323'   process =   'Create'    layouts =   'Ware house mgt1'   fieldsnames =   'Batch Management (Plant)'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '324'   process =   'Create'    layouts =   'Ware house mgt1'   fieldsnames =   'Appr. Batch Rec. Req.' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '325'   process =   'Create'    layouts =   'Ware house mgt1'   fieldsnames =   'Stock removal' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '326'   process =   'Create'    layouts =   'Ware house mgt1'   fieldsnames =   'Storage Section Ind.'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '327'   process =   'Create'    layouts =   'Ware house mgt1'   fieldsnames =   'Special movement'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '328'   process =   'Create'    layouts =   'Ware house mgt1'   fieldsnames =   '2-step picking'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '329'   process =   'Create'    layouts =   'Ware house mgt1'   fieldsnames =   'Stock placement'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '330'   process =   'Create'    layouts =   'Ware house mgt1'   fieldsnames =   'Bulk storage'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '331'   process =   'Create'    layouts =   'Ware house mgt1'   fieldsnames =   'Message to IM' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '332'   process =   'Create'    layouts =   'Ware house mgt1'   fieldsnames =   'Allow addn to stock'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '333'   process =   'Create'    layouts =   'warehouse mgt 2'   fieldsnames =   'Material'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '334'   process =   'Create'    layouts =   'warehouse mgt 2'   fieldsnames =   'Descr.'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '335'   process =   'Create'    layouts =   'warehouse mgt 2'   fieldsnames =   'Plant' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '336'   process =   'Create'    layouts =   'warehouse mgt 2'   fieldsnames =   'Whse No.'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '337'   process =   'Create'    layouts =   'warehouse mgt 2'   fieldsnames =   'Stge Type' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '338'   process =   'Create'    layouts =   'warehouse mgt 2'   fieldsnames =   'LE quantity'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '339'   process =   'Create'    layouts =   'warehouse mgt 2'   fieldsnames =   'UN'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '340'   process =   'Create'    layouts =   'warehouse mgt 2'   fieldsnames =   'SUT'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '341'   process =   'Create'    layouts =   'warehouse mgt 2'   fieldsnames =   'Storage Bin'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '342'   process =   'Create'    layouts =   'warehouse mgt 2'   fieldsnames =   'Picking Area'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '343'   process =   'Create'    layouts =   'warehouse mgt 2'   fieldsnames =   'Maximum bin quantity'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '344'   process =   'Create'    layouts =   'warehouse mgt 2'   fieldsnames =   'Control quantity'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '345'   process =   'Create'    layouts =   'warehouse mgt 2'   fieldsnames =   'Minimum bin quantity'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '346'   process =   'Create'    layouts =   'warehouse mgt 2'   fieldsnames =   'Replenishment qty' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '347'   process =   'Create'    layouts =   'warehouse mgt 2'   fieldsnames =   'Rounding qty'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '348'   process =   'Create'    layouts =   'Quality Mgt'   fieldsnames =   'Material'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '349'   process =   'Create'    layouts =   'Quality Mgt'   fieldsnames =   'Descr.'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '350'   process =   'Create'    layouts =   'Quality Mgt'   fieldsnames =   'Plant' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' '
i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '351'   process =   'Create'    layouts =   'Quality Mgt'   fieldsnames =   'Base Unit of Measure'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '352'   process =   'Create'    layouts =   'Quality Mgt'   fieldsnames =   'Unit of issue' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '353'   process =   'Create'    layouts =   'Quality Mgt'   fieldsnames =   'QM Material Auth.' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '354'   process =   'Create'    layouts =   'Quality Mgt'   fieldsnames =   'Inspection Setup (button)' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '355'   process =   'Create'    layouts =   'Quality Mgt'   fieldsnames =   'Post to Inspection Stock'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '356'   process =   'Create'    layouts =   'Quality Mgt'   fieldsnames =   'Documentation Required'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '357'   process =   'Create'    layouts =   'Quality Mgt'   fieldsnames =   'GR Processing Time (Days)' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '358'   process =   'Create'    layouts =   'Quality Mgt'   fieldsnames =   'Inspection Interval (Days)'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '359'   process =   'Create'    layouts =   'Quality Mgt'   fieldsnames =   'Catalog Profile'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '360'   process =   'Create'    layouts =   'Quality Mgt'   fieldsnames =   'Material Status'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '361'   process =   'Create'    layouts =   'Quality Mgt'   fieldsnames =   'Valid From'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '362'   process =   'Create'    layouts =   'Quality Mgt'   fieldsnames =   'QM in Procur. Active'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '363'   process =   'Create'    layouts =   'Quality Mgt'   fieldsnames =   'QM Control Key'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '364'   process =   'Create'    layouts =   'Quality Mgt'   fieldsnames =   'Certificate Type'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '365'   process =   'Create'    layouts =   'Quality Mgt'   fieldsnames =   'Target QM System'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '366'   process =   'Create'    layouts =   'Quality Mgt'   fieldsnames =   'Tech. Delivery Terms ' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '367'   process =   'Create'    layouts =   'Accounting 1View'  fieldsnames =   'Material'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '368'   process =   'Create'    layouts =   'Accounting 1View'  fieldsnames =   'Descr.'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '369'   process =   'Create'    layouts =   'Accounting 1View'  fieldsnames =   'Plant' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '370'   process =   'Create'    layouts =   'Accounting 1View'  fieldsnames =   'Base Unit of Measure'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '371'   process =   'Create'    layouts =   'Accounting 1View'  fieldsnames =   'Valuation Category'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '372'   process =   'Create'    layouts =   'Accounting 1View'  fieldsnames =   'Currency'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '373'   process =   'Create'    layouts =   'Accounting 1View'  fieldsnames =   'Current Period'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '374'   process =   'Create'    layouts =   'Accounting 1View'  fieldsnames =   'Division'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '375'   process =   'Create'    layouts =   'Accounting 1View'  fieldsnames =   'Price Determination'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '376'   process =   'Create'    layouts =   'Accounting 1View'  fieldsnames =   'ML Act.'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '377'   process =   'Create'    layouts =   'Accounting 1View'  fieldsnames =   'Valuation Class'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '378'   process =   'Create'    layouts =   'Accounting 1View'  fieldsnames =   'VC: Sales Order Stk'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '379'   process =   'Create'    layouts =   'Accounting 1View'  fieldsnames =   'Price control' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '380'   process =   'Create'    layouts =   'Accounting 1View'  fieldsnames =   'Moving price'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '381'   process =   'Create'    layouts =   'Accounting 1View'  fieldsnames =   'Total Stock'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '382'   process =   'Create'    layouts =   'Accounting 1View'  fieldsnames =   'Future Price'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '383'   process =   'Create'    layouts =   'Accounting 1View'  fieldsnames =   'Proj. stk val. class'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '384'   process =   'Create'    layouts =   'Accounting 1View'  fieldsnames =   'Price unit'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '385'   process =   'Create'    layouts =   'Accounting 1View'  fieldsnames =   'Standard price'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '386'   process =   'Create'    layouts =   'Accounting 1View'  fieldsnames =   'Total Value'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '387'   process =   'Create'    layouts =   'Accounting 1View'  fieldsnames =   'Valuated UoM'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '388'   process =   'Create'    layouts =   'Accounting 1View'  fieldsnames =   'Valid from'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '389'   process =   'Create'    layouts =   'Accounting 1View'  fieldsnames =   'Previous period/year ' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '390'   process =   'Create'    layouts =   'Accounting 1View'  fieldsnames =   'Std cost estimate '    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '391'   process =   'Create'    layouts =   'Accounting 2View'  fieldsnames =   'Material'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '392'   process =   'Create'    layouts =   'Accounting 2View'  fieldsnames =   'Descr.'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '393'   process =   'Create'    layouts =   'Accounting 2View'  fieldsnames =   'Plant' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '394'   process =   'Create'    layouts =   'Accounting 2View'  fieldsnames =   'Tax price 1'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '395'   process =   'Create'    layouts =   'Accounting 2View'  fieldsnames =   'Tax price 2'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '396'   process =   'Create'    layouts =   'Accounting 2View'  fieldsnames =   'Tax price 3'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '397'   process =   'Create'    layouts =   'Accounting 2View'  fieldsnames =   'Devaluation Ind. (checkbox)'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =
'No'    customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '398'   process =   'Create'    layouts =   'Accounting 2View'  fieldsnames =   'Commercial price 1'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '399'   process =   'Create'    layouts =   'Accounting 2View'  fieldsnames =   'Commercial price 2'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '400'   process =   'Create'    layouts =   'Accounting 2View'  fieldsnames =   'Commercial price 3'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '401'   process =   'Create'    layouts =   'Accounting 2View'  fieldsnames =   'Price Unit'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '402'   process =   'Create'    layouts =   'Accounting 2View'  fieldsnames =   'LIFO/FIFO-relevant '   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '403'   process =   'Create'    layouts =   'Accounting 2View'  fieldsnames =   'LIFO Poo'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '404'   process =   'Create'    layouts =   'Costing 1' fieldsnames =   'Material'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' '
i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '405'   process =   'Create'    layouts =   'Costing 1' fieldsnames =   'Descr.'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' '
i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '406'   process =   'Create'    layouts =   'Costing 1' fieldsnames =   'Plant' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' ' i18 =
' ' defaultvalues =     ' ' )
(   rule_id =   '407'   process =   'Create'    layouts =   'Costing 1' fieldsnames =   'Base Unit of Measure'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '408'   process =   'Create'    layouts =   'Costing 1' fieldsnames =   'Do Not Cost '  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '409'   process =   'Create'    layouts =   'Costing 1' fieldsnames =   'With Qty Structure '   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '410'   process =   'Create'    layouts =   'Costing 1' fieldsnames =   'Material origin (check box)'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '411'   process =   'Create'    layouts =   'Costing 1' fieldsnames =   'Origin Group'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '412'   process =   'Create'    layouts =   'Costing 1' fieldsnames =   'Overhead Group'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '413'   process =   'Create'    layouts =   'Costing 1' fieldsnames =   'Plant-Specific Mater'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '414'   process =   'Create'    layouts =   'Costing 1' fieldsnames =   'Valid From'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '415'   process =   'Create'    layouts =   'Costing 1' fieldsnames =   'Profit Center' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '416'   process =   'Create'    layouts =   'Costing 1' fieldsnames =   'Alternative BOM '  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '417'   process =   'Create'    layouts =   'Costing 1' fieldsnames =   'Group' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' ' i18 =
' ' defaultvalues =     ' ' )
(   rule_id =   '418'   process =   'Create'    layouts =   'Costing 1' fieldsnames =   'Task List Type'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '419'   process =   'Create'    layouts =   'Costing 1' fieldsnames =   'SpecProcurem Costing'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '420'   process =   'Create'    layouts =   'Costing 1' fieldsnames =   'Co-product '   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '421'   process =   'Create'    layouts =   'Costing 1' fieldsnames =   'Fxd Price '    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '422'   process =   'Create'    layouts =   'Costing 1' fieldsnames =   'Version Indicator' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '423'   process =   'Create'    layouts =   'Costing 1' fieldsnames =   'Production Version'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '424'   process =   'Create'    layouts =   'Costing 1' fieldsnames =   'BOM Usage' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' '
i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '425'   process =   'Create'    layouts =   'Costing 1' fieldsnames =   'Group Counter' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '426'   process =   'Create'    layouts =   'Costing 1' fieldsnames =   'Costing Lot Size'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '427'   process =   'Create'    layouts =   'Costing 1' fieldsnames =   'Versions (button)' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '428'   process =   'Create'    layouts =   'Costing 2' fieldsnames =   'Material'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' '
i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '429'   process =   'Create'    layouts =   'Costing 2' fieldsnames =   'Descr.'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' '
i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '430'   process =   'Create'    layouts =   'Costing 2' fieldsnames =   'Plant' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' ' i18 =
' ' defaultvalues =     ' ' )
(   rule_id =   '431'   process =   'Create'    layouts =   'Costing 2' fieldsnames =   'Cost Estimate' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '432'   process =   'Create'    layouts =   'Costing 2' fieldsnames =   'Future'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' '
i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '433'   process =   'Create'    layouts =   'Costing 2' fieldsnames =   'Current'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' '
i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '434'   process =   'Create'    layouts =   'Costing 2' fieldsnames =   'Previous'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' '
i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '435'   process =   'Create'    layouts =   'Costing 2' fieldsnames =   'Period / Fiscal Year (for Future)' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '436'   process =   'Create'    layouts =   'Costing 2' fieldsnames =   'Period / Fiscal Year (for current)'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =
'No'    customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '437'   process =   'Create'    layouts =   'Costing 2' fieldsnames =   'Period / Fiscal Year (for Previous)'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =
'No'    customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '438'   process =   'Create'    layouts =   'Costing 2' fieldsnames =   'Planned Price (for Future)'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '439'   process =   'Create'    layouts =   'Costing 2' fieldsnames =   'Planned Price (for current)'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '440'   process =   'Create'    layouts =   'Costing 2' fieldsnames =   'Planned Price  (for Previous)' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '441'   process =   'Create'    layouts =   'Costing 2' fieldsnames =   'Standard Price'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '442'   process =   'Create'    layouts =   'Costing 2' fieldsnames =   'Planned price 1'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '443'   process =   'Create'    layouts =   'Costing 2' fieldsnames =   'Planned price 2'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '444'   process =   'Create'    layouts =   'Costing 2' fieldsnames =   'Planned price 3'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '445'   process =   'Create'    layouts =   'Costing 2' fieldsnames =   'Planned price date 1'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '446'   process =   'Create'    layouts =   'Costing 2' fieldsnames =   'Planned price date 2'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '447'   process =   'Create'    layouts =   'Costing 2' fieldsnames =   'Planned price date 3'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '448'   process =   'Create'    layouts =   'Costing 2' fieldsnames =   'Valuation Class'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '449'   process =   'Create'    layouts =   'Costing 2' fieldsnames =   'Valuation Category'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '450'   process =   'Create'    layouts =   'Costing 2' fieldsnames =   'VC: Sales Order Stk'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '451'   process =   'Create'    layouts =   'Costing 2' fieldsnames =   'Proj. stk val. class'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '452'   process =   'Create'    layouts =   'Costing 2' fieldsnames =   'Price control' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '453'   process =   'Create'    layouts =   'Costing 2' fieldsnames =   'Current Period'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '454'   process =   'Create'    layouts =   'Costing 2' fieldsnames =   'Moving price'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '455'   process =   'Create'    layouts =   'Costing 2' fieldsnames =   'Standard price'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '456'   process =   'Create'    layouts =   'Costing 2' fieldsnames =   'Price unit'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '457'   process =   'Create'    layouts =   'Costing 2' fieldsnames =   'Currency'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =   ' '
i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '458'   process =   'Create'    layouts =   'WM Execution'  fieldsnames =   'Handling Indicator'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '459'   process =   'Create'    layouts =   'WM Execution'  fieldsnames =   'VH Material Group' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '460'   process =   'Create'    layouts =   'WM Execution'  fieldsnames =   'Whse Stor. Condition'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '461'   process =   'Create'    layouts =   'WM Execution'  fieldsnames =   'Standard HU Type'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '462'   process =   'Create'    layouts =   'WM Execution'  fieldsnames =   'Serial No. Profile'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '463'   process =   'Create'    layouts =   'WM Execution'  fieldsnames =   'Preferred UoM' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '464'   process =   'Create'    layouts =   'WM Execution'  fieldsnames =   'Pilferable '   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '465'   process =   'Create'    layouts =   'WM Execution'  fieldsnames =   'Relevant for HS (check box)'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '466'   process =   'Create'    layouts =   'WM Execution'  fieldsnames =   'Quarant. Per.' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '467'   process =   'Create'    layouts =   'WM Execution'  fieldsnames =   'Quality Inspec. Grp'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '468'   process =   'Create'    layouts =   'WM Execution'  fieldsnames =   'Logistics Unit of Measure' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '469'   process =   'Create'    layouts =   'WM Execution'  fieldsnames =   'CW Profile for CW Qty' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '470'   process =   'Create'    layouts =   'WM Execution'  fieldsnames =   'Catch-Weight-Relevant' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '471'   process =   'Create'    layouts =   'WM Execution'  fieldsnames =   'Catch Wt Tolerance Group'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '472'   process =   'Create'    layouts =   'WM Packinging' fieldsnames =   'Handling Unit Type'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '473'   process =   'Create'    layouts =   'WM Packinging' fieldsnames =   'Standard HU Type'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '474'   process =   'Create'    layouts =   'WM Packinging' fieldsnames =   'Maximum Capacity'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '475'   process =   'Create'    layouts =   'WM Packinging' fieldsnames =   'Overcapac. Tol. (%)'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '476'   process =   'Create'    layouts =   'WM Packinging' fieldsnames =   'Varb. Tare Weight (check box'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '477'   process =   'Create'    layouts =   'WM Packinging' fieldsnames =   'Max. Pack. Length' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '478'   process =   'Create'    layouts =   'WM Packinging' fieldsnames =   'Max. Pack. Width'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '479'   process =   'Create'    layouts =   'WM Packinging' fieldsnames =   'Max. Pack. Height' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '480'   process =   'Create'    layouts =   'WM Packinging' fieldsnames =   'Reference Product for Package Building'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory
=     'No'    customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '481'   process =   'Create'    layouts =   'WM Packinging' fieldsnames =   'Product Shape' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '482'   process =   'Create'    layouts =   'WM Packinging' fieldsnames =   'Product Orientation Profile'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '483'   process =   'Create'    layouts =   'WM Packinging' fieldsnames =   'Overhang Threshold [%]'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '484'   process =   'Create'    layouts =   'WM Packinging' fieldsnames =   'Bridge Threshold [%]'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '485'   process =   'Create'    layouts =   'WM Packinging' fieldsnames =   'Maximum Slope for Bridges [°]' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '486'   process =   'Create'    layouts =   'WM Packinging' fieldsnames =   'Absolute Height Threshold' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '487'   process =   'Create'    layouts =   'seg valuation data'    fieldsnames =   'Material'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '488'   process =   'Create'    layouts =   'seg valuation data'    fieldsnames =   'Descr.'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '489'   process =   'Create'    layouts =   'seg valuation data'    fieldsnames =   'Plant' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '490'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Advanced Planning '    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '491'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Not relevant for planning' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '492'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Scope Limitation'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '493'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Scope Profile' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '494'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Base Unit' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '495'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Plan Explosion'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '496'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Priority'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'    customlable =
' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '497'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'PP Plng Procedure '    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '498'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Planning Group'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '499'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Product Heuristic' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '500'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Planning Package'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '501'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Int. Sourcing Profile' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '502'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Conversion Rule'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '503'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'PP/DS Horizon' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '504'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Proposed Strategy '    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '505'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Min Passing Amt'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '506'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Pegging Strategy ' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '507'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Alert Threshold for Earliness' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =
'No'    customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '508'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Alert Threshold for Lateness'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =
'No'    customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '509'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Res. Network Name' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '510'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Product Alerts'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '511'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Fixed Pegging' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '512'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Avoid Alerts'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '513'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Use Total Receipts'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '514'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Use Total Stock'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '515'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Lot Size Unit' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '516'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Planning Calendar' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '517'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Targt Stk Lvl Method'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '518'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Safety Stock Method'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '519'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Period Factor' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '520'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Period Factor TDS' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '521'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Replenishment Lead Time'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '522'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Reorder Days Supply'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '523'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Target Days Supply'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '524'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Sfty Stk Meth Determination'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =
'No'    customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '525'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Use Period Factor (check box)' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =
'No'    customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '526'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Max. Days of Supply Active (check box)'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'
mandatory =     'No'    customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '527'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'GR Processing Time'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '528'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'GR Handlg Cap. Cons.'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '529'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'GI Processing Time'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '530'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'GI Handlg Cap. Cons.'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '531'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Shelf Life (Loc) ' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '532'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Loc. Shelf Life'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '533'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Loc. Matur. Time'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '534'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Min. Shelf Life'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '535'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Max. Shelf Life'   materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '536'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Procurement Costs' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '537'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Prod. Storage Cost'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '538'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Safety Stock Pen.' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '539'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Max. Days Supply Pen.'    materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '540'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Demand Class'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '541'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Delay Penalty' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '542'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Maximum Allowed Delay' materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )
(   rule_id =   '543'   process =   'Create'    layouts =   'Advanced Planning' fieldsnames =   'Penalty for Non-Delivery'  materialtype  =     'Raw '  industrysector =    'MM'    layoutsenabled =    'Yes'   visibility =    'Yes'   mandatory =     'No'
customlable =   ' ' i18 =   ' ' defaultvalues =     ' ' )



).

    " Call insert
   INSERT ztab_rule_engine FROM TABLE @lt_payload2.
*DELETE from ztab_rule_engine.
    " Console output
    out->write( |Inserted { lines( lt_payload ) } records into Rule Engine table| ).
    out->write( |Inserted { lines( lt_payload2 ) } records into Rule Engine table| ).

  ENDMETHOD.

  METHOD insert_layouts.

  ENDMETHOD.

ENDCLASS.

