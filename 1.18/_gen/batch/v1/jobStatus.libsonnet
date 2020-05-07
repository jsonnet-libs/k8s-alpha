{
  withActive(active): { active: active },
  withCompletionTime(completionTime): { completionTime: completionTime },
  withConditions(conditions): { conditions: if std.isArray(v=conditions) then conditions else [conditions] },
  withConditionsMixin(conditions): { conditions+: if std.isArray(v=conditions) then conditions else [conditions] },
  withFailed(failed): { failed: failed },
  withStartTime(startTime): { startTime: startTime },
  withSucceeded(succeeded): { succeeded: succeeded },
  mixin: self
}