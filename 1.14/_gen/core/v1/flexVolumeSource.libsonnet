{
  // LocalObjectReference contains enough information to let you locate the referenced object inside the same namespace.
  secretRef: {
    withName(name): { secretRef+: { name: name } }
  },
  withDriver(driver): { driver: driver },
  withFsType(fsType): { fsType: fsType },
  withOptions(options): { options: options },
  withOptionsMixin(options): { options+: options },
  withReadOnly(readOnly): { readOnly: readOnly },
  mixin: self
}