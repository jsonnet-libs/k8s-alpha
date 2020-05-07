{
  // new returns an instance of Scale
  new(name): {
    apiVersion: 'apps/v1beta1',
    kind: 'Scale'
  } + self.metadata.withName(name=name),
  withMetadata(metadata): { metadata: metadata },
  withSpec(spec): { spec: spec },
  mixin: self
}