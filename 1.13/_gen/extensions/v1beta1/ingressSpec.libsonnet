{
  withBackend(backend): { backend: backend },
  withRules(rules): { rules: if std.isArray(v=rules) then rules else [rules] },
  withRulesMixin(rules): { rules+: if std.isArray(v=rules) then rules else [rules] },
  withTls(tls): { tls: if std.isArray(v=tls) then tls else [tls] },
  withTlsMixin(tls): { tls+: if std.isArray(v=tls) then tls else [tls] },
  mixin: self
}