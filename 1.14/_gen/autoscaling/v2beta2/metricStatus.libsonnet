{
  // ExternalMetricStatus indicates the current value of a global metric not associated with any Kubernetes object.
  external: {
    // MetricValueStatus holds the current value for a metric
    current: {
      withAverageUtilization(averageUtilization): { external+: { current+: { averageUtilization: averageUtilization } } },
      withAverageValue(averageValue): { external+: { current+: { averageValue: averageValue } } },
      withValue(value): { external+: { current+: { value: value } } }
    },
    // MetricIdentifier defines the name and optionally selector for a metric
    metric: {
      // A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
      selector: {
        withMatchExpressions(matchExpressions): { external+: { metric+: { selector+: { matchExpressions: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } } } },
        withMatchExpressionsMixin(matchExpressions): { external+: { metric+: { selector+: { matchExpressions+: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } } } },
        withMatchLabels(matchLabels): { external+: { metric+: { selector+: { matchLabels: matchLabels } } } },
        withMatchLabelsMixin(matchLabels): { external+: { metric+: { selector+: { matchLabels+: matchLabels } } } }
      },
      withName(name): { external+: { metric+: { name: name } } }
    }
  },
  // ObjectMetricStatus indicates the current value of a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
  object: {
    // MetricValueStatus holds the current value for a metric
    current: {
      withAverageUtilization(averageUtilization): { object+: { current+: { averageUtilization: averageUtilization } } },
      withAverageValue(averageValue): { object+: { current+: { averageValue: averageValue } } },
      withValue(value): { object+: { current+: { value: value } } }
    },
    // CrossVersionObjectReference contains enough information to let you identify the referred resource.
    describedObject: {
      withKind(kind): { object+: { describedObject+: { kind: kind } } },
      withName(name): { object+: { describedObject+: { name: name } } }
    },
    // MetricIdentifier defines the name and optionally selector for a metric
    metric: {
      // A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
      selector: {
        withMatchExpressions(matchExpressions): { object+: { metric+: { selector+: { matchExpressions: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } } } },
        withMatchExpressionsMixin(matchExpressions): { object+: { metric+: { selector+: { matchExpressions+: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } } } },
        withMatchLabels(matchLabels): { object+: { metric+: { selector+: { matchLabels: matchLabels } } } },
        withMatchLabelsMixin(matchLabels): { object+: { metric+: { selector+: { matchLabels+: matchLabels } } } }
      },
      withName(name): { object+: { metric+: { name: name } } }
    }
  },
  // PodsMetricStatus indicates the current value of a metric describing each pod in the current scale target (for example, transactions-processed-per-second).
  pods: {
    // MetricValueStatus holds the current value for a metric
    current: {
      withAverageUtilization(averageUtilization): { pods+: { current+: { averageUtilization: averageUtilization } } },
      withAverageValue(averageValue): { pods+: { current+: { averageValue: averageValue } } },
      withValue(value): { pods+: { current+: { value: value } } }
    },
    // MetricIdentifier defines the name and optionally selector for a metric
    metric: {
      // A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
      selector: {
        withMatchExpressions(matchExpressions): { pods+: { metric+: { selector+: { matchExpressions: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } } } },
        withMatchExpressionsMixin(matchExpressions): { pods+: { metric+: { selector+: { matchExpressions+: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } } } },
        withMatchLabels(matchLabels): { pods+: { metric+: { selector+: { matchLabels: matchLabels } } } },
        withMatchLabelsMixin(matchLabels): { pods+: { metric+: { selector+: { matchLabels+: matchLabels } } } }
      },
      withName(name): { pods+: { metric+: { name: name } } }
    }
  },
  // ResourceMetricStatus indicates the current value of a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
  resource: {
    // MetricValueStatus holds the current value for a metric
    current: {
      withAverageUtilization(averageUtilization): { resource+: { current+: { averageUtilization: averageUtilization } } },
      withAverageValue(averageValue): { resource+: { current+: { averageValue: averageValue } } },
      withValue(value): { resource+: { current+: { value: value } } }
    },
    withName(name): { resource+: { name: name } }
  },
  withType(type): { type: type },
  mixin: self
}