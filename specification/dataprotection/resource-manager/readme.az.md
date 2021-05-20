## AZ

These settings apply only when `--az` is specified on the command line.

``` yaml $(az)
az:
  extensions: dataprotection
  namespace: azure.mgmt.dataprotection
  package-name: azure-mgmt-dataprotection
az-output-folder: $(azure-cli-extension-folder)/src/dataprotection
python-sdk-output-folder: "$(az-output-folder)/azext_dataprotection/vendored_sdks/dataprotection"


cli:
    cli-directive:
        - where:
           group: OperationResult
           op: Get
          hidden: true
        - where:
           group: GetOperationStatus
          hidden: true
        - where:
           group: GetOperationResultPatch
          hidden: true
        - where:
           group: CheckFeatureSupport
          hidden: true
        - where:
           group: ExportJobsOperationResult
          hidden: true
        - where:
           group: ExportJobs
          hidden: true
        - where:
           group: BackupInstances
           op: ValidateForBackup
          hidden: true
        - where:
           group: BackupInstances
           op: ValidateRestore
          hidden: true
        - where:
           group: FindRestorableTimeRanges
          hidden: true
        # - where:
        #    group: BackupInstances
        #    op: TriggerRestore
        #    param: parameters
        #   cli-flatten: true
        - where:
           group: BackupInstances
           op: TriggerRestore
           param: parameters
          poly-resource: true
        # TriggerRestore#AzureBackupRecoveryTimeBasedRestoreRequest
        # - where:
        #    group: BackupInstances
        #    op: TriggerRestore#AzureBackupRecoveryTimeBasedRestoreRequest
        #    param: parameters
        #   cli-flatten: true
        # - where:
        #    group: BackupInstances
        #    op: TriggerRestore#AzureBackupRecoveryPointBasedRestoreRequest
        #    param: parameters
        #   cli-flatten: true
        # - where:
        #    group: BackupInstances
        #    op: TriggerRestore#AzureBackupRestoreWithRehydrationRequest
        #    param: parameters
        #   cli-flatten: true
        - where:
           group: BackupInstances
           op: TriggerRestore#AzureBackupRecoveryTimeBasedRestoreRequest
           param: restoreTargetInfo
          poly-resource: true
        - where:
           group: BackupInstances
           op: TriggerRestore#AzureBackupRecoveryPointBasedRestoreRequest
           param: restoreTargetInfo
          poly-resource: true
        - where:
           group: BackupInstances
           op: TriggerRestore#AzureBackupRestoreWithRehydrationRequest
           param: restoreTargetInfo
          poly-resource: true
        # - where:
        #    group: BackupInstances
        #    op: TriggerRestore#AzureBackupRecoveryTimeBasedRestoreRequest#*
        #    param: restoreTargetInfo
        #   cli-flatten: true
        # - where:
        #    group: BackupInstances
        #    op: TriggerRestore#AzureBackupRecoveryPointBasedRestoreRequest#*
        #    param: restoreTargetInfo
        #   cli-flatten: true
        # - where:
        #    group: BackupInstances
        #    op: TriggerRestore#AzureBackupRestoreWithRehydrationRequest#*
        #    param: restoreTargetInfo
        #   cli-flatten: true
```
