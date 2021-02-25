
## trenton

These settings apply only when `--trenton` is specified on the command line.

``` yaml $(trenton)
trenton:
    cli-name: operationalinsights
    package-name: operationalinsights
clear-output-folder: true
output-folder: $(trenton-output-folder)/operationalinsights
resources: Workspaces
```

``` yaml $(tag) == 'package-2015-03' && $(trenton)
gosdk-folder: services/operationalinsights/mgmt/2015-03-20/operationalinsights
```

``` yaml $(tag) == 'package-2015-11-preview' && $(trenton)
gosdk-folder: services/preview/operationalinsights/mgmt/2015-11-01-preview/operationalinsights
```

``` yaml $(tag) == 'package-2020-03-preview' && $(trenton)
gosdk-folder: services/preview/operationalinsights/mgmt/2020-03-01-preview/operationalinsights
```

``` yaml $(tag) == 'package-2020-10' && $(trenton)
gosdk-folder: services/operationalinsights/mgmt/2020-10-01/operationalinsights
```

``` yaml $(tag) == 'package-2020-08' && $(trenton)
gosdk-folder: services/operationalinsights/mgmt/2020-08-01/operationalinsights
```

``` yaml $(trenton)
overrides:
  - where:
      property: /parameters/type
    set:
      - Hidden: true
  - where:
      property: //type
    set:
      - Hidden: true
  - where:
      property: /parameters/properties/publicNetworkAccessForIngestion
    set:
      - EnumValues/0/GoEnumMemberName: Enabled
      - EnumValues/1/GoEnumMemberName: Disabled
      - DefaultValue: true
  - where:
      property: //properties/publicNetworkAccessForIngestion
    set:
      - EnumValues/0/GoEnumMemberName: Enabled
      - EnumValues/1/GoEnumMemberName: Disabled
      - DefaultValue: true
  - where:
      property: /parameters/properties/publicNetworkAccessForQuery
    set:
      - EnumValues/0/GoEnumMemberName: Enabled
      - EnumValues/1/GoEnumMemberName: Disabled
      - DefaultValue: true
  - where:
      property: //properties/publicNetworkAccessForQuery
    set:
      - EnumValues/0/GoEnumMemberName: Enabled
      - EnumValues/1/GoEnumMemberName: Disabled
      - DefaultValue: true
  - where:
      property: /parameters/properties/sku
    set:
      - DiffSuppressFunc: "suppress.CaseDifference" 
  - where:
      property: dataExportId
    set:
      - Hidden: true
  - where:
      property: createdDate
    set:
      - Hidden: true
  - where:
      property: lastModifiedDate
    set:
      - Hidden: true
  - where:
      property: capacityReservationLevel
    set:
      - Hidden: true
  - where:
      property: metaData
    set:
      - Hidden: true
  - where:
      property: workspaceCapping
    set:
      - ResourceSchema/Computed: true
```
