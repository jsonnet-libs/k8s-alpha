{
  // new returns an instance of Lease
  new(name): {
    apiVersion: 'coordination.k8s.io/v1beta1',
    kind: 'Lease'
  } + self.metadata.withName(name=name),
  withMetadata(metadata): { metadata: metadata },
  withSpec(spec): { spec: spec },
  mixin: self
}