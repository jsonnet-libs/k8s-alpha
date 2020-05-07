{
  withAudiences(audiences): { audiences: if std.isArray(v=audiences) then audiences else [audiences] },
  withAudiencesMixin(audiences): { audiences+: if std.isArray(v=audiences) then audiences else [audiences] },
  withToken(token): { token: token },
  mixin: self
}