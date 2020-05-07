{
  // EnvVarSource represents a source for the value of an EnvVar.
  valueFrom: {
    // Selects a key from a ConfigMap.
    configMapKeyRef: {
      withKey(key): { valueFrom+: { configMapKeyRef+: { key: key } } },
      withName(name): { valueFrom+: { configMapKeyRef+: { name: name } } },
      withOptional(optional): { valueFrom+: { configMapKeyRef+: { optional: optional } } }
    },
    // ObjectFieldSelector selects an APIVersioned field of an object.
    fieldRef: {
      withFieldPath(fieldPath): { valueFrom+: { fieldRef+: { fieldPath: fieldPath } } }
    },
    // ResourceFieldSelector represents container resources (cpu, memory) and their output format
    resourceFieldRef: {
      withContainerName(containerName): { valueFrom+: { resourceFieldRef+: { containerName: containerName } } },
      withDivisor(divisor): { valueFrom+: { resourceFieldRef+: { divisor: divisor } } },
      withResource(resource): { valueFrom+: { resourceFieldRef+: { resource: resource } } }
    },
    // SecretKeySelector selects a key of a Secret.
    secretKeyRef: {
      withKey(key): { valueFrom+: { secretKeyRef+: { key: key } } },
      withName(name): { valueFrom+: { secretKeyRef+: { name: name } } },
      withOptional(optional): { valueFrom+: { secretKeyRef+: { optional: optional } } }
    }
  },
  withName(name): { name: name },
  withValue(value): { value: value },
  mixin: self
}