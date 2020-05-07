{
  // Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key <topologyKey> matches that of any node on which a pod of the set of pods is running
  podAffinityTerm: {
    // A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
    labelSelector: {
      withMatchExpressions(matchExpressions): { podAffinityTerm+: { labelSelector+: { matchExpressions: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } } },
      withMatchExpressionsMixin(matchExpressions): { podAffinityTerm+: { labelSelector+: { matchExpressions+: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } } },
      withMatchLabels(matchLabels): { podAffinityTerm+: { labelSelector+: { matchLabels: matchLabels } } },
      withMatchLabelsMixin(matchLabels): { podAffinityTerm+: { labelSelector+: { matchLabels+: matchLabels } } }
    },
    withNamespaces(namespaces): { podAffinityTerm+: { namespaces: if std.isArray(v=namespaces) then namespaces else [namespaces] } },
    withNamespacesMixin(namespaces): { podAffinityTerm+: { namespaces+: if std.isArray(v=namespaces) then namespaces else [namespaces] } },
    withTopologyKey(topologyKey): { podAffinityTerm+: { topologyKey: topologyKey } }
  },
  withWeight(weight): { weight: weight },
  mixin: self
}