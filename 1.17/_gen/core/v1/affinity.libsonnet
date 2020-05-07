{
  // Node affinity is a group of node affinity scheduling rules.
  nodeAffinity: {
    // A node selector represents the union of the results of one or more label queries over a set of nodes; that is, it represents the OR of the selectors represented by the node selector terms.
    requiredDuringSchedulingIgnoredDuringExecution: {
      withNodeSelectorTerms(nodeSelectorTerms): { nodeAffinity+: { requiredDuringSchedulingIgnoredDuringExecution+: { nodeSelectorTerms: if std.isArray(v=nodeSelectorTerms) then nodeSelectorTerms else [nodeSelectorTerms] } } },
      withNodeSelectorTermsMixin(nodeSelectorTerms): { nodeAffinity+: { requiredDuringSchedulingIgnoredDuringExecution+: { nodeSelectorTerms+: if std.isArray(v=nodeSelectorTerms) then nodeSelectorTerms else [nodeSelectorTerms] } } }
    },
    withPreferredDuringSchedulingIgnoredDuringExecution(preferredDuringSchedulingIgnoredDuringExecution): { nodeAffinity+: { preferredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } },
    withPreferredDuringSchedulingIgnoredDuringExecutionMixin(preferredDuringSchedulingIgnoredDuringExecution): { nodeAffinity+: { preferredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } }
  },
  // Pod affinity is a group of inter pod affinity scheduling rules.
  podAffinity: {
    withPreferredDuringSchedulingIgnoredDuringExecution(preferredDuringSchedulingIgnoredDuringExecution): { podAffinity+: { preferredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } },
    withPreferredDuringSchedulingIgnoredDuringExecutionMixin(preferredDuringSchedulingIgnoredDuringExecution): { podAffinity+: { preferredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } },
    withRequiredDuringSchedulingIgnoredDuringExecution(requiredDuringSchedulingIgnoredDuringExecution): { podAffinity+: { requiredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=requiredDuringSchedulingIgnoredDuringExecution) then requiredDuringSchedulingIgnoredDuringExecution else [requiredDuringSchedulingIgnoredDuringExecution] } },
    withRequiredDuringSchedulingIgnoredDuringExecutionMixin(requiredDuringSchedulingIgnoredDuringExecution): { podAffinity+: { requiredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=requiredDuringSchedulingIgnoredDuringExecution) then requiredDuringSchedulingIgnoredDuringExecution else [requiredDuringSchedulingIgnoredDuringExecution] } }
  },
  // Pod anti affinity is a group of inter pod anti affinity scheduling rules.
  podAntiAffinity: {
    withPreferredDuringSchedulingIgnoredDuringExecution(preferredDuringSchedulingIgnoredDuringExecution): { podAntiAffinity+: { preferredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } },
    withPreferredDuringSchedulingIgnoredDuringExecutionMixin(preferredDuringSchedulingIgnoredDuringExecution): { podAntiAffinity+: { preferredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } },
    withRequiredDuringSchedulingIgnoredDuringExecution(requiredDuringSchedulingIgnoredDuringExecution): { podAntiAffinity+: { requiredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=requiredDuringSchedulingIgnoredDuringExecution) then requiredDuringSchedulingIgnoredDuringExecution else [requiredDuringSchedulingIgnoredDuringExecution] } },
    withRequiredDuringSchedulingIgnoredDuringExecutionMixin(requiredDuringSchedulingIgnoredDuringExecution): { podAntiAffinity+: { requiredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=requiredDuringSchedulingIgnoredDuringExecution) then requiredDuringSchedulingIgnoredDuringExecution else [requiredDuringSchedulingIgnoredDuringExecution] } }
  },
  mixin: self
}