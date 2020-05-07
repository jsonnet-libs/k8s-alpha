{
  // CrossVersionObjectReference contains enough information to let you identify the referred resource.
  scaleTargetRef: {
    withKind(kind): { scaleTargetRef+: { kind: kind } },
    withName(name): { scaleTargetRef+: { name: name } }
  },
  withMaxReplicas(maxReplicas): { maxReplicas: maxReplicas },
  withMinReplicas(minReplicas): { minReplicas: minReplicas },
  withTargetCPUUtilizationPercentage(targetCPUUtilizationPercentage): { targetCPUUtilizationPercentage: targetCPUUtilizationPercentage },
  mixin: self
}