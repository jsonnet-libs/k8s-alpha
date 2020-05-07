{
  withExtra(extra): { extra: extra },
  withExtraMixin(extra): { extra+: extra },
  withGroups(groups): { groups: if std.isArray(v=groups) then groups else [groups] },
  withGroupsMixin(groups): { groups+: if std.isArray(v=groups) then groups else [groups] },
  withRequest(request): { request: request },
  withUid(uid): { uid: uid },
  withUsages(usages): { usages: if std.isArray(v=usages) then usages else [usages] },
  withUsagesMixin(usages): { usages+: if std.isArray(v=usages) then usages else [usages] },
  withUsername(username): { username: username },
  mixin: self
}