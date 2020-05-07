{
  // LocalObjectReference contains enough information to let you locate the referenced object inside the same namespace.
  secretRef: {
    withName(name): { secretRef+: { name: name } }
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