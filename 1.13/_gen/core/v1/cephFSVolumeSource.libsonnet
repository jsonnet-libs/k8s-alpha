{
  withMonitors(monitors): { monitors: if std.isArray(v=monitors) then monitors else [monitors] },
  withMonitorsMixin(monitors): { monitors+: if std.isArray(v=monitors) then monitors else [monitors] },
  withPath(path): { path: path },
  withReadOnly(readOnly): { readOnly: readOnly },
  withSecretFile(secretFile): { secretFile: secretFile },
  withSecretRef(secretRef): { secretRef: secretRef },
  withUser(user): { user: user },
  mixin: self
}