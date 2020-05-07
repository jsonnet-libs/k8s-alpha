{
  // new returns an instance of Service
  new(name): {
    apiVersion: 'v1',
    kind: 'Service'
  } + self.metadata.withName(name=name),
  withMetadata(metadata): { metadata: metadata },
  withSpec(spec): { spec: spec },
  mixin: self
}