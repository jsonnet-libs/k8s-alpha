{
  // Selects a key from a ConfigMap.
  configMapKeyRef: {
    withKey(key): { configMapKeyRef+: { key: key } },
    withName(name): { configMapKeyRef+: { name: name } },
    withOptional(optional): { configMapKeyRef+: { optional: optional } }
  },
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
  // SecretKeySelector selects a key of a Secret.
  secretKeyRef: {
    withKey(key): { secretKeyRef+: { key: key } },
    withName(name): { secretKeyRef+: { name: name } },
    withOptional(optional): { secretKeyRef+: { optional: optional } }
  },
  mixin: self
}