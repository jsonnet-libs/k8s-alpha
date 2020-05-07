{
  // new returns an instance of Volumeattachment
  new(name): {
    apiVersion: 'storage.k8s.io/v1alpha1',
    kind: 'VolumeAttachment'
  } + self.metadata.withName(name=name),
  withMetadata(metadata): { metadata: metadata },
  withSpec(spec): { spec: spec },
  mixin: self
}