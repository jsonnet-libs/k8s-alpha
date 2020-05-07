{
  // new returns an instance of Podsecuritypolicy
  new(name): {
    apiVersion: 'policy/v1beta1',
    kind: 'PodSecurityPolicy'
  } + self.metadata.withName(name=name),
  withMetadata(metadata): { metadata: metadata },
  withSpec(spec): { spec: spec },
  mixin: self
}