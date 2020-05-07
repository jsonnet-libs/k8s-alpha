{
  // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
  secretRef: {
    withName(name): { secretRef+: { name: name } },
    withNamespace(namespace): { secretRef+: { namespace: namespace } }
  },
  withFsType(fsType): { fsType: fsType },
  withImage(image): { image: image },
  withKeyring(keyring): { keyring: keyring },
  withMonitors(monitors): { monitors: if std.isArray(v=monitors) then monitors else [monitors] },
  withMonitorsMixin(monitors): { monitors+: if std.isArray(v=monitors) then monitors else [monitors] },
  withPool(pool): { pool: pool },
  withReadOnly(readOnly): { readOnly: readOnly },
  withUser(user): { user: user },
  mixin: self
}