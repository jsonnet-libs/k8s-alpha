{
  withAvailableReplicas(availableReplicas): { availableReplicas: availableReplicas },
  withCollisionCount(collisionCount): { collisionCount: collisionCount },
  withConditions(conditions): { conditions: if std.isArray(v=conditions) then conditions else [conditions] },
  withConditionsMixin(conditions): { conditions+: if std.isArray(v=conditions) then conditions else [conditions] },
  withObservedGeneration(observedGeneration): { observedGeneration: observedGeneration },
  withReadyReplicas(readyReplicas): { readyReplicas: readyReplicas },
  withReplicas(replicas): { replicas: replicas },
  withUnavailableReplicas(unavailableReplicas): { unavailableReplicas: unavailableReplicas },
  withUpdatedReplicas(updatedReplicas): { updatedReplicas: updatedReplicas },
  mixin: self
}