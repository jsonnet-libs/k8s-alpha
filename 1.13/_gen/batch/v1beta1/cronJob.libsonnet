{
  // new returns an instance of Cronjob
  new(name): {
    apiVersion: 'batch/v1beta1',
    kind: 'CronJob'
  } + self.metadata.withName(name=name),
  withMetadata(metadata): { metadata: metadata },
  withSpec(spec): { spec: spec },
  mixin: self
}