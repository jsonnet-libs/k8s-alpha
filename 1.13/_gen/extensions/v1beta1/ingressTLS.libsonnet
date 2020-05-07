{
  withHosts(hosts): { hosts: if std.isArray(v=hosts) then hosts else [hosts] },
  withHostsMixin(hosts): { hosts+: if std.isArray(v=hosts) then hosts else [hosts] },
  withSecretName(secretName): { secretName: secretName },
  mixin: self
}