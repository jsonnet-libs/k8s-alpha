{
  // new returns an instance of Persistentvolumeclaim
  new(name): {
    apiVersion: 'v1',
    kind: 'PersistentVolumeClaim'
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
  // PersistentVolumeClaimSpec describes the common attributes of storage devices and allows a Source for provider-specific attributes
  spec: {
    // TypedLocalObjectReference contains enough information to let you locate the typed referenced object inside the same namespace.
    dataSource: {
      withApiGroup(apiGroup): { spec+: { dataSource+: { apiGroup: apiGroup } } },
      withKind(kind): { spec+: { dataSource+: { kind: kind } } },
      withName(name): { spec+: { dataSource+: { name: name } } }
    },
    // ResourceRequirements describes the compute resource requirements.
    resources: {
      withLimits(limits): { spec+: { resources+: { limits: limits } } },
      withLimitsMixin(limits): { spec+: { resources+: { limits+: limits } } },
      withRequests(requests): { spec+: { resources+: { requests: requests } } },
      withRequestsMixin(requests): { spec+: { resources+: { requests+: requests } } }
    },
    // A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
    selector: {
      withMatchExpressions(matchExpressions): { spec+: { selector+: { matchExpressions: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } } },
      withMatchExpressionsMixin(matchExpressions): { spec+: { selector+: { matchExpressions+: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } } },
      withMatchLabels(matchLabels): { spec+: { selector+: { matchLabels: matchLabels } } },
      withMatchLabelsMixin(matchLabels): { spec+: { selector+: { matchLabels+: matchLabels } } }
    },
    withAccessModes(accessModes): { spec+: { accessModes: if std.isArray(v=accessModes) then accessModes else [accessModes] } },
    withAccessModesMixin(accessModes): { spec+: { accessModes+: if std.isArray(v=accessModes) then accessModes else [accessModes] } },
    withStorageClassName(storageClassName): { spec+: { storageClassName: storageClassName } },
    withVolumeMode(volumeMode): { spec+: { volumeMode: volumeMode } },
    withVolumeName(volumeName): { spec+: { volumeName: volumeName } }
  },
  mixin: self
}