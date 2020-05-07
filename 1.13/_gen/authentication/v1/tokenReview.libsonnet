{
  // new returns an instance of Tokenreview
  new(name): {
    apiVersion: 'authentication.k8s.io/v1',
    kind: 'TokenReview'
  } + self.metadata.withName(name=name),
  withMetadata(metadata): { metadata: metadata },
  withSpec(spec): { spec: spec },
  mixin: self
}