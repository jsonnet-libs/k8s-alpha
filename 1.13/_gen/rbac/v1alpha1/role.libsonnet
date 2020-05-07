{
  // new returns an instance of Role
  new(name): {
    apiVersion: 'rbac.authorization.k8s.io/v1alpha1',
    kind: 'Role'
  } + self.metadata.withName(name=name),
  withMetadata(metadata): { metadata: metadata },
  withRules(rules): { rules: if std.isArray(v=rules) then rules else [rules] },
  withRulesMixin(rules): { rules+: if std.isArray(v=rules) then rules else [rules] },
  mixin: self
}