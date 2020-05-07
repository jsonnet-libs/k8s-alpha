{
  withConditions(conditions): { conditions: if std.isArray(v=conditions) then conditions else [conditions] },
  withConditionsMixin(conditions): { conditions+: if std.isArray(v=conditions) then conditions else [conditions] },
  withCurrentMetrics(currentMetrics): { currentMetrics: if std.isArray(v=currentMetrics) then currentMetrics else [currentMetrics] },
  withCurrentMetricsMixin(currentMetrics): { currentMetrics+: if std.isArray(v=currentMetrics) then currentMetrics else [currentMetrics] },
  withCurrentReplicas(currentReplicas): { currentReplicas: currentReplicas },
  withDesiredReplicas(desiredReplicas): { desiredReplicas: desiredReplicas },
  withLastScaleTime(lastScaleTime): { lastScaleTime: lastScaleTime },
  withObservedGeneration(observedGeneration): { observedGeneration: observedGeneration },
  mixin: self
}