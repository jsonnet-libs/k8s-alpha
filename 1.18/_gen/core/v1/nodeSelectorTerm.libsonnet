{
  withMatchExpressions(matchExpressions): { matchExpressions: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] },
  withMatchExpressionsMixin(matchExpressions): { matchExpressions+: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] },
  withMatchFields(matchFields): { matchFields: if std.isArray(v=matchFields) then matchFields else [matchFields] },
  withMatchFieldsMixin(matchFields): { matchFields+: if std.isArray(v=matchFields) then matchFields else [matchFields] },
  mixin: self
}