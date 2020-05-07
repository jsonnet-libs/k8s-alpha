{
  withAvailableReplicas(availableReplicas): { availableReplicas: availableReplicas },
  withConditions(conditions): { conditions: if std.isArray(v=conditions) then conditions else [conditions] },
  withConditionsMixin(conditions): { conditions+: if std.isArray(v=conditions) then conditions else [conditions] },
  withFullyLabeledReplicas(fullyLabeledReplicas): { fullyLabeledReplicas: fullyLabeledReplicas },
  withObservedGeneration(observedGeneration): { observedGeneration: observedGeneration },
  withReadyReplicas(readyReplicas): { readyReplicas: readyReplicas },
  withReplicas(replicas): { replicas: replicas },
  mixin: self
}