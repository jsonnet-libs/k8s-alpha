{
  // Spec to control the desired behavior of daemon set rolling update.
  rollingUpdate: {
    withMaxUnavailable(maxUnavailable): { rollingUpdate+: { maxUnavailable: maxUnavailable } }
  },
  withType(type): { type: type },
  mixin: self
}