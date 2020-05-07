{
  withFsType(fsType): { fsType: fsType },
  withReadOnly(readOnly): { readOnly: readOnly },
  withSecretRef(secretRef): { secretRef: secretRef },
  withVolumeName(volumeName): { volumeName: volumeName },
  withVolumeNamespace(volumeNamespace): { volumeNamespace: volumeNamespace },
  mixin: self
}