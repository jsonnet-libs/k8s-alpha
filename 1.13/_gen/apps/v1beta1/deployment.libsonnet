{
  // new returns an instance of Deployment
  new(name): {
    apiVersion: 'apps/v1beta1',
    kind: 'Deployment'
  } + self.metadata.withName(name=name),
  withMetadata(metadata): { metadata: metadata },
  withSpec(spec): { spec: spec },
  mixin: self
}