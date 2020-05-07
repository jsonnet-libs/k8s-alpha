{
  withHard(hard): { hard: hard },
  withHardMixin(hard): { hard+: hard },
  withScopeSelector(scopeSelector): { scopeSelector: scopeSelector },
  withScopes(scopes): { scopes: if std.isArray(v=scopes) then scopes else [scopes] },
  withScopesMixin(scopes): { scopes+: if std.isArray(v=scopes) then scopes else [scopes] },
  mixin: self
}