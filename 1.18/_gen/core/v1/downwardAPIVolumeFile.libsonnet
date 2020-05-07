{
  // ObjectFieldSelector selects an APIVersioned field of an object.
  fieldRef: {
    withFieldPath(fieldPath): { fieldRef+: { fieldPath: fieldPath } }
  },
  // ResourceFieldSelector represents container resources (cpu, memory) and their output format
  resourceFieldRef: {
    withContainerName(containerName): { resourceFieldRef+: { containerName: containerName } },
    withDivisor(divisor): { resourceFieldRef+: { divisor: divisor } },
    withResource(resource): { resourceFieldRef+: { resource: resource } }
  },
  withMode(mode): { mode: mode },
  withPath(path): { path: path },
  mixin: self
}