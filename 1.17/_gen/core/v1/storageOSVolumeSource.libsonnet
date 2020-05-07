{
  // LocalObjectReference contains enough information to let you locate the referenced object inside the same namespace.
  secretRef: {
    withName(name): { secretRef+: { name: name } }
  },
  withFsType(fsType): { fsType: fsType },
  withReadOnly(readOnly): { readOnly: readOnly },
  withVolumeName(volumeName): { volumeName: volumeName },
  withVolumeNamespace(volumeNamespace): { volumeNamespace: volumeNamespace },
  mixin: self
}