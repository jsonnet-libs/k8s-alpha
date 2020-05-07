{
  // new returns an instance of Networkpolicy
  new(name): {
    apiVersion: 'networking.k8s.io/v1',
    kind: 'NetworkPolicy'
  } + self.metadata.withName(name=name),
  withMetadata(metadata): { metadata: metadata },
  withSpec(spec): { spec: spec },
  mixin: self
}