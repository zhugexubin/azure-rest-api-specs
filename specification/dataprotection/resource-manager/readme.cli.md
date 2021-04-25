## For CLI common settings
``` yaml

# customize library used in extension. azure.cli.core by default
# cli-core-lib: azure.cli.core
# cli:
#     naming:
#         default:
#             singularize:
#               - operationGroup
#               - operation
#     split-operation:
#         cli-split-operation-enabled: true
#         cli-split-operation-extend-poly-resource: true
#     cli-directive:
#         - where:
#             operation: CheckNameAvailability
#           hidden: true
#         - where:
#             operationGroup: Operations
#             operation: List
#           hidden: true
#         - where:
#             op: CreateOrUpdate
#           split-operation-names:
#             - Create
#             - Update
#         - where:
#             group: OperationResult
#             op: Get
#           hidden: true
#         - where:
#             group: GetOperationStatus
#           hidden: true
#         - where:
#             group: GetOperationResultPatch
#           hidden: true
#         - where:
#             group: CheckFeatureSupport
#           hidden: true
#         - where:
#             group: ExportJobsOperationResult
#           hidden: true
#         - where:
#             group: ExportJobs
#           hidden: true
#         - where:
#             group: BackupInstances
#             op: ValidateForBackup
#           hidden: true
#         - where:
#             group: BackupInstances
#             op: ValidateRestore
#           hidden: true
#         - where:
#             group: FindRestorableTimeRanges
#           hidden: true
#         - where:
#             group: BackupInstances
#             op: TriggerRestore
#             param: parameters
#           poly-resource: true
#         # TriggerRestore#AzureBackupRecoveryTimeBasedRestoreRequest
#         - where:
#            group: BackupInstances
#            op: TriggerRestore#AzureBackupRecoveryTimeBasedRestoreRequest
#            param: parameters
#           cli-flatten: true
#         - where:
#            group: BackupInstances
#            op: TriggerRestore#AzureBackupRecoveryPointBasedRestoreRequest
#            param: parameters
#           cli-flatten: true
#         - where:
#            group: BackupInstances
#            op: TriggerRestore#AzureBackupRestoreWithRehydrationRequest
#            param: parameters
#           cli-flatten: true
#         - where:
#             group: BackupInstances
#             op: TriggerRestore#AzureBackupRecoveryTimeBasedRestoreRequest
#             param: restoreTargetInfo
#           poly-resource: true
#         # - where:
#         #    group: BackupInstances
#         #    op: TriggerRestore#AzureBackupRecoveryPointBasedRestoreRequest
#         #    param: restoreTargetInfo
#         #   poly-resource: true
#         # - where:
#         #    group: BackupInstances
#         #    op: TriggerRestore#AzureBackupRestoreWithRehydrationRequest
#         #    param: restoreTargetInfo
#         #   poly-resource: true
#         - where:
#             group: BackupInstances
#             op: TriggerRestore#AzureBackupRecoveryTimeBasedRestoreRequest#*
#             param: restoreTargetInfo
#           cli-flatten: true
#         # - where:
#         #    group: BackupInstances
#         #    op: TriggerRestore#AzureBackupRecoveryPointBasedRestoreRequest#*
#         #    param: restoreTargetInfo
#         #   cli-flatten: true
#         # - where:
#         #    group: BackupInstances
#         #    op: TriggerRestore#AzureBackupRestoreWithRehydrationRequest#*
#         #    param: restoreTargetInfo
#         #   cli-flatten: true
#     flatten:
#         cli-flatten-set-enabled: true
#         cli-flatten-payload: true
#         cli-flatten-schema: false
#         cli-flatten-all-overwrite-swagger: false
```