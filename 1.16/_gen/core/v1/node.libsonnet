{
  // new returns an instance of Node
  new(name): {
    apiVersion: 'v1',
    kind: 'Node'
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
  // NodeSpec describes the attributes that a node is created with.
  spec: {
    // NodeConfigSource specifies a source of node configuration. Exactly one subfield (excluding metadata) must be non-nil.
    configSource: { configMap: {
      withKubeletConfigKey(kubeletConfigKey): { spec+: { configSource+: { configMap+: { kubeletConfigKey: kubeletConfigKey } } } },
      withName(name): { spec+: { configSource+: { configMap+: { name: name } } } },
      withNamespace(namespace): { spec+: { configSource+: { configMap+: { namespace: namespace } } } },
      withResourceVersion(resourceVersion): { spec+: { configSource+: { configMap+: { resourceVersion: resourceVersion } } } },
      withUid(uid): { spec+: { configSource+: { configMap+: { uid: uid } } } }
    } },
    withExternalID(externalID): { spec+: { externalID: externalID } },
    withPodCIDR(podCIDR): { spec+: { podCIDR: podCIDR } },
    withPodCIDRs(podCIDRs): { spec+: { podCIDRs: if std.isArray(v=podCIDRs) then podCIDRs else [podCIDRs] } },
    withPodCIDRsMixin(podCIDRs): { spec+: { podCIDRs+: if std.isArray(v=podCIDRs) then podCIDRs else [podCIDRs] } },
    withProviderID(providerID): { spec+: { providerID: providerID } },
    withTaints(taints): { spec+: { taints: if std.isArray(v=taints) then taints else [taints] } },
    withTaintsMixin(taints): { spec+: { taints+: if std.isArray(v=taints) then taints else [taints] } },
    withUnschedulable(unschedulable): { spec+: { unschedulable: unschedulable } }
  },
  mixin: self
}