{
  withFrom(from): { from: if std.isArray(v=from) then from else [from] },
  withFromMixin(from): { from+: if std.isArray(v=from) then from else [from] },
  withPorts(ports): { ports: if std.isArray(v=ports) then ports else [ports] },
  withPortsMixin(ports): { ports+: if std.isArray(v=ports) then ports else [ports] },
  mixin: self
}