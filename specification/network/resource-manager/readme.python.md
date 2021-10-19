## Python

These settings apply only when `--track2` is specified on the command line.

``` yaml $(track2)
azure-arm: true
license-header: MICROSOFT_MIT_NO_VERSION
package-name: azure-mgmt-network
no-namespace-folders: true
package-version: 1.0.0b1
```

### Python multi-api

Generate all API versions currently shipped for this package

```yaml $(multiapi)
clear-output-folder: true
batch:
  - tag: package-2021-02-preview-only
  - multiapiscript: true
```

``` yaml $(multiapiscript)
output-folder: $(python-sdks-folder)/network/azure-mgmt-network/azure/mgmt/network/
clear-output-folder: false
perform-load: false
```

### Tag: package-2021-02-preview-only and python

These settings apply only when `--tag=package-2021-02-preview-only --python` is specified on the command line.
Please also specify `--python-sdks-folder=<path to the root directory of your azure-sdk-for-python clone>`.

``` yaml $(tag) == 'package-2021-02-preview-only'
namespace: azure.mgmt.network.v2021_02_01_preview
output-folder: $(python-sdks-folder)/network/azure-mgmt-network/azure/mgmt/network/v2021_02_01_preview
```

``` $(track2)
directive:
  - from: networkManagerActiveConfiguration.json
    where: $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/listActiveConnectivityConfigurations"]
    transform: delete $.parameters

  - from: networkManagerActiveConfiguration.json
    where: $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/listActiveConnectivityConfigurations"].post
    transform: >
        $.parameters = [
            {
              "$ref": "./network.json#/parameters/ApiVersionParameter"
            },
            {
              "$ref": "./network.json#/parameters/SubscriptionIdParameter"
            },
            {
              "$ref": "#/parameters/ResourceGroupNameParameter"
            },
            {
              "$ref": "#/parameters/NetworkManagerNameParameter"
            },
            {
              "name": "parameters",
              "in": "body",
              "required": true,
              "schema": {
                "$ref": "#/definitions/ActiveConfigurationParameter"
              },
              "description": "Active Configuration Parameter."
            }
       ]

  - from: networkManagerEffectiveConfiguration.json
    where: $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/listActiveConnectivityConfigurations"]
    transform: delete $.parameters

  - from: networkManagerEffectiveConfiguration.json
    where: $.paths["/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/listActiveConnectivityConfigurations"].post
    transform: >
        $.parameters = [
            {
              "$ref": "./network.json#/parameters/SubscriptionIdParameter"
            },
            {
              "$ref": "#/parameters/ResourceGroupNameParameter"
            },
            {
              "$ref": "#/parameters/VirtualNetworkNameParameter"
            },
            {
              "$ref": "./network.json#/parameters/ApiVersionParameter"
            },
            {
              "name": "parameters",
              "in": "body",
              "required": true,
              "schema": {
                "$ref": "./networkManagerGroup.json#/definitions/QueryRequestOptions"
              },
              "description": "Parameters supplied to list correct page."
            }
       ]
```