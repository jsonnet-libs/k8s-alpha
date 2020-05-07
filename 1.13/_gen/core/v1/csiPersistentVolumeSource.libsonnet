{
  withControllerPublishSecretRef(controllerPublishSecretRef): { controllerPublishSecretRef: controllerPublishSecretRef },
  withDriver(driver): { driver: driver },
  withFsType(fsType): { fsType: fsType },
  withNodePublishSecretRef(nodePublishSecretRef): { nodePublishSecretRef: nodePublishSecretRef },
  withNodeStageSecretRef(nodeStageSecretRef): { nodeStageSecretRef: nodeStageSecretRef },
  withReadOnly(readOnly): { readOnly: readOnly },
  withVolumeAttributes(volumeAttributes): { volumeAttributes: volumeAttributes },
  withVolumeAttributesMixin(volumeAttributes): { volumeAttributes+: volumeAttributes },
  withVolumeHandle(volumeHandle): { volumeHandle: volumeHandle },
  mixin: self
}