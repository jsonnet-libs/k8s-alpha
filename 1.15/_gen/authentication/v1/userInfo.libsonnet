{
  withExtra(extra): { extra: extra },
  withExtraMixin(extra): { extra+: extra },
  withGroups(groups): { groups: if std.isArray(v=groups) then groups else [groups] },
  withGroupsMixin(groups): { groups+: if std.isArray(v=groups) then groups else [groups] },
  withUid(uid): { uid: uid },
  withUsername(username): { username: username },
  mixin: self
}