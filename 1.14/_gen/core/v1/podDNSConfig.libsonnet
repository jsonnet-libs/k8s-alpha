{
  withNameservers(nameservers): { nameservers: if std.isArray(v=nameservers) then nameservers else [nameservers] },
  withNameserversMixin(nameservers): { nameservers+: if std.isArray(v=nameservers) then nameservers else [nameservers] },
  withOptions(options): { options: if std.isArray(v=options) then options else [options] },
  withOptionsMixin(options): { options+: if std.isArray(v=options) then options else [options] },
  withSearches(searches): { searches: if std.isArray(v=searches) then searches else [searches] },
  withSearchesMixin(searches): { searches+: if std.isArray(v=searches) then searches else [searches] },
  mixin: self
}