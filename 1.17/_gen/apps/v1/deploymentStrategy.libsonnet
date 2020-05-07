{
  // Spec to control the desired behavior of rolling update.
  rollingUpdate: {
    withMaxSurge(maxSurge): { rollingUpdate+: { maxSurge: maxSurge } },
    withMaxUnavailable(maxUnavailable): { rollingUpdate+: { maxUnavailable: maxUnavailable } }
  },
  withType(type): { type: type },
  mixin: self
}