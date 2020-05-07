{
  // new returns an instance of Namespace
  new(name): {
    apiVersion: 'v1',
    kind: 'Namespace'
  } + self.metadata.withName(name=name),
  withMetadata(metadata): { metadata: metadata },
  withSpec(spec): { spec: spec },
  mixin: self
}