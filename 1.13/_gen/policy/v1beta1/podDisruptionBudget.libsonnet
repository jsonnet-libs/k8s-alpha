{
  // new returns an instance of Poddisruptionbudget
  new(name): {
    apiVersion: 'policy/v1beta1',
    kind: 'PodDisruptionBudget'
  } + self.metadata.withName(name=name),
  withMetadata(metadata): { metadata: metadata },
  withSpec(spec): { spec: spec },
  mixin: self
}