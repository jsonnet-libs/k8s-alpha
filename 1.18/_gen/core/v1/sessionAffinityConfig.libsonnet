{
  // ClientIPConfig represents the configurations of Client IP based session affinity.
  clientIP: {
    withTimeoutSeconds(timeoutSeconds): { clientIP+: { timeoutSeconds: timeoutSeconds } }
  },
  mixin: self
}