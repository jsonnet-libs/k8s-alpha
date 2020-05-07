{
  withPolicies(policies): { policies: if std.isArray(v=policies) then policies else [policies] },
  withPoliciesMixin(policies): { policies+: if std.isArray(v=policies) then policies else [policies] },
  withSelectPolicy(selectPolicy): { selectPolicy: selectPolicy },
  withStabilizationWindowSeconds(stabilizationWindowSeconds): { stabilizationWindowSeconds: stabilizationWindowSeconds },
  mixin: self
}