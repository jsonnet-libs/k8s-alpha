{
  // new returns an instance of Node
  new(name): {
    apiVersion: 'v1',
    kind: 'Node'
  } + self.metadata.withName(name=name),
  withMetadata(metadata): { metadata: metadata },
  withSpec(spec): { spec: spec },
  mixin: self
}