{
  // new returns an instance of Binding
  new(name): {
    apiVersion: 'v1',
    kind: 'Binding'
  } + self.metadata.withName(name=name),
  withMetadata(metadata): { metadata: metadata },
  withTarget(target): { target: target },
  mixin: self
}