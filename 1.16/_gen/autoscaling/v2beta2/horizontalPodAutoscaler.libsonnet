{
  // new returns an instance of Horizontalpodautoscaler
  new(name): {
    apiVersion: 'autoscaling/v2beta2',
    kind: 'HorizontalPodAutoscaler'
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
  // HorizontalPodAutoscalerSpec describes the desired functionality of the HorizontalPodAutoscaler.
  spec: {
    // CrossVersionObjectReference contains enough information to let you identify the referred resource.
    scaleTargetRef: {
      withKind(kind): { spec+: { scaleTargetRef+: { kind: kind } } },
      withName(name): { spec+: { scaleTargetRef+: { name: name } } }
    },
    withMaxReplicas(maxReplicas): { spec+: { maxReplicas: maxReplicas } },
    withMetrics(metrics): { spec+: { metrics: if std.isArray(v=metrics) then metrics else [metrics] } },
    withMetricsMixin(metrics): { spec+: { metrics+: if std.isArray(v=metrics) then metrics else [metrics] } },
    withMinReplicas(minReplicas): { spec+: { minReplicas: minReplicas } }
  },
  mixin: self
}