CLASS lhc_ZCDS_RULE_ENGINE DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zcds_rule_engine RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR zcds_rule_engine RESULT result.



ENDCLASS.

CLASS lhc_ZCDS_RULE_ENGINE IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

ENDCLASS.

CLASS lsc_ZCDS_RULE_ENGINE DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS adjust_numbers REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_ZCDS_RULE_ENGINE IMPLEMENTATION.

  METHOD adjust_numbers.

  SELECT FROM ztab_rule_engine
  FIELDS MAX( rule_id )
  INTO @DATA(ld_max_ruleid).

LOOP AT mapped-zcds_rule_engine REFERENCE INTO DATA(lr_partner).
  ld_max_ruleid += 1.
  lr_partner->rule_id = ld_max_ruleid.
ENDLOOP.

  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.
