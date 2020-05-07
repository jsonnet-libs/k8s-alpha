{
  // FlowDistinguisherMethod specifies the method of a flow distinguisher.
  distinguisherMethod: {
    withType(type): { distinguisherMethod+: { type: type } }
  },
  // PriorityLevelConfigurationReference contains information that points to the "request-priority" being used.
  priorityLevelConfiguration: {
    withName(name): { priorityLevelConfiguration+: { name: name } }
  },
  withMatchingPrecedence(matchingPrecedence): { matchingPrecedence: matchingPrecedence },
  withRules(rules): { rules: if std.isArray(v=rules) then rules else [rules] },
  withRulesMixin(rules): { rules+: if std.isArray(v=rules) then rules else [rules] },
  mixin: self
}