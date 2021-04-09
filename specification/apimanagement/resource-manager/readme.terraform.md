
## terraform

These settings apply only when `--terraform` is specified on the command line.

``` yaml $(terraform)
terraform:
    cli-name: apimanagement
    package-name: apimanagement
clear-output-folder: true
output-folder: $(terraform-output-folder)/apimanagement
```

``` yaml $(tag) == 'package-2020-12' && $(terraform)
gosdk-folder: services/apimanagement/mgmt/2020-12-01/apimanagement
```

``` yaml $(tag) == 'package-2019-12' && $(terraform)
gosdk-folder: services/apimanagement/mgmt/2019-12-01/apimanagement
```

``` yaml $(tag) == 'package-preview-2019-12' && $(terraform)
gosdk-folder: services/preview/apimanagement/mgmt/2019-12-01-preview/apimanagement
```

``` yaml $(tag) == 'package-2019-01' && $(terraform)
gosdk-folder: services/apimanagement/mgmt/2019-01-01/apimanagement
```

``` yaml $(tag) == 'package-2018-06-preview' && $(terraform)
gosdk-folder: services/preview/apimanagement/mgmt/2018-06-01-preview/apimanagement
```

``` yaml $(tag) == 'package-2018-01' && $(terraform)
gosdk-folder: services/apimanagement/mgmt/2018-01-01/apimanagement
```

``` yaml $(tag) == 'package-2017-03' && $(terraform)
gosdk-folder: services/apimanagement/mgmt/2017-03-01/apimanagement
```

``` yaml $(tag) == 'package-2016-10' && $(terraform)
gosdk-folder: services/apimanagement/mgmt/2016-10-10/apimanagement
```

``` yaml $(tag) == 'package-2016-07' && $(terraform)
gosdk-folder: services/apimanagement/mgmt/2016-07-07/apimanagement
```
