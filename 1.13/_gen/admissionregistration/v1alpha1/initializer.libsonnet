{
  withName(name): { name: name },
  withRules(rules): { rules: if std.isArray(v=rules) then rules else [rules] },
  withRulesMixin(rules): { rules+: if std.isArray(v=rules) then rules else [rules] },
  mixin: self
}