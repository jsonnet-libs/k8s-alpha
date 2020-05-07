{
  // new returns an instance of Auditsink
  new(name): {
    apiVersion: 'auditregistration.k8s.io/v1alpha1',
    kind: 'AuditSink'
  } + self.metadata.withName(name=name),
  // ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.
  metadata: {
    withAnnotations(annotations): { metadata+: { annotations: annotations } },
    withAnnotationsMixin(annotations): { metadata+: { annotations+: annotations } },
    withClusterName(clusterName): { metadata+: { clusterName: clusterName } },
    withCreationTimestamp(creationTimestamp): { metadata+: { creationTimestamp: creationTimestamp } },
    withDeletionGracePeriodSeconds(deletionGracePeriodSeconds): { metadata+: { deletionGracePeriodSeconds: deletionGracePeriodSeconds } },
    withDeletionTimestamp(deletionTimestamp): { metadata+: { deletionTimestamp: deletionTimestamp } },
    withFinalizers(finalizers): { metadata+: { finalizers: if std.isArray(v=finalizers) then finalizers else [finalizers] } },
    withFinalizersMixin(finalizers): { metadata+: { finalizers+: if std.isArray(v=finalizers) then finalizers else [finalizers] } },
    withGenerateName(generateName): { metadata+: { generateName: generateName } },
    withGeneration(generation): { metadata+: { generation: generation } },
    withLabels(labels): { metadata+: { labels: labels } },
    withLabelsMixin(labels): { metadata+: { labels+: labels } },
    withManagedFields(managedFields): { metadata+: { managedFields: if std.isArray(v=managedFields) then managedFields else [managedFields] } },
    withManagedFieldsMixin(managedFields): { metadata+: { managedFields+: if std.isArray(v=managedFields) then managedFields else [managedFields] } },
    withName(name): { metadata+: { name: name } },
    withNamespace(namespace): { metadata+: { namespace: namespace } },
    withOwnerReferences(ownerReferences): { metadata+: { ownerReferences: if std.isArray(v=ownerReferences) then ownerReferences else [ownerReferences] } },
    withOwnerReferencesMixin(ownerReferences): { metadata+: { ownerReferences+: if std.isArray(v=ownerReferences) then ownerReferences else [ownerReferences] } },
    withResourceVersion(resourceVersion): { metadata+: { resourceVersion: resourceVersion } },
    withSelfLink(selfLink): { metadata+: { selfLink: selfLink } },
    withUid(uid): { metadata+: { uid: uid } }
  },
  // AuditSinkSpec holds the spec for the audit sink
  spec: {
    // Policy defines the configuration of how audit events are logged
    policy: {
      withLevel(level): { spec+: { policy+: { level: level } } },
      withStages(stages): { spec+: { policy+: { stages: if std.isArray(v=stages) then stages else [stages] } } },
      withStagesMixin(stages): { spec+: { policy+: { stages+: if std.isArray(v=stages) then stages else [stages] } } }
    },
    // Webhook holds the configuration of the webhook
    webhook: {
      // WebhookClientConfig contains the information to make a connection with the webhook
      clientConfig: {
        // ServiceReference holds a reference to Service.legacy.k8s.io
        service: {
          withName(name): { spec+: { webhook+: { clientConfig+: { service+: { name: name } } } } },
          withNamespace(namespace): { spec+: { webhook+: { clientConfig+: { service+: { namespace: namespace } } } } },
          withPath(path): { spec+: { webhook+: { clientConfig+: { service+: { path: path } } } } },
          withPort(port): { spec+: { webhook+: { clientConfig+: { service+: { port: port } } } } }
        },
        withCaBundle(caBundle): { spec+: { webhook+: { clientConfig+: { caBundle: caBundle } } } },
        withUrl(url): { spec+: { webhook+: { clientConfig+: { url: url } } } }
      },
      // WebhookThrottleConfig holds the configuration for throttling events
      throttle: {
        withBurst(burst): { spec+: { webhook+: { throttle+: { burst: burst } } } },
        withQps(qps): { spec+: { webhook+: { throttle+: { qps: qps } } } }
      }
    }
  },
  mixin: self
}