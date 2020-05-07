{
  // new returns an instance of Auditsink
  new(name): {
    apiVersion: 'auditregistration.k8s.io/v1alpha1',
    kind: 'AuditSink'
  } + self.metadata.withName(name=name),
  withMetadata(metadata): { metadata: metadata },
  withSpec(spec): { spec: spec },
  mixin: self
}