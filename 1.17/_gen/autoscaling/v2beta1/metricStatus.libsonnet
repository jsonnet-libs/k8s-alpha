{
  // ExternalMetricStatus indicates the current value of a global metric not associated with any Kubernetes object.
  external: {
    // A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
    metricSelector: {
      withMatchExpressions(matchExpressions): { external+: { metricSelector+: { matchExpressions: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } } },
      withMatchExpressionsMixin(matchExpressions): { external+: { metricSelector+: { matchExpressions+: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } } },
      withMatchLabels(matchLabels): { external+: { metricSelector+: { matchLabels: matchLabels } } },
      withMatchLabelsMixin(matchLabels): { external+: { metricSelector+: { matchLabels+: matchLabels } } }
    },
    withCurrentAverageValue(currentAverageValue): { external+: { currentAverageValue: currentAverageValue } },
    withCurrentValue(currentValue): { external+: { currentValue: currentValue } },
    withMetricName(metricName): { external+: { metricName: metricName } }
  },
  // ObjectMetricStatus indicates the current value of a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
  object: {
    // A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
    selector: {
      withMatchExpressions(matchExpressions): { object+: { selector+: { matchExpressions: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } } },
      withMatchExpressionsMixin(matchExpressions): { object+: { selector+: { matchExpressions+: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } } },
      withMatchLabels(matchLabels): { object+: { selector+: { matchLabels: matchLabels } } },
      withMatchLabelsMixin(matchLabels): { object+: { selector+: { matchLabels+: matchLabels } } }
    },
    // CrossVersionObjectReference contains enough information to let you identify the referred resource.
    target: {
      withKind(kind): { object+: { target+: { kind: kind } } },
      withName(name): { object+: { target+: { name: name } } }
    },
    withAverageValue(averageValue): { object+: { averageValue: averageValue } },
    withCurrentValue(currentValue): { object+: { currentValue: currentValue } },
    withMetricName(metricName): { object+: { metricName: metricName } }
  },
  // PodsMetricStatus indicates the current value of a metric describing each pod in the current scale target (for example, transactions-processed-per-second).
  pods: {
    // A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
    selector: {
      withMatchExpressions(matchExpressions): { pods+: { selector+: { matchExpressions: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } } },
      withMatchExpressionsMixin(matchExpressions): { pods+: { selector+: { matchExpressions+: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } } },
      withMatchLabels(matchLabels): { pods+: { selector+: { matchLabels: matchLabels } } },
      withMatchLabelsMixin(matchLabels): { pods+: { selector+: { matchLabels+: matchLabels } } }
    },
    withCurrentAverageValue(currentAverageValue): { pods+: { currentAverageValue: currentAverageValue } },
    withMetricName(metricName): { pods+: { metricName: metricName } }
  },
  // ResourceMetricStatus indicates the current value of a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
  resource: {
    withCurrentAverageUtilization(currentAverageUtilization): { resource+: { currentAverageUtilization: currentAverageUtilization } },
    withCurrentAverageValue(currentAverageValue): { resource+: { currentAverageValue: currentAverageValue } },
    withName(name): { resource+: { name: name } }
  },
  withType(type): { type: type },
  mixin: self
}