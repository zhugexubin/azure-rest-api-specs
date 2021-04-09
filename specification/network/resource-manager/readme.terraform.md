
## terraform

These settings apply only when `--terraform` is specified on the command line.

``` yaml $(terraform)
terraform:
    cli-name: network
    package-name: network
clear-output-folder: true
output-folder: $(terraform-output-folder)/network
```

``` yaml $(tag) == 'package-2020-11' && $(terraform)
gosdk-folder: services/network/mgmt/2020-11-01/network
```

``` yaml $(tag) == 'package-2020-08' && $(terraform)
gosdk-folder: services/network/mgmt/2020-08-01/network
```

``` yaml $(tag) == 'package-2020-07' && $(terraform)
gosdk-folder: services/network/mgmt/2020-07-01/network
```

``` yaml $(tag) == 'package-2020-06' && $(terraform)
gosdk-folder: services/network/mgmt/2020-06-01/network
```

``` yaml $(tag) == 'package-2020-05' && $(terraform)
gosdk-folder: services/network/mgmt/2020-05-01/network
```

``` yaml $(tag) == 'package-2020-04' && $(terraform)
gosdk-folder: services/network/mgmt/2020-04-01/network
```

``` yaml $(tag) == 'package-2020-03' && $(terraform)
gosdk-folder: services/network/mgmt/2020-03-01/network
```

``` yaml $(tag) == 'package-2019-12' && $(terraform)
gosdk-folder: services/network/mgmt/2019-12-01/network
```

``` yaml $(tag) == 'package-2019-11' && $(terraform)
gosdk-folder: services/network/mgmt/2019-11-01/network
```

``` yaml $(tag) == 'package-2019-09' && $(terraform)
gosdk-folder: services/network/mgmt/2019-09-01/network
```

``` yaml $(tag) == 'package-2019-08' && $(terraform)
gosdk-folder: services/network/mgmt/2019-08-01/network
```

``` yaml $(tag) == 'package-2019-07' && $(terraform)
gosdk-folder: services/network/mgmt/2019-07-01/network
```

``` yaml $(tag) == 'package-2019-06' && $(terraform)
gosdk-folder: services/network/mgmt/2019-06-01/network
```

``` yaml $(tag) == 'package-2019-04' && $(terraform)
gosdk-folder: services/network/mgmt/2019-04-01/network
```

``` yaml $(tag) == 'package-2019-02' && $(terraform)
gosdk-folder: services/network/mgmt/2019-02-01/network
```

``` yaml $(tag) == 'package-2018-12' && $(terraform)
gosdk-folder: services/network/mgmt/2018-12-01/network
```

``` yaml $(tag) == 'package-2018-11' && $(terraform)
gosdk-folder: services/network/mgmt/2018-11-01/network
```

``` yaml $(tag) == 'package-2018-10' && $(terraform)
gosdk-folder: services/network/mgmt/2018-10-01/network
```

``` yaml $(tag) == 'package-2018-08' && $(terraform)
gosdk-folder: services/network/mgmt/2018-08-01/network
```

``` yaml $(tag) == 'package-2018-07' && $(terraform)
gosdk-folder: services/network/mgmt/2018-07-01/network
```

``` yaml $(tag) == 'package-2018-06' && $(terraform)
gosdk-folder: services/network/mgmt/2018-06-01/network
```

``` yaml $(tag) == 'package-2018-04' && $(terraform)
gosdk-folder: services/network/mgmt/2018-04-01/network
```

``` yaml $(tag) == 'package-2018-02' && $(terraform)
gosdk-folder: services/network/mgmt/2018-02-01/network
```

``` yaml $(tag) == 'package-2018-01' && $(terraform)
gosdk-folder: services/network/mgmt/2018-01-01/network
```

``` yaml $(tag) == 'package-2017-11' && $(terraform)
gosdk-folder: services/network/mgmt/2017-11-01/network
```

``` yaml $(tag) == 'package-2017-10' && $(terraform)
gosdk-folder: services/network/mgmt/2017-10-01/network
```

``` yaml $(tag) == 'package-2017-09' && $(terraform)
gosdk-folder: services/network/mgmt/2017-09-01/network
```

``` yaml $(tag) == 'package-2017-08' && $(terraform)
gosdk-folder: services/network/mgmt/2017-08-01/network
```

``` yaml $(tag) == 'package-2017-06' && $(terraform)
gosdk-folder: services/network/mgmt/2017-06-01/network
```

``` yaml $(tag) == 'package-2017-03' && $(terraform)
gosdk-folder: services/network/mgmt/2017-03-01/network
```

``` yaml $(tag) == 'package-2016-12' && $(terraform)
gosdk-folder: services/network/mgmt/2016-12-01/network
```

``` yaml $(tag) == 'package-2016-09' && $(terraform)
gosdk-folder: services/network/mgmt/2016-09-01/network
```

``` yaml $(tag) == 'package-2016-06' && $(terraform)
gosdk-folder: services/network/mgmt/2016-06-01/network
```

``` yaml $(tag) == 'package-2016-03' && $(terraform)
gosdk-folder: services/network/mgmt/2016-03-30/network
```

``` yaml $(tag) == 'package-2015-06split' && $(terraform)
gosdk-folder: services/network/mgmt/2015-06-15/network
```

``` yaml $(tag) == 'package-2015-05-preview' && $(terraform)
gosdk-folder: services/preview/network/mgmt/2015-05-01-preview/network
```
