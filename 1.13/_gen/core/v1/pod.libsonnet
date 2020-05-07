{
  // new returns an instance of Pod
  new(name): {
    apiVersion: 'v1',
    kind: 'Pod'
  } + self.metadata.withName(name=name),
  withMetadata(metadata): { metadata: metadata },
  withSpec(spec): { spec: spec },
  mixin: self
}