{
  withLevel(level): { level: level },
  withStages(stages): { stages: if std.isArray(v=stages) then stages else [stages] },
  withStagesMixin(stages): { stages+: if std.isArray(v=stages) then stages else [stages] },
  mixin: self
}