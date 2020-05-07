{
  // A scope selector represents the AND of the selectors represented by the scoped-resource selector requirements.
  scopeSelector: {
    withMatchExpressions(matchExpressions): { scopeSelector+: { matchExpressions: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } },
    withMatchExpressionsMixin(matchExpressions): { scopeSelector+: { matchExpressions+: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } }
  },
  withHard(hard): { hard: hard },
  withHardMixin(hard): { hard+: hard },
  withScopes(scopes): { scopes: if std.isArray(v=scopes) then scopes else [scopes] },
  withScopesMixin(scopes): { scopes+: if std.isArray(v=scopes) then scopes else [scopes] },
  mixin: self
}