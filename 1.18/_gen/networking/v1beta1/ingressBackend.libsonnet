{
  // TypedLocalObjectReference contains enough information to let you locate the typed referenced object inside the same namespace.
  resource: {
    withApiGroup(apiGroup): { resource+: { apiGroup: apiGroup } },
    withKind(kind): { resource+: { kind: kind } },
    withName(name): { resource+: { name: name } }
  },
  withServiceName(serviceName): { serviceName: serviceName },
  withServicePort(servicePort): { servicePort: servicePort },
  mixin: self
}