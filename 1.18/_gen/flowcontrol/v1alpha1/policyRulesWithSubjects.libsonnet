{
  withNonResourceRules(nonResourceRules): { nonResourceRules: if std.isArray(v=nonResourceRules) then nonResourceRules else [nonResourceRules] },
  withNonResourceRulesMixin(nonResourceRules): { nonResourceRules+: if std.isArray(v=nonResourceRules) then nonResourceRules else [nonResourceRules] },
  withResourceRules(resourceRules): { resourceRules: if std.isArray(v=resourceRules) then resourceRules else [resourceRules] },
  withResourceRulesMixin(resourceRules): { resourceRules+: if std.isArray(v=resourceRules) then resourceRules else [resourceRules] },
  withSubjects(subjects): { subjects: if std.isArray(v=subjects) then subjects else [subjects] },
  withSubjectsMixin(subjects): { subjects+: if std.isArray(v=subjects) then subjects else [subjects] },
  mixin: self
}