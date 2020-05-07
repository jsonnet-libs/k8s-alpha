{
  withAudiences(audiences): { audiences: if std.isArray(v=audiences) then audiences else [audiences] },
  withAudiencesMixin(audiences): { audiences+: if std.isArray(v=audiences) then audiences else [audiences] },
  withAuthenticated(authenticated): { authenticated: authenticated },
  withError(err): { 'error': err },
  withUser(user): { user: user },
  mixin: self
}