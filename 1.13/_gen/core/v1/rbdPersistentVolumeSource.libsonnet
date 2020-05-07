{
  withFsType(fsType): { fsType: fsType },
  withImage(image): { image: image },
  withKeyring(keyring): { keyring: keyring },
  withMonitors(monitors): { monitors: if std.isArray(v=monitors) then monitors else [monitors] },
  withMonitorsMixin(monitors): { monitors+: if std.isArray(v=monitors) then monitors else [monitors] },
  withPool(pool): { pool: pool },
  withReadOnly(readOnly): { readOnly: readOnly },
  withSecretRef(secretRef): { secretRef: secretRef },
  withUser(user): { user: user },
  mixin: self
}