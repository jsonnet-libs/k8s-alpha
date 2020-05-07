{
  withMaxReplicas(maxReplicas): { maxReplicas: maxReplicas },
  withMetrics(metrics): { metrics: if std.isArray(v=metrics) then metrics else [metrics] },
  withMetricsMixin(metrics): { metrics+: if std.isArray(v=metrics) then metrics else [metrics] },
  withMinReplicas(minReplicas): { minReplicas: minReplicas },
  withScaleTargetRef(scaleTargetRef): { scaleTargetRef: scaleTargetRef },
  mixin: self
}