{
  // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
  secretRef: {
    withName(name): { secretRef+: { name: name } },
    withNamespace(namespace): { secretRef+: { namespace: namespace } }
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