{
  withPaths(paths): { paths: if std.isArray(v=paths) then paths else [paths] },
  withPathsMixin(paths): { paths+: if std.isArray(v=paths) then paths else [paths] },
  mixin: self
}