{
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