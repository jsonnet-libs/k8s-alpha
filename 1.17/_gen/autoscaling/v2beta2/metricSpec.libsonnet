{
  // ExternalMetricSource indicates how to scale on a metric not associated with any Kubernetes object (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
  external: {
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
    },
    // MetricTarget defines the target value, average value, or average utilization of a specific metric
    target: {
      withAverageUtilization(averageUtilization): { external+: { target+: { averageUtilization: averageUtilization } } },
      withAverageValue(averageValue): { external+: { target+: { averageValue: averageValue } } },
      withType(type): { external+: { target+: { type: type } } },
      withValue(value): { external+: { target+: { value: value } } }
    }
  },
  // ObjectMetricSource indicates how to scale on a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
  object: {
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
    },
    // MetricTarget defines the target value, average value, or average utilization of a specific metric
    target: {
      withAverageUtilization(averageUtilization): { object+: { target+: { averageUtilization: averageUtilization } } },
      withAverageValue(averageValue): { object+: { target+: { averageValue: averageValue } } },
      withType(type): { object+: { target+: { type: type } } },
      withValue(value): { object+: { target+: { value: value } } }
    }
  },
  // PodsMetricSource indicates how to scale on a metric describing each pod in the current scale target (for example, transactions-processed-per-second). The values will be averaged together before being compared to the target value.
  pods: {
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
    },
    // MetricTarget defines the target value, average value, or average utilization of a specific metric
    target: {
      withAverageUtilization(averageUtilization): { pods+: { target+: { averageUtilization: averageUtilization } } },
      withAverageValue(averageValue): { pods+: { target+: { averageValue: averageValue } } },
      withType(type): { pods+: { target+: { type: type } } },
      withValue(value): { pods+: { target+: { value: value } } }
    }
  },
  // ResourceMetricSource indicates how to scale on a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  The values will be averaged together before being compared to the target.  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.  Only one "target" type should be set.
  resource: {
    // MetricTarget defines the target value, average value, or average utilization of a specific metric
    target: {
      withAverageUtilization(averageUtilization): { resource+: { target+: { averageUtilization: averageUtilization } } },
      withAverageValue(averageValue): { resource+: { target+: { averageValue: averageValue } } },
      withType(type): { resource+: { target+: { type: type } } },
      withValue(value): { resource+: { target+: { value: value } } }
    },
    withName(name): { resource+: { name: name } }
  },
  withType(type): { type: type },
  mixin: self
}