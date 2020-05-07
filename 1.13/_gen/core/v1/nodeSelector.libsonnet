{
  withNodeSelectorTerms(nodeSelectorTerms): { nodeSelectorTerms: if std.isArray(v=nodeSelectorTerms) then nodeSelectorTerms else [nodeSelectorTerms] },
  withNodeSelectorTermsMixin(nodeSelectorTerms): { nodeSelectorTerms+: if std.isArray(v=nodeSelectorTerms) then nodeSelectorTerms else [nodeSelectorTerms] },
  mixin: self
}