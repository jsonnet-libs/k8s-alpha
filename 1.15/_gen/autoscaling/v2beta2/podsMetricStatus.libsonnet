{
  // MetricValueStatus holds the current value for a metric
  current: {
    withAverageUtilization(averageUtilization): { current+: { averageUtilization: averageUtilization } },
    withAverageValue(averageValue): { current+: { averageValue: averageValue } },
    withValue(value): { current+: { value: value } }
  },
  // MetricIdentifier defines the name and optionally selector for a metric
  metric: {
    // A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
    selector: {
      withMatchExpressions(matchExpressions): { metric+: { selector+: { matchExpressions: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } } },
      withMatchExpressionsMixin(matchExpressions): { metric+: { selector+: { matchExpressions+: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } } },
      withMatchLabels(matchLabels): { metric+: { selector+: { matchLabels: matchLabels } } },
      withMatchLabelsMixin(matchLabels): { metric+: { selector+: { matchLabels+: matchLabels } } }
    },
    withName(name): { metric+: { name: name } }
  },
  mixin: self
}