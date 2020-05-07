{
  withMaxReplicas(maxReplicas): { maxReplicas: maxReplicas },
  withMinReplicas(minReplicas): { minReplicas: minReplicas },
  withScaleTargetRef(scaleTargetRef): { scaleTargetRef: scaleTargetRef },
  withTargetCPUUtilizationPercentage(targetCPUUtilizationPercentage): { targetCPUUtilizationPercentage: targetCPUUtilizationPercentage },
  mixin: self
}