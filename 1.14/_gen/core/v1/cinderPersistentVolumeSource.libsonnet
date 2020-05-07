{
  // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
  secretRef: {
    withName(name): { secretRef+: { name: name } },
    withNamespace(namespace): { secretRef+: { namespace: namespace } }
  },
  withFsType(fsType): { fsType: fsType },
  withReadOnly(readOnly): { readOnly: readOnly },
  withVolumeID(volumeID): { volumeID: volumeID },
  mixin: self
}