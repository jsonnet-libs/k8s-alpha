{
  withDefaultMode(defaultMode): { defaultMode: defaultMode },
  withSources(sources): { sources: if std.isArray(v=sources) then sources else [sources] },
  withSourcesMixin(sources): { sources+: if std.isArray(v=sources) then sources else [sources] },
  mixin: self
}