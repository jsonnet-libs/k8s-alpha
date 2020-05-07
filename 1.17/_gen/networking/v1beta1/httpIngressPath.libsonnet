{
  // IngressBackend describes all endpoints for a given service and port.
  backend: {
    withServiceName(serviceName): { backend+: { serviceName: serviceName } },
    withServicePort(servicePort): { backend+: { servicePort: servicePort } }
  },
  withPath(path): { path: path },
  mixin: self
}