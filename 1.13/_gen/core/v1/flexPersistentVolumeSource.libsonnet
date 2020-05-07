{
  withDriver(driver): { driver: driver },
  withFsType(fsType): { fsType: fsType },
  withOptions(options): { options: options },
  withOptionsMixin(options): { options+: options },
  withReadOnly(readOnly): { readOnly: readOnly },
  withSecretRef(secretRef): { secretRef: secretRef },
  mixin: self
}