{
  // new returns an instance of Flowschema
  new(name): {
    apiVersion: 'flowcontrol.apiserver.k8s.io/v1alpha1',
    kind: 'FlowSchema'
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
  // FlowSchemaSpec describes how the FlowSchema's specification looks like.
  spec: {
    // FlowDistinguisherMethod specifies the method of a flow distinguisher.
    distinguisherMethod: {
      withType(type): { spec+: { distinguisherMethod+: { type: type } } }
    },
    // PriorityLevelConfigurationReference contains information that points to the "request-priority" being used.
    priorityLevelConfiguration: {
      withName(name): { spec+: { priorityLevelConfiguration+: { name: name } } }
    },
    withMatchingPrecedence(matchingPrecedence): { spec+: { matchingPrecedence: matchingPrecedence } },
    withRules(rules): { spec+: { rules: if std.isArray(v=rules) then rules else [rules] } },
    withRulesMixin(rules): { spec+: { rules+: if std.isArray(v=rules) then rules else [rules] } }
  },
  mixin: self
}