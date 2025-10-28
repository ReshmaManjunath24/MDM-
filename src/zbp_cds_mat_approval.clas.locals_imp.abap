CLASS lhc_ZCDS_MAT_APPROVAL DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zcds_mat_approval RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR zcds_mat_approval RESULT result.

ENDCLASS.

CLASS lhc_ZCDS_MAT_APPROVAL IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

ENDCLASS.

CLASS lsc_ZCDS_MAT_APPROVAL DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS adjust_numbers REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_ZCDS_MAT_APPROVAL IMPLEMENTATION.

  METHOD adjust_numbers.

  SELECT FROM ztab_approval
  FIELDS MAX( approverid )
  INTO @DATA(ld_max_approverid).

LOOP AT mapped-zcds_mat_approval REFERENCE INTO DATA(lr_approver).


  ld_max_approverid += 1.
  lr_approver->ApproverId = ld_max_approverid.

ENDLOOP.

  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.
