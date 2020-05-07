{
  withOperator(operator): { operator: operator },
  withScopeName(scopeName): { scopeName: scopeName },
  withValues(values): { values: if std.isArray(v=values) then values else [values] },
  withValuesMixin(values): { values+: if std.isArray(v=values) then values else [values] },
  mixin: self
}