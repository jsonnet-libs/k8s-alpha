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
  withPath(path): { path: path },
  withPathType(pathType): { pathType: pathType },
  mixin: self
}