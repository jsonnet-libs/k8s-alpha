{
  // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
  secretRef: {
    withName(name): { secretRef+: { name: name } },
    withNamespace(namespace): { secretRef+: { namespace: namespace } }
  },
  withMonitors(monitors): { monitors: if std.isArray(v=monitors) then monitors else [monitors] },
  withMonitorsMixin(monitors): { monitors+: if std.isArray(v=monitors) then monitors else [monitors] },
  withPath(path): { path: path },
  withReadOnly(readOnly): { readOnly: readOnly },
  withSecretFile(secretFile): { secretFile: secretFile },
  withUser(user): { user: user },
  mixin: self
}