{
  // LocalObjectReference contains enough information to let you locate the referenced object inside the same namespace.
  secretRef: {
    withName(name): { secretRef+: { name: name } }
  },
  withFsType(fsType): { fsType: fsType },
  withGateway(gateway): { gateway: gateway },
  withProtectionDomain(protectionDomain): { protectionDomain: protectionDomain },
  withReadOnly(readOnly): { readOnly: readOnly },
  withSslEnabled(sslEnabled): { sslEnabled: sslEnabled },
  withStorageMode(storageMode): { storageMode: storageMode },
  withStoragePool(storagePool): { storagePool: storagePool },
  withSystem(system): { system: system },
  withVolumeName(volumeName): { volumeName: volumeName },
  mixin: self
}