{
  // WebhookClientConfig contains the information to make a connection with the webhook
  clientConfig: {
    // ServiceReference holds a reference to Service.legacy.k8s.io
    service: {
      withName(name): { clientConfig+: { service+: { name: name } } },
      withNamespace(namespace): { clientConfig+: { service+: { namespace: namespace } } },
      withPath(path): { clientConfig+: { service+: { path: path } } },
      withPort(port): { clientConfig+: { service+: { port: port } } }
    },
    withCaBundle(caBundle): { clientConfig+: { caBundle: caBundle } },
    withUrl(url): { clientConfig+: { url: url } }
  },
  // WebhookThrottleConfig holds the configuration for throttling events
  throttle: {
    withBurst(burst): { throttle+: { burst: burst } },
    withQps(qps): { throttle+: { qps: qps } }
  },
  mixin: self
}