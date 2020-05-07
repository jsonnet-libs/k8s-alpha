{
  withConditions(conditions): { conditions: if std.isArray(v=conditions) then conditions else [conditions] },
  withConditionsMixin(conditions): { conditions+: if std.isArray(v=conditions) then conditions else [conditions] },
  withPhase(phase): { phase: phase },
  mixin: self
}