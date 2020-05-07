{
  // new returns an instance of Eviction
  new(name): {
    apiVersion: 'policy/v1beta1',
    kind: 'Eviction'
  } + self.metadata.withName(name=name),
  // DeleteOptions may be provided when deleting an API object.
  deleteOptions: {
    // Preconditions must be fulfilled before an operation (update, delete, etc.) is carried out.
    preconditions: {
      withResourceVersion(resourceVersion): { deleteOptions+: { preconditions+: { resourceVersion: resourceVersion } } },
      withUid(uid): { deleteOptions+: { preconditions+: { uid: uid } } }
    },
    withDryRun(dryRun): { deleteOptions+: { dryRun: if std.isArray(v=dryRun) then dryRun else [dryRun] } },
    withDryRunMixin(dryRun): { deleteOptions+: { dryRun+: if std.isArray(v=dryRun) then dryRun else [dryRun] } },
    withGracePeriodSeconds(gracePeriodSeconds): { deleteOptions+: { gracePeriodSeconds: gracePeriodSeconds } },
    withKind(kind): { deleteOptions+: { kind: kind } },
    withOrphanDependents(orphanDependents): { deleteOptions+: { orphanDependents: orphanDependents } },
    withPropagationPolicy(propagationPolicy): { deleteOptions+: { propagationPolicy: propagationPolicy } }
  },
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
  mixin: self
}