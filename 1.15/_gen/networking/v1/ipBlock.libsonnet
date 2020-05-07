{
  withCidr(cidr): { cidr: cidr },
  withExcept(except): { except: if std.isArray(v=except) then except else [except] },
  withExceptMixin(except): { except+: if std.isArray(v=except) then except else [except] },
  mixin: self
}