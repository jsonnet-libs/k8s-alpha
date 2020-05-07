{
  withLimits(limits): { limits: if std.isArray(v=limits) then limits else [limits] },
  withLimitsMixin(limits): { limits+: if std.isArray(v=limits) then limits else [limits] },
  mixin: self
}