{
  // RollingUpdateStatefulSetStrategy is used to communicate parameter for RollingUpdateStatefulSetStrategyType.
  rollingUpdate: {
    withPartition(partition): { rollingUpdate+: { partition: partition } }
  },
  withType(type): { type: type },
  mixin: self
}