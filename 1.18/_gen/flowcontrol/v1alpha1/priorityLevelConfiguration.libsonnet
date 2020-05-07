{
  // new returns an instance of Prioritylevelconfiguration
  new(name): {
    apiVersion: 'flowcontrol.apiserver.k8s.io/v1alpha1',
    kind: 'PriorityLevelConfiguration'
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
  // PriorityLevelConfigurationSpec specifies the configuration of a priority level.
  spec: {
    // LimitedPriorityLevelConfiguration specifies how to handle requests that are subject to limits. It addresses two issues:
    //  * How are requests for this priority level limited?
    //  * What should be done with requests that exceed the limit?
    limited: {
      // LimitResponse defines how to handle requests that can not be executed right now.
      limitResponse: {
        // QueuingConfiguration holds the configuration parameters for queuing
        queuing: {
          withHandSize(handSize): { spec+: { limited+: { limitResponse+: { queuing+: { handSize: handSize } } } } },
          withQueueLengthLimit(queueLengthLimit): { spec+: { limited+: { limitResponse+: { queuing+: { queueLengthLimit: queueLengthLimit } } } } },
          withQueues(queues): { spec+: { limited+: { limitResponse+: { queuing+: { queues: queues } } } } }
        },
        withType(type): { spec+: { limited+: { limitResponse+: { type: type } } } }
      },
      withAssuredConcurrencyShares(assuredConcurrencyShares): { spec+: { limited+: { assuredConcurrencyShares: assuredConcurrencyShares } } }
    },
    withType(type): { spec+: { type: type } }
  },
  mixin: self
}