{
  // new returns an instance of Podtemplate
  new(name): {
    apiVersion: 'v1',
    kind: 'PodTemplate'
  } + self.metadata.withName(name=name),
  withMetadata(metadata): { metadata: metadata },
  withTemplate(template): { template: template },
  mixin: self
}