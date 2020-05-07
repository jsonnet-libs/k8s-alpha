{
  withKey(key): { key: key },
  withOperator(operator): { operator: operator },
  withValues(values): { values: if std.isArray(v=values) then values else [values] },
  withValuesMixin(values): { values+: if std.isArray(v=values) then values else [values] },
  mixin: self
}