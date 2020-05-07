{
  // LocalObjectReference contains enough information to let you locate the referenced object inside the same namespace.
  secretRef: {
    withName(name): { secretRef+: { name: name } }
  },
  withMonitors(monitors): { monitors: if std.isArray(v=monitors) then monitors else [monitors] },
  withMonitorsMixin(monitors): { monitors+: if std.isArray(v=monitors) then monitors else [monitors] },
  withPath(path): { path: path },
  withReadOnly(readOnly): { readOnly: readOnly },
  withSecretFile(secretFile): { secretFile: secretFile },
  withUser(user): { user: user },
  mixin: self
}