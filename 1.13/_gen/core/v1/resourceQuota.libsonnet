{
  // new returns an instance of Resourcequota
  new(name): {
    apiVersion: 'v1',
    kind: 'ResourceQuota'
  } + self.metadata.withName(name=name),
  withMetadata(metadata): { metadata: metadata },
  withSpec(spec): { spec: spec },
  mixin: self
}