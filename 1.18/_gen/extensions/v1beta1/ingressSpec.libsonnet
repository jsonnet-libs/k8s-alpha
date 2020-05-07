{
  // IngressBackend describes all endpoints for a given service and port.
  backend: {
    // TypedLocalObjectReference contains enough information to let you locate the typed referenced object inside the same namespace.
    resource: {
      withApiGroup(apiGroup): { backend+: { resource+: { apiGroup: apiGroup } } },
      withKind(kind): { backend+: { resource+: { kind: kind } } },
      withName(name): { backend+: { resource+: { name: name } } }
    },
    withServiceName(serviceName): { backend+: { serviceName: serviceName } },
    withServicePort(servicePort): { backend+: { servicePort: servicePort } }
  },
  withIngressClassName(ingressClassName): { ingressClassName: ingressClassName },
  withRules(rules): { rules: if std.isArray(v=rules) then rules else [rules] },
  withRulesMixin(rules): { rules+: if std.isArray(v=rules) then rules else [rules] },
  withTls(tls): { tls: if std.isArray(v=tls) then tls else [tls] },
  withTlsMixin(tls): { tls+: if std.isArray(v=tls) then tls else [tls] },
  mixin: self
}