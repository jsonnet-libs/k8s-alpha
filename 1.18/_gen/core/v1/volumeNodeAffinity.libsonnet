{
  // A node selector represents the union of the results of one or more label queries over a set of nodes; that is, it represents the OR of the selectors represented by the node selector terms.
  required: {
    withNodeSelectorTerms(nodeSelectorTerms): { required+: { nodeSelectorTerms: if std.isArray(v=nodeSelectorTerms) then nodeSelectorTerms else [nodeSelectorTerms] } },
    withNodeSelectorTermsMixin(nodeSelectorTerms): { required+: { nodeSelectorTerms+: if std.isArray(v=nodeSelectorTerms) then nodeSelectorTerms else [nodeSelectorTerms] } }
  },
  mixin: self
}