{
  // new returns an instance of Daemonset
  new(name): {
    apiVersion: 'apps/v1beta2',
    kind: 'DaemonSet'
  } + self.metadata.withName(name=name),
  withMetadata(metadata): { metadata: metadata },
  withSpec(spec): { spec: spec },
  mixin: self
}