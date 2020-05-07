{
  withFsType(fsType): { fsType: fsType },
  withGateway(gateway): { gateway: gateway },
  withProtectionDomain(protectionDomain): { protectionDomain: protectionDomain },
  withReadOnly(readOnly): { readOnly: readOnly },
  withSecretRef(secretRef): { secretRef: secretRef },
  withSslEnabled(sslEnabled): { sslEnabled: sslEnabled },
  withStorageMode(storageMode): { storageMode: storageMode },
  withStoragePool(storagePool): { storagePool: storagePool },
  withSystem(system): { system: system },
  withVolumeName(volumeName): { volumeName: volumeName },
  mixin: self
}