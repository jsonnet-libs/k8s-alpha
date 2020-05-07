{
  // LocalObjectReference contains enough information to let you locate the referenced object inside the same namespace.
  nodePublishSecretRef: {
    withName(name): { nodePublishSecretRef+: { name: name } }
  },
  withDriver(driver): { driver: driver },
  withFsType(fsType): { fsType: fsType },
  withReadOnly(readOnly): { readOnly: readOnly },
  withVolumeAttributes(volumeAttributes): { volumeAttributes: volumeAttributes },
  withVolumeAttributesMixin(volumeAttributes): { volumeAttributes+: volumeAttributes },
  mixin: self
}