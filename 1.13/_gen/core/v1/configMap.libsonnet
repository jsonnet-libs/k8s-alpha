{
  // new returns an instance of Configmap
  new(name): {
    apiVersion: 'v1',
    kind: 'ConfigMap'
  } + self.metadata.withName(name=name),
  withBinaryData(binaryData): { binaryData: binaryData },
  withBinaryDataMixin(binaryData): { binaryData+: binaryData },
  withData(data): { data: data },
  withDataMixin(data): { data+: data },
  withMetadata(metadata): { metadata: metadata },
  mixin: self
}