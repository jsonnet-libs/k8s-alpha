{
  // GroupSubject holds detailed information for group-kind subject.
  group: {
    withName(name): { group+: { name: name } }
  },
  // ServiceAccountSubject holds detailed information for service-account-kind subject.
  serviceAccount: {
    withName(name): { serviceAccount+: { name: name } },
    withNamespace(namespace): { serviceAccount+: { namespace: namespace } }
  },
  // UserSubject holds detailed information for user-kind subject.
  user: {
    withName(name): { user+: { name: name } }
  },
  withKind(kind): { kind: kind },
  mixin: self
}