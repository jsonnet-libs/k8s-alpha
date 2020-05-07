{
  withIngress(ingress): { ingress: if std.isArray(v=ingress) then ingress else [ingress] },
  withIngressMixin(ingress): { ingress+: if std.isArray(v=ingress) then ingress else [ingress] },
  mixin: self
}