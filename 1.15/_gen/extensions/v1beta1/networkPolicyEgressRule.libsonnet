{
  withPorts(ports): { ports: if std.isArray(v=ports) then ports else [ports] },
  withPortsMixin(ports): { ports+: if std.isArray(v=ports) then ports else [ports] },
  withTo(to): { to: if std.isArray(v=to) then to else [to] },
  withToMixin(to): { to+: if std.isArray(v=to) then to else [to] },
  mixin: self
}