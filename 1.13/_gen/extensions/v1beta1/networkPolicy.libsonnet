{
  // new returns an instance of Networkpolicy
  new(name): {
    apiVersion: 'extensions/v1beta1',
    kind: 'NetworkPolicy'
  } + self.metadata.withName(name=name),
  withMetadata(metadata): { metadata: metadata },
  withSpec(spec): { spec: spec },
  mixin: self
}