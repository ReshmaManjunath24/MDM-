@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for Material Rule Engine'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_RULE_ENGINE as select from ztab_rule_engine

{
  key rule_id,
       process ,
     materialtype ,
     industrysector ,
     fieldsnames ,
     layouts ,
    visibility ,
    mandatory ,
    customlable ,
    i18 ,
    defaultvalues,
    layoutsenabled

}
