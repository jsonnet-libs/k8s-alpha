{
  // A null or empty node selector term matches no objects. The requirements of them are ANDed. The TopologySelectorTerm type implements a subset of the NodeSelectorTerm.
  preference: {
    withMatchExpressions(matchExpressions): { preference+: { matchExpressions: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } },
    withMatchExpressionsMixin(matchExpressions): { preference+: { matchExpressions+: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } },
    withMatchFields(matchFields): { preference+: { matchFields: if std.isArray(v=matchFields) then matchFields else [matchFields] } },
    withMatchFieldsMixin(matchFields): { preference+: { matchFields+: if std.isArray(v=matchFields) then matchFields else [matchFields] } }
  },
  withWeight(weight): { weight: weight },
  mixin: self
}