{
  // HorizontalPodAutoscalerBehavior configures the scaling behavior of the target in both Up and Down directions (scaleUp and scaleDown fields respectively).
  behavior: {
    // HPAScalingRules configures the scaling behavior for one direction. These Rules are applied after calculating DesiredReplicas from metrics for the HPA. They can limit the scaling velocity by specifying scaling policies. They can prevent flapping by specifying the stabilization window, so that the number of replicas is not set instantly, instead, the safest value from the stabilization window is chosen.
    scaleDown: {
      withPolicies(policies): { behavior+: { scaleDown+: { policies: if std.isArray(v=policies) then policies else [policies] } } },
      withPoliciesMixin(policies): { behavior+: { scaleDown+: { policies+: if std.isArray(v=policies) then policies else [policies] } } },
      withSelectPolicy(selectPolicy): { behavior+: { scaleDown+: { selectPolicy: selectPolicy } } },
      withStabilizationWindowSeconds(stabilizationWindowSeconds): { behavior+: { scaleDown+: { stabilizationWindowSeconds: stabilizationWindowSeconds } } }
    },
    // HPAScalingRules configures the scaling behavior for one direction. These Rules are applied after calculating DesiredReplicas from metrics for the HPA. They can limit the scaling velocity by specifying scaling policies. They can prevent flapping by specifying the stabilization window, so that the number of replicas is not set instantly, instead, the safest value from the stabilization window is chosen.
    scaleUp: {
      withPolicies(policies): { behavior+: { scaleUp+: { policies: if std.isArray(v=policies) then policies else [policies] } } },
      withPoliciesMixin(policies): { behavior+: { scaleUp+: { policies+: if std.isArray(v=policies) then policies else [policies] } } },
      withSelectPolicy(selectPolicy): { behavior+: { scaleUp+: { selectPolicy: selectPolicy } } },
      withStabilizationWindowSeconds(stabilizationWindowSeconds): { behavior+: { scaleUp+: { stabilizationWindowSeconds: stabilizationWindowSeconds } } }
    }
  },
  // CrossVersionObjectReference contains enough information to let you identify the referred resource.
  scaleTargetRef: {
    withKind(kind): { scaleTargetRef+: { kind: kind } },
    withName(name): { scaleTargetRef+: { name: name } }
  },
  withMaxReplicas(maxReplicas): { maxReplicas: maxReplicas },
  withMetrics(metrics): { metrics: if std.isArray(v=metrics) then metrics else [metrics] },
  withMetricsMixin(metrics): { metrics+: if std.isArray(v=metrics) then metrics else [metrics] },
  withMinReplicas(minReplicas): { minReplicas: minReplicas },
  mixin: self
}