{
  withLabelSelector(labelSelector): { labelSelector: labelSelector },
  withNamespaces(namespaces): { namespaces: if std.isArray(v=namespaces) then namespaces else [namespaces] },
  withNamespacesMixin(namespaces): { namespaces+: if std.isArray(v=namespaces) then namespaces else [namespaces] },
  withTopologyKey(topologyKey): { topologyKey: topologyKey },
  mixin: self
}