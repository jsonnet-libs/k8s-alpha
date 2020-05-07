{
  withExtra(extra): { extra: extra },
  withExtraMixin(extra): { extra+: extra },
  withGroups(groups): { groups: if std.isArray(v=groups) then groups else [groups] },
  withGroupsMixin(groups): { groups+: if std.isArray(v=groups) then groups else [groups] },
  withNonResourceAttributes(nonResourceAttributes): { nonResourceAttributes: nonResourceAttributes },
  withResourceAttributes(resourceAttributes): { resourceAttributes: resourceAttributes },
  withUid(uid): { uid: uid },
  withUser(user): { user: user },
  mixin: self
}