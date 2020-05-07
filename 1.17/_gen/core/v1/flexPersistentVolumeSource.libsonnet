{
  // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
  secretRef: {
    withName(name): { secretRef+: { name: name } },
    withNamespace(namespace): { secretRef+: { namespace: namespace } }
  },
  withDriver(driver): { driver: driver },
  withFsType(fsType): { fsType: fsType },
  withOptions(options): { options: options },
  withOptionsMixin(options): { options+: options },
  withReadOnly(readOnly): { readOnly: readOnly },
  mixin: self
}