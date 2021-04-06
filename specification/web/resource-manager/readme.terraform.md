
## terraform

These settings apply only when `--terraform` is specified on the command line.

``` yaml $(terraform)
terraform:
    cli-name: web
    package-name: web
clear-output-folder: true
output-folder: $(terraform-output-folder)/web
```

``` yaml $(tag) == 'package-2020-12' && $(terraform)
gosdk-folder: services/web/mgmt/2020-12-01/web
```

``` yaml $(tag) == 'package-2020-09' && $(terraform)
gosdk-folder: services/web/mgmt/2020-09-01/web
```

``` yaml $(tag) == 'package-2020-06' && $(terraform)
gosdk-folder: services/web/mgmt/2020-06-01/web
```

``` yaml $(tag) == 'package-2019-08' && $(terraform)
gosdk-folder: services/web/mgmt/2019-08-01/web
```

``` yaml $(tag) == 'package-2018-02' && $(terraform)
gosdk-folder: services/web/mgmt/2018-02-01/web
```

``` yaml $(tag) == 'package-2016-09' && $(terraform)
gosdk-folder: services/web/mgmt/2016-09-01/web
```

``` yaml $(tag) == 'package-2015-08-preview' && $(terraform)
gosdk-folder: services/preview/web/mgmt/2015-08-01-preview/web
```
