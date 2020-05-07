{
  withKey(key): { key: key },
  withValues(values): { values: if std.isArray(v=values) then values else [values] },
  withValuesMixin(values): { values+: if std.isArray(v=values) then values else [values] },
  mixin: self
}