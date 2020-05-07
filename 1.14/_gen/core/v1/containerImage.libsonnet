{
  withNames(names): { names: if std.isArray(v=names) then names else [names] },
  withNamesMixin(names): { names+: if std.isArray(v=names) then names else [names] },
  withSizeBytes(sizeBytes): { sizeBytes: sizeBytes },
  mixin: self
}