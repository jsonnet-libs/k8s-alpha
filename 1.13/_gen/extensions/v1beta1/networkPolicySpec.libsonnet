{
  withEgress(egress): { egress: if std.isArray(v=egress) then egress else [egress] },
  withEgressMixin(egress): { egress+: if std.isArray(v=egress) then egress else [egress] },
  withIngress(ingress): { ingress: if std.isArray(v=ingress) then ingress else [ingress] },
  withIngressMixin(ingress): { ingress+: if std.isArray(v=ingress) then ingress else [ingress] },
  withPodSelector(podSelector): { podSelector: podSelector },
  withPolicyTypes(policyTypes): { policyTypes: if std.isArray(v=policyTypes) then policyTypes else [policyTypes] },
  withPolicyTypesMixin(policyTypes): { policyTypes+: if std.isArray(v=policyTypes) then policyTypes else [policyTypes] },
  mixin: self
}