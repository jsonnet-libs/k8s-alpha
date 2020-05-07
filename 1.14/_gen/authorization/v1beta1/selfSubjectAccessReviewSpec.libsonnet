{
  // NonResourceAttributes includes the authorization attributes available for non-resource requests to the Authorizer interface
  nonResourceAttributes: {
    withPath(path): { nonResourceAttributes+: { path: path } },
    withVerb(verb): { nonResourceAttributes+: { verb: verb } }
  },
  // ResourceAttributes includes the authorization attributes available for resource requests to the Authorizer interface
  resourceAttributes: {
    withGroup(group): { resourceAttributes+: { group: group } },
    withName(name): { resourceAttributes+: { name: name } },
    withNamespace(namespace): { resourceAttributes+: { namespace: namespace } },
    withResource(resource): { resourceAttributes+: { resource: resource } },
    withSubresource(subresource): { resourceAttributes+: { subresource: subresource } },
    withVerb(verb): { resourceAttributes+: { verb: verb } },
    withVersion(version): { resourceAttributes+: { version: version } }
  },
  mixin: self
}