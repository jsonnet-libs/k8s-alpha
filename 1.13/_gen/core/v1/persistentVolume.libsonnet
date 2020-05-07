{
  // new returns an instance of Persistentvolume
  new(name): {
    apiVersion: 'v1',
    kind: 'PersistentVolume'
  } + self.metadata.withName(name=name),
  withMetadata(metadata): { metadata: metadata },
  withSpec(spec): { spec: spec },
  mixin: self
}