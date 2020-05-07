{
  // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
  controllerExpandSecretRef: {
    withName(name): { controllerExpandSecretRef+: { name: name } },
    withNamespace(namespace): { controllerExpandSecretRef+: { namespace: namespace } }
  },
  // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
  controllerPublishSecretRef: {
    withName(name): { controllerPublishSecretRef+: { name: name } },
    withNamespace(namespace): { controllerPublishSecretRef+: { namespace: namespace } }
  },
  // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
  nodePublishSecretRef: {
    withName(name): { nodePublishSecretRef+: { name: name } },
    withNamespace(namespace): { nodePublishSecretRef+: { namespace: namespace } }
  },
  // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
  nodeStageSecretRef: {
    withName(name): { nodeStageSecretRef+: { name: name } },
    withNamespace(namespace): { nodeStageSecretRef+: { namespace: namespace } }
  },
  withDriver(driver): { driver: driver },
  withFsType(fsType): { fsType: fsType },
  withReadOnly(readOnly): { readOnly: readOnly },
  withVolumeAttributes(volumeAttributes): { volumeAttributes: volumeAttributes },
  withVolumeAttributesMixin(volumeAttributes): { volumeAttributes+: volumeAttributes },
  withVolumeHandle(volumeHandle): { volumeHandle: volumeHandle },
  mixin: self
}