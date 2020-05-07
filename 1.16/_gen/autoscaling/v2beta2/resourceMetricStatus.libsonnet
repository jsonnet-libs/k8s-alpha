{
  // MetricValueStatus holds the current value for a metric
  current: {
    withAverageUtilization(averageUtilization): { current+: { averageUtilization: averageUtilization } },
    withAverageValue(averageValue): { current+: { averageValue: averageValue } },
    withValue(value): { current+: { value: value } }
  },
  withName(name): { name: name },
  mixin: self
}