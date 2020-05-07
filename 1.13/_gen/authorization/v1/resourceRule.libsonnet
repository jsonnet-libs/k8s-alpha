{
  withApiGroups(apiGroups): { apiGroups: if std.isArray(v=apiGroups) then apiGroups else [apiGroups] },
  withApiGroupsMixin(apiGroups): { apiGroups+: if std.isArray(v=apiGroups) then apiGroups else [apiGroups] },
  withResourceNames(resourceNames): { resourceNames: if std.isArray(v=resourceNames) then resourceNames else [resourceNames] },
  withResourceNamesMixin(resourceNames): { resourceNames+: if std.isArray(v=resourceNames) then resourceNames else [resourceNames] },
  withResources(resources): { resources: if std.isArray(v=resources) then resources else [resources] },
  withResourcesMixin(resources): { resources+: if std.isArray(v=resources) then resources else [resources] },
  withVerbs(verbs): { verbs: if std.isArray(v=verbs) then verbs else [verbs] },
  withVerbsMixin(verbs): { verbs+: if std.isArray(v=verbs) then verbs else [verbs] },
  mixin: self
}