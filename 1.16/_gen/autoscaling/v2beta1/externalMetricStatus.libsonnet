{
  // A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
  metricSelector: {
    withMatchExpressions(matchExpressions): { metricSelector+: { matchExpressions: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } },
    withMatchExpressionsMixin(matchExpressions): { metricSelector+: { matchExpressions+: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } },
    withMatchLabels(matchLabels): { metricSelector+: { matchLabels: matchLabels } },
    withMatchLabelsMixin(matchLabels): { metricSelector+: { matchLabels+: matchLabels } }
  },
  withCurrentAverageValue(currentAverageValue): { currentAverageValue: currentAverageValue },
  withCurrentValue(currentValue): { currentValue: currentValue },
  withMetricName(metricName): { metricName: metricName },
  mixin: self
}