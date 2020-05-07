{
  // new returns an instance of Secret
  new(name): {
    apiVersion: 'v1',
    kind: 'Secret'
  } + self.metadata.withName(name=name),
  withData(data): { data: data },
  withDataMixin(data): { data+: data },
  withMetadata(metadata): { metadata: metadata },
  withStringData(stringData): { stringData: stringData },
  withStringDataMixin(stringData): { stringData+: stringData },
  withType(type): { type: type },
  mixin: self
}