{
  withCollisionCount(collisionCount): { collisionCount: collisionCount },
  withConditions(conditions): { conditions: if std.isArray(v=conditions) then conditions else [conditions] },
  withConditionsMixin(conditions): { conditions+: if std.isArray(v=conditions) then conditions else [conditions] },
  withCurrentNumberScheduled(currentNumberScheduled): { currentNumberScheduled: currentNumberScheduled },
  withDesiredNumberScheduled(desiredNumberScheduled): { desiredNumberScheduled: desiredNumberScheduled },
  withNumberAvailable(numberAvailable): { numberAvailable: numberAvailable },
  withNumberMisscheduled(numberMisscheduled): { numberMisscheduled: numberMisscheduled },
  withNumberReady(numberReady): { numberReady: numberReady },
  withNumberUnavailable(numberUnavailable): { numberUnavailable: numberUnavailable },
  withObservedGeneration(observedGeneration): { observedGeneration: observedGeneration },
  withUpdatedNumberScheduled(updatedNumberScheduled): { updatedNumberScheduled: updatedNumberScheduled },
  mixin: self
}