{
  // new returns an instance of Networkpolicy
  new(name): {
    apiVersion: 'extensions/v1beta1',
    kind: 'NetworkPolicy'
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
  // DEPRECATED 1.9 - This group version of NetworkPolicySpec is deprecated by networking/v1/NetworkPolicySpec.
  spec: {
    // A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
    podSelector: {
      withMatchExpressions(matchExpressions): { spec+: { podSelector+: { matchExpressions: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } } },
      withMatchExpressionsMixin(matchExpressions): { spec+: { podSelector+: { matchExpressions+: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } } },
      withMatchLabels(matchLabels): { spec+: { podSelector+: { matchLabels: matchLabels } } },
      withMatchLabelsMixin(matchLabels): { spec+: { podSelector+: { matchLabels+: matchLabels } } }
    },
    withEgress(egress): { spec+: { egress: if std.isArray(v=egress) then egress else [egress] } },
    withEgressMixin(egress): { spec+: { egress+: if std.isArray(v=egress) then egress else [egress] } },
    withIngress(ingress): { spec+: { ingress: if std.isArray(v=ingress) then ingress else [ingress] } },
    withIngressMixin(ingress): { spec+: { ingress+: if std.isArray(v=ingress) then ingress else [ingress] } },
    withPolicyTypes(policyTypes): { spec+: { policyTypes: if std.isArray(v=policyTypes) then policyTypes else [policyTypes] } },
    withPolicyTypesMixin(policyTypes): { spec+: { policyTypes+: if std.isArray(v=policyTypes) then policyTypes else [policyTypes] } }
  },
  mixin: self
}