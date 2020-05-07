{
  withApiGroups(apiGroups): { apiGroups: if std.isArray(v=apiGroups) then apiGroups else [apiGroups] },
  withApiGroupsMixin(apiGroups): { apiGroups+: if std.isArray(v=apiGroups) then apiGroups else [apiGroups] },
  withApiVersions(apiVersions): { apiVersions: if std.isArray(v=apiVersions) then apiVersions else [apiVersions] },
  withApiVersionsMixin(apiVersions): { apiVersions+: if std.isArray(v=apiVersions) then apiVersions else [apiVersions] },
  withOperations(operations): { operations: if std.isArray(v=operations) then operations else [operations] },
  withOperationsMixin(operations): { operations+: if std.isArray(v=operations) then operations else [operations] },
  withResources(resources): { resources: if std.isArray(v=resources) then resources else [resources] },
  withResourcesMixin(resources): { resources+: if std.isArray(v=resources) then resources else [resources] },
  mixin: self
}