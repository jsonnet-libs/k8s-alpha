{
  withClusterRoleSelectors(clusterRoleSelectors): { clusterRoleSelectors: if std.isArray(v=clusterRoleSelectors) then clusterRoleSelectors else [clusterRoleSelectors] },
  withClusterRoleSelectorsMixin(clusterRoleSelectors): { clusterRoleSelectors+: if std.isArray(v=clusterRoleSelectors) then clusterRoleSelectors else [clusterRoleSelectors] },
  mixin: self
}