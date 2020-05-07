{
  withAdd(add): { add: if std.isArray(v=add) then add else [add] },
  withAddMixin(add): { add+: if std.isArray(v=add) then add else [add] },
  withDrop(drop): { drop: if std.isArray(v=drop) then drop else [drop] },
  withDropMixin(drop): { drop+: if std.isArray(v=drop) then drop else [drop] },
  mixin: self
}