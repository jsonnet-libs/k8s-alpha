{
  withExtra(extra): { extra: extra },
  withExtraMixin(extra): { extra+: extra },
  withGroup(group): { group: if std.isArray(v=group) then group else [group] },
  withGroupMixin(group): { group+: if std.isArray(v=group) then group else [group] },
  withNonResourceAttributes(nonResourceAttributes): { nonResourceAttributes: nonResourceAttributes },
  withResourceAttributes(resourceAttributes): { resourceAttributes: resourceAttributes },
  withUid(uid): { uid: uid },
  withUser(user): { user: user },
  mixin: self
}