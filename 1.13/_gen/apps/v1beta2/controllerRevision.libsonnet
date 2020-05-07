{
  // new returns an instance of Controllerrevision
  new(name): {
    apiVersion: 'apps/v1beta2',
    kind: 'ControllerRevision'
  } + self.metadata.withName(name=name),
  withData(data): { data: data },
  withMetadata(metadata): { metadata: metadata },
  withRevision(revision): { revision: revision },
  mixin: self
}