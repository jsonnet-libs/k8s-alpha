{
  withMatchLabelExpressions(matchLabelExpressions): { matchLabelExpressions: if std.isArray(v=matchLabelExpressions) then matchLabelExpressions else [matchLabelExpressions] },
  withMatchLabelExpressionsMixin(matchLabelExpressions): { matchLabelExpressions+: if std.isArray(v=matchLabelExpressions) then matchLabelExpressions else [matchLabelExpressions] },
  mixin: self
}