{
  // A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
  podSelector: {
    withMatchExpressions(matchExpressions): { podSelector+: { matchExpressions: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } },
    withMatchExpressionsMixin(matchExpressions): { podSelector+: { matchExpressions+: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } },
    withMatchLabels(matchLabels): { podSelector+: { matchLabels: matchLabels } },
    withMatchLabelsMixin(matchLabels): { podSelector+: { matchLabels+: matchLabels } }
  },
  withEgress(egress): { egress: if std.isArray(v=egress) then egress else [egress] },
  withEgressMixin(egress): { egress+: if std.isArray(v=egress) then egress else [egress] },
  withIngress(ingress): { ingress: if std.isArray(v=ingress) then ingress else [ingress] },
  withIngressMixin(ingress): { ingress+: if std.isArray(v=ingress) then ingress else [ingress] },
  withPolicyTypes(policyTypes): { policyTypes: if std.isArray(v=policyTypes) then policyTypes else [policyTypes] },
  withPolicyTypesMixin(policyTypes): { policyTypes+: if std.isArray(v=policyTypes) then policyTypes else [policyTypes] },
  mixin: self
}