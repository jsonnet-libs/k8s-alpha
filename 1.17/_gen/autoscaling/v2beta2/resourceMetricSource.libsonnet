{
  // MetricTarget defines the target value, average value, or average utilization of a specific metric
  target: {
    withAverageUtilization(averageUtilization): { target+: { averageUtilization: averageUtilization } },
    withAverageValue(averageValue): { target+: { averageValue: averageValue } },
    withType(type): { target+: { type: type } },
    withValue(value): { target+: { value: value } }
  },
  withName(name): { name: name },
  mixin: self
}