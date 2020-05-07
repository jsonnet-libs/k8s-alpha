{
  // new returns an instance of Endpoints
  new(name): {
    apiVersion: 'v1',
    kind: 'Endpoints'
  } + self.metadata.withName(name=name),
  withMetadata(metadata): { metadata: metadata },
  withSubsets(subsets): { subsets: if std.isArray(v=subsets) then subsets else [subsets] },
  withSubsetsMixin(subsets): { subsets+: if std.isArray(v=subsets) then subsets else [subsets] },
  mixin: self
}