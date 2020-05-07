{
  // new returns an instance of Initializerconfiguration
  new(name): {
    apiVersion: 'admissionregistration.k8s.io/v1alpha1',
    kind: 'InitializerConfiguration'
  } + self.metadata.withName(name=name),
  withInitializers(initializers): { initializers: if std.isArray(v=initializers) then initializers else [initializers] },
  withInitializersMixin(initializers): { initializers+: if std.isArray(v=initializers) then initializers else [initializers] },
  withMetadata(metadata): { metadata: metadata },
  mixin: self
}