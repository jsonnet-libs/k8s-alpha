{
  // ConfigMapEnvSource selects a ConfigMap to populate the environment variables with.
  // 
  // The contents of the target ConfigMap's Data field will represent the key-value pairs as environment variables.
  configMapRef: {
    withName(name): { configMapRef+: { name: name } },
    withOptional(optional): { configMapRef+: { optional: optional } }
  },
  // SecretEnvSource selects a Secret to populate the environment variables with.
  // 
  // The contents of the target Secret's Data field will represent the key-value pairs as environment variables.
  secretRef: {
    withName(name): { secretRef+: { name: name } },
    withOptional(optional): { secretRef+: { optional: optional } }
  },
  withPrefix(prefix): { prefix: prefix },
  mixin: self
}