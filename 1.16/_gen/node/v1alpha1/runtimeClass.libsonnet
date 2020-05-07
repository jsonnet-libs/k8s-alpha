{
  // new returns an instance of Runtimeclass
  new(name): {
    apiVersion: 'node.k8s.io/v1alpha1',
    kind: 'RuntimeClass'
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
  // RuntimeClassSpec is a specification of a RuntimeClass. It contains parameters that are required to describe the RuntimeClass to the Container Runtime Interface (CRI) implementation, as well as any other components that need to understand how the pod will be run. The RuntimeClassSpec is immutable.
  spec: {
    // Overhead structure represents the resource overhead associated with running a pod.
    overhead: {
      withPodFixed(podFixed): { spec+: { overhead+: { podFixed: podFixed } } },
      withPodFixedMixin(podFixed): { spec+: { overhead+: { podFixed+: podFixed } } }
    },
    // Scheduling specifies the scheduling constraints for nodes supporting a RuntimeClass.
    scheduling: {
      withNodeSelector(nodeSelector): { spec+: { scheduling+: { nodeSelector: nodeSelector } } },
      withNodeSelectorMixin(nodeSelector): { spec+: { scheduling+: { nodeSelector+: nodeSelector } } },
      withTolerations(tolerations): { spec+: { scheduling+: { tolerations: if std.isArray(v=tolerations) then tolerations else [tolerations] } } },
      withTolerationsMixin(tolerations): { spec+: { scheduling+: { tolerations+: if std.isArray(v=tolerations) then tolerations else [tolerations] } } }
    },
    withRuntimeHandler(runtimeHandler): { spec+: { runtimeHandler: runtimeHandler } }
  },
  mixin: self
}