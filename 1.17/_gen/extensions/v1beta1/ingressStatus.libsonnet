{
  // LoadBalancerStatus represents the status of a load-balancer.
  loadBalancer: {
    withIngress(ingress): { loadBalancer+: { ingress: if std.isArray(v=ingress) then ingress else [ingress] } },
    withIngressMixin(ingress): { loadBalancer+: { ingress+: if std.isArray(v=ingress) then ingress else [ingress] } }
  },
  mixin: self
}