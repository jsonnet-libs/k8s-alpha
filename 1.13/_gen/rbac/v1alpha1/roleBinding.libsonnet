{
  // new returns an instance of Rolebinding
  new(name): {
    apiVersion: 'rbac.authorization.k8s.io/v1alpha1',
    kind: 'RoleBinding'
  } + self.metadata.withName(name=name),
  withMetadata(metadata): { metadata: metadata },
  withRoleRef(roleRef): { roleRef: roleRef },
  withSubjects(subjects): { subjects: if std.isArray(v=subjects) then subjects else [subjects] },
  withSubjectsMixin(subjects): { subjects+: if std.isArray(v=subjects) then subjects else [subjects] },
  mixin: self
}