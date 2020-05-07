{
  // new returns an instance of Selfsubjectaccessreview
  new(name): {
    apiVersion: 'authorization.k8s.io/v1',
    kind: 'SelfSubjectAccessReview'
  } + self.metadata.withName(name=name),
  withMetadata(metadata): { metadata: metadata },
  withSpec(spec): { spec: spec },
  mixin: self
}