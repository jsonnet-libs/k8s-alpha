{
  // new returns an instance of Replicationcontroller
  new(name): {
    apiVersion: 'v1',
    kind: 'ReplicationController'
  } + self.metadata.withName(name=name),
  withMetadata(metadata): { metadata: metadata },
  withSpec(spec): { spec: spec },
  mixin: self
}