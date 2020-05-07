{
  withNodeSelector(nodeSelector): { nodeSelector: nodeSelector },
  withNodeSelectorMixin(nodeSelector): { nodeSelector+: nodeSelector },
  withTolerations(tolerations): { tolerations: if std.isArray(v=tolerations) then tolerations else [tolerations] },
  withTolerationsMixin(tolerations): { tolerations+: if std.isArray(v=tolerations) then tolerations else [tolerations] },
  mixin: self
}