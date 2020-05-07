{
  // new returns an instance of Selfsubjectrulesreview
  new(name): {
    apiVersion: 'authorization.k8s.io/v1',
    kind: 'SelfSubjectRulesReview'
  } + self.metadata.withName(name=name),
  withMetadata(metadata): { metadata: metadata },
  withSpec(spec): { spec: spec },
  mixin: self
}