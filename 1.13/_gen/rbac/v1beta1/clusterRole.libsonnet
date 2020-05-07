{
  // new returns an instance of Clusterrole
  new(name): {
    apiVersion: 'rbac.authorization.k8s.io/v1beta1',
    kind: 'ClusterRole'
  } + self.metadata.withName(name=name),
  withAggregationRule(aggregationRule): { aggregationRule: aggregationRule },
  withMetadata(metadata): { metadata: metadata },
  withRules(rules): { rules: if std.isArray(v=rules) then rules else [rules] },
  withRulesMixin(rules): { rules+: if std.isArray(v=rules) then rules else [rules] },
  mixin: self
}