{
  withConfigMap(configMap): { configMap: configMap },
  withDownwardAPI(downwardAPI): { downwardAPI: downwardAPI },
  withSecret(secret): { secret: secret },
  withServiceAccountToken(serviceAccountToken): { serviceAccountToken: serviceAccountToken },
  mixin: self
}