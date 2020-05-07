{
  withFinalizers(finalizers): { finalizers: if std.isArray(v=finalizers) then finalizers else [finalizers] },
  withFinalizersMixin(finalizers): { finalizers+: if std.isArray(v=finalizers) then finalizers else [finalizers] },
  mixin: self
}