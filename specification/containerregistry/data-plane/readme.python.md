## Python

These settings apply only when `--python` is specified on the command line.
Please also specify `--python-sdks-folder=<path to the root directory of your azure-sdk-for-python clone>`.
Use `--python-mode=update` if you already have a setup.py and just want to update the code itself.

``` yaml $(python)
python-mode: create
python:
  input-file: https://raw.githubusercontent.com/Azure/azure-sdk-for-js/e40f55d5fa64d177c0267b52129c77aa353f95d8/sdk/containerregistry/container-registry/swagger/containerregistry.json
  output-folder: "$(python-sdks-folder)/containerregistry/azure-containerregistry/azure/containerregistry/_generated"
```
``` yaml $(python) && $(python-mode) == 'update'
python:
  no-namespace-folders: true
  output-folder: $(python-sdks-folder)/containerregistry/azure-containerregistry/azure/containerregistry
```
``` yaml $(python) && $(python-mode) == 'create'
python:
  basic-setup-py: true
  output-folder: $(python-sdks-folder)/containerregistry/azure-containerregistry
```