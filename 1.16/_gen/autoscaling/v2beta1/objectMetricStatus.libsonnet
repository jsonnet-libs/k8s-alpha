{
  // A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
  selector: {
    withMatchExpressions(matchExpressions): { selector+: { matchExpressions: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } },
    withMatchExpressionsMixin(matchExpressions): { selector+: { matchExpressions+: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } },
    withMatchLabels(matchLabels): { selector+: { matchLabels: matchLabels } },
    withMatchLabelsMixin(matchLabels): { selector+: { matchLabels+: matchLabels } }
  },
  // CrossVersionObjectReference contains enough information to let you identify the referred resource.
  target: {
    withKind(kind): { target+: { kind: kind } },
    withName(name): { target+: { name: name } }
  },
  withAverageValue(averageValue): { averageValue: averageValue },
  withCurrentValue(currentValue): { currentValue: currentValue },
  withMetricName(metricName): { metricName: metricName },
  mixin: self
}