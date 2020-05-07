{
  withCollisionCount(collisionCount): { collisionCount: collisionCount },
  withConditions(conditions): { conditions: if std.isArray(v=conditions) then conditions else [conditions] },
  withConditionsMixin(conditions): { conditions+: if std.isArray(v=conditions) then conditions else [conditions] },
  withCurrentReplicas(currentReplicas): { currentReplicas: currentReplicas },
  withCurrentRevision(currentRevision): { currentRevision: currentRevision },
  withObservedGeneration(observedGeneration): { observedGeneration: observedGeneration },
  withReadyReplicas(readyReplicas): { readyReplicas: readyReplicas },
  withReplicas(replicas): { replicas: replicas },
  withUpdateRevision(updateRevision): { updateRevision: updateRevision },
  withUpdatedReplicas(updatedReplicas): { updatedReplicas: updatedReplicas },
  mixin: self
}