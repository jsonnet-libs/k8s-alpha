{
  // ObjectReference contains enough information to let you inspect or modify the referred object.
  secretRef: {
    withFieldPath(fieldPath): { secretRef+: { fieldPath: fieldPath } },
    withKind(kind): { secretRef+: { kind: kind } },
    withName(name): { secretRef+: { name: name } },
    withNamespace(namespace): { secretRef+: { namespace: namespace } },
    withResourceVersion(resourceVersion): { secretRef+: { resourceVersion: resourceVersion } },
    withUid(uid): { secretRef+: { uid: uid } }
  },
  withFsType(fsType): { fsType: fsType },
  withReadOnly(readOnly): { readOnly: readOnly },
  withVolumeName(volumeName): { volumeName: volumeName },
  withVolumeNamespace(volumeNamespace): { volumeNamespace: volumeNamespace },
  mixin: self
}