{
  withConfigMapRef(configMapRef): { configMapRef: configMapRef },
  withPrefix(prefix): { prefix: prefix },
  withSecretRef(secretRef): { secretRef: secretRef },
  mixin: self
}