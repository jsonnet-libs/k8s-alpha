{
  withClientConfig(clientConfig): { clientConfig: clientConfig },
  withFailurePolicy(failurePolicy): { failurePolicy: failurePolicy },
  withName(name): { name: name },
  withNamespaceSelector(namespaceSelector): { namespaceSelector: namespaceSelector },
  withRules(rules): { rules: if std.isArray(v=rules) then rules else [rules] },
  withRulesMixin(rules): { rules+: if std.isArray(v=rules) then rules else [rules] },
  withSideEffects(sideEffects): { sideEffects: sideEffects },
  mixin: self
}