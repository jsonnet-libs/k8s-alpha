{
  // Policy defines the configuration of how audit events are logged
  policy: {
    withLevel(level): { policy+: { level: level } },
    withStages(stages): { policy+: { stages: if std.isArray(v=stages) then stages else [stages] } },
    withStagesMixin(stages): { policy+: { stages+: if std.isArray(v=stages) then stages else [stages] } }
  },
  // Webhook holds the configuration of the webhook
  webhook: {
    // WebhookClientConfig contains the information to make a connection with the webhook
    clientConfig: {
      // ServiceReference holds a reference to Service.legacy.k8s.io
      service: {
        withName(name): { webhook+: { clientConfig+: { service+: { name: name } } } },
        withNamespace(namespace): { webhook+: { clientConfig+: { service+: { namespace: namespace } } } },
        withPath(path): { webhook+: { clientConfig+: { service+: { path: path } } } },
        withPort(port): { webhook+: { clientConfig+: { service+: { port: port } } } }
      },
      withCaBundle(caBundle): { webhook+: { clientConfig+: { caBundle: caBundle } } },
      withUrl(url): { webhook+: { clientConfig+: { url: url } } }
    },
    // WebhookThrottleConfig holds the configuration for throttling events
    throttle: {
      withBurst(burst): { webhook+: { throttle+: { burst: burst } } },
      withQps(qps): { webhook+: { throttle+: { qps: qps } } }
    }
  },
  mixin: self
}