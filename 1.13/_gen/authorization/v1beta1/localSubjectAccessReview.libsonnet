{
  // new returns an instance of Localsubjectaccessreview
  new(name): {
    apiVersion: 'authorization.k8s.io/v1beta1',
    kind: 'LocalSubjectAccessReview'
  } + self.metadata.withName(name=name),
  withMetadata(metadata): { metadata: metadata },
  withSpec(spec): { spec: spec },
  mixin: self
}