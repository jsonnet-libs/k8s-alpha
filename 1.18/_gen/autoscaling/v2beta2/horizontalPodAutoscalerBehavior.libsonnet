{
  // HPAScalingRules configures the scaling behavior for one direction. These Rules are applied after calculating DesiredReplicas from metrics for the HPA. They can limit the scaling velocity by specifying scaling policies. They can prevent flapping by specifying the stabilization window, so that the number of replicas is not set instantly, instead, the safest value from the stabilization window is chosen.
  scaleDown: {
    withPolicies(policies): { scaleDown+: { policies: if std.isArray(v=policies) then policies else [policies] } },
    withPoliciesMixin(policies): { scaleDown+: { policies+: if std.isArray(v=policies) then policies else [policies] } },
    withSelectPolicy(selectPolicy): { scaleDown+: { selectPolicy: selectPolicy } },
    withStabilizationWindowSeconds(stabilizationWindowSeconds): { scaleDown+: { stabilizationWindowSeconds: stabilizationWindowSeconds } }
  },
  // HPAScalingRules configures the scaling behavior for one direction. These Rules are applied after calculating DesiredReplicas from metrics for the HPA. They can limit the scaling velocity by specifying scaling policies. They can prevent flapping by specifying the stabilization window, so that the number of replicas is not set instantly, instead, the safest value from the stabilization window is chosen.
  scaleUp: {
    withPolicies(policies): { scaleUp+: { policies: if std.isArray(v=policies) then policies else [policies] } },
    withPoliciesMixin(policies): { scaleUp+: { policies+: if std.isArray(v=policies) then policies else [policies] } },
    withSelectPolicy(selectPolicy): { scaleUp+: { selectPolicy: selectPolicy } },
    withStabilizationWindowSeconds(stabilizationWindowSeconds): { scaleUp+: { stabilizationWindowSeconds: stabilizationWindowSeconds } }
  },
  mixin: self
}