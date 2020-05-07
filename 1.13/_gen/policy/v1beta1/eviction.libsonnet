{
  // new returns an instance of Eviction
  new(name): {
    apiVersion: 'policy/v1beta1',
    kind: 'Eviction'
  } + self.metadata.withName(name=name),
  withDeleteOptions(deleteOptions): { deleteOptions: deleteOptions },
  withMetadata(metadata): { metadata: metadata },
  mixin: self
}