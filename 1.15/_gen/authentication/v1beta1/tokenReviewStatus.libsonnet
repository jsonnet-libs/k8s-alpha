{
  // UserInfo holds the information about the user needed to implement the user.Info interface.
  user: {
    withExtra(extra): { user+: { extra: extra } },
    withExtraMixin(extra): { user+: { extra+: extra } },
    withGroups(groups): { user+: { groups: if std.isArray(v=groups) then groups else [groups] } },
    withGroupsMixin(groups): { user+: { groups+: if std.isArray(v=groups) then groups else [groups] } },
    withUid(uid): { user+: { uid: uid } },
    withUsername(username): { user+: { username: username } }
  },
  withAudiences(audiences): { audiences: if std.isArray(v=audiences) then audiences else [audiences] },
  withAudiencesMixin(audiences): { audiences+: if std.isArray(v=audiences) then audiences else [audiences] },
  withAuthenticated(authenticated): { authenticated: authenticated },
  withError(err): { 'error': err },
  mixin: self
}