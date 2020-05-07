{
  // new returns an instance of Limitrange
  new(name): {
    apiVersion: 'v1',
    kind: 'LimitRange'
  } + self.metadata.withName(name=name),
  withMetadata(metadata): { metadata: metadata },
  withSpec(spec): { spec: spec },
  mixin: self
}