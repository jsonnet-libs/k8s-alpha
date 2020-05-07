{
  withHostnames(hostnames): { hostnames: if std.isArray(v=hostnames) then hostnames else [hostnames] },
  withHostnamesMixin(hostnames): { hostnames+: if std.isArray(v=hostnames) then hostnames else [hostnames] },
  withIp(ip): { ip: ip },
  mixin: self
}