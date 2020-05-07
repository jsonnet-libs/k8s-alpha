{
  // new returns an instance of Job
  new(name): {
    apiVersion: 'batch/v1',
    kind: 'Job'
  } + self.metadata.withName(name=name),
  withMetadata(metadata): { metadata: metadata },
  withSpec(spec): { spec: spec },
  mixin: self
}