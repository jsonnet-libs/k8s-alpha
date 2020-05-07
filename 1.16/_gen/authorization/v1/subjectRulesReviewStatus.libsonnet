{
  withEvaluationError(evaluationError): { evaluationError: evaluationError },
  withIncomplete(incomplete): { incomplete: incomplete },
  withNonResourceRules(nonResourceRules): { nonResourceRules: if std.isArray(v=nonResourceRules) then nonResourceRules else [nonResourceRules] },
  withNonResourceRulesMixin(nonResourceRules): { nonResourceRules+: if std.isArray(v=nonResourceRules) then nonResourceRules else [nonResourceRules] },
  withResourceRules(resourceRules): { resourceRules: if std.isArray(v=resourceRules) then resourceRules else [resourceRules] },
  withResourceRulesMixin(resourceRules): { resourceRules+: if std.isArray(v=resourceRules) then resourceRules else [resourceRules] },
  mixin: self
}