{
  // A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
  labelSelector: {
    withMatchExpressions(matchExpressions): { labelSelector+: { matchExpressions: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } },
    withMatchExpressionsMixin(matchExpressions): { labelSelector+: { matchExpressions+: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } },
    withMatchLabels(matchLabels): { labelSelector+: { matchLabels: matchLabels } },
    withMatchLabelsMixin(matchLabels): { labelSelector+: { matchLabels+: matchLabels } }
  },
  withMaxSkew(maxSkew): { maxSkew: maxSkew },
  withTopologyKey(topologyKey): { topologyKey: topologyKey },
  withWhenUnsatisfiable(whenUnsatisfiable): { whenUnsatisfiable: whenUnsatisfiable },
  mixin: self
}