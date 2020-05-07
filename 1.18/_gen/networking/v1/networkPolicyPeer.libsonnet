{
  // IPBlock describes a particular CIDR (Ex. "192.168.1.1/24","2001:db9::/64") that is allowed to the pods matched by a NetworkPolicySpec's podSelector. The except entry describes CIDRs that should not be included within this rule.
  ipBlock: {
    withCidr(cidr): { ipBlock+: { cidr: cidr } },
    withExcept(except): { ipBlock+: { except: if std.isArray(v=except) then except else [except] } },
    withExceptMixin(except): { ipBlock+: { except+: if std.isArray(v=except) then except else [except] } }
  },
  // A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
  namespaceSelector: {
    withMatchExpressions(matchExpressions): { namespaceSelector+: { matchExpressions: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } },
    withMatchExpressionsMixin(matchExpressions): { namespaceSelector+: { matchExpressions+: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } },
    withMatchLabels(matchLabels): { namespaceSelector+: { matchLabels: matchLabels } },
    withMatchLabelsMixin(matchLabels): { namespaceSelector+: { matchLabels+: matchLabels } }
  },
  // A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
  podSelector: {
    withMatchExpressions(matchExpressions): { podSelector+: { matchExpressions: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } },
    withMatchExpressionsMixin(matchExpressions): { podSelector+: { matchExpressions+: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } },
    withMatchLabels(matchLabels): { podSelector+: { matchLabels: matchLabels } },
    withMatchLabelsMixin(matchLabels): { podSelector+: { matchLabels+: matchLabels } }
  },
  mixin: self
}