{
  // ServiceReference holds a reference to Service.legacy.k8s.io
  service: {
    withName(name): { service+: { name: name } },
    withNamespace(namespace): { service+: { namespace: namespace } },
    withPath(path): { service+: { path: path } }
  },
  withCaBundle(caBundle): { caBundle: caBundle },
  withUrl(url): { url: url },
  mixin: self
}