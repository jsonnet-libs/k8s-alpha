{
  // CrossVersionObjectReference contains enough information to let you identify the referred resource.
  describedObject: {
    withKind(kind): { describedObject+: { kind: kind } },
    withName(name): { describedObject+: { name: name } }
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
  // MetricTarget defines the target value, average value, or average utilization of a specific metric
  target: {
    withAverageUtilization(averageUtilization): { target+: { averageUtilization: averageUtilization } },
    withAverageValue(averageValue): { target+: { averageValue: averageValue } },
    withType(type): { target+: { type: type } },
    withValue(value): { target+: { value: value } }
  },
  mixin: self
}