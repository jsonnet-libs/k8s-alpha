{
  // new returns an instance of Ingress
  new(name): {
    apiVersion: 'extensions/v1beta1',
    kind: 'Ingress'
  } + self.metadata.withName(name=name),
  withMetadata(metadata): { metadata: metadata },
  withSpec(spec): { spec: spec },
  mixin: self
}