{
  withApiGroups(apiGroups): { apiGroups: if std.isArray(v=apiGroups) then apiGroups else [apiGroups] },
  withApiGroupsMixin(apiGroups): { apiGroups+: if std.isArray(v=apiGroups) then apiGroups else [apiGroups] },
  withClusterScope(clusterScope): { clusterScope: clusterScope },
  withNamespaces(namespaces): { namespaces: if std.isArray(v=namespaces) then namespaces else [namespaces] },
  withNamespacesMixin(namespaces): { namespaces+: if std.isArray(v=namespaces) then namespaces else [namespaces] },
  withResources(resources): { resources: if std.isArray(v=resources) then resources else [resources] },
  withResourcesMixin(resources): { resources+: if std.isArray(v=resources) then resources else [resources] },
  withVerbs(verbs): { verbs: if std.isArray(v=verbs) then verbs else [verbs] },
  withVerbsMixin(verbs): { verbs+: if std.isArray(v=verbs) then verbs else [verbs] },
  mixin: self
}