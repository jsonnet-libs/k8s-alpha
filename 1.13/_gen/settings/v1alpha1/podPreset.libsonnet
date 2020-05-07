{
  // new returns an instance of Podpreset
  new(name): {
    apiVersion: 'settings.k8s.io/v1alpha1',
    kind: 'PodPreset'
  } + self.metadata.withName(name=name),
  withMetadata(metadata): { metadata: metadata },
  withSpec(spec): { spec: spec },
  mixin: self
}