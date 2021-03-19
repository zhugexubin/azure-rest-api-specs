## CLI

These settings don't need to apply `--cli` on the command line.
``` yaml
batch:
    - tag: package-2020-07-01-preview
    - tag: package-2021-02-01-preview
    # - az-multiapi: true
```

``` yaml $(tag) == 'package-2020-07-01-preview'
output-folder: /tmp/aztest/adp/2020-07-01-preview
```

``` yaml $(tag) == 'package-2021-02-01-preview'
output-folder: /tmp/aztest/adp/2021-02-01-preview
```