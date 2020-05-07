{
  // new returns an instance of Event
  new(name): {
    apiVersion: 'v1',
    kind: 'Event'
  } + self.metadata.withName(name=name),
  // ObjectReference contains enough information to let you inspect or modify the referred object.
  involvedObject: {
    withFieldPath(fieldPath): { involvedObject+: { fieldPath: fieldPath } },
    withKind(kind): { involvedObject+: { kind: kind } },
    withName(name): { involvedObject+: { name: name } },
    withNamespace(namespace): { involvedObject+: { namespace: namespace } },
    withResourceVersion(resourceVersion): { involvedObject+: { resourceVersion: resourceVersion } },
    withUid(uid): { involvedObject+: { uid: uid } }
  },
  // ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.
  metadata: {
    // Initializers tracks the progress of initialization.
    initializers: {
      // Status is a return value for calls that don't return other objects.
      result: {
        // StatusDetails is a set of additional properties that MAY be set by the server to provide additional information about a response. The Reason field of a Status object defines what attributes will be set. Clients must ignore fields that do not match the defined type of each attribute, and should assume that any attribute may be empty, invalid, or under defined.
        details: {
          withCauses(causes): { metadata+: { initializers+: { result+: { details+: { causes: if std.isArray(v=causes) then causes else [causes] } } } } },
          withCausesMixin(causes): { metadata+: { initializers+: { result+: { details+: { causes+: if std.isArray(v=causes) then causes else [causes] } } } } },
          withGroup(group): { metadata+: { initializers+: { result+: { details+: { group: group } } } } },
          withKind(kind): { metadata+: { initializers+: { result+: { details+: { kind: kind } } } } },
          withName(name): { metadata+: { initializers+: { result+: { details+: { name: name } } } } },
          withRetryAfterSeconds(retryAfterSeconds): { metadata+: { initializers+: { result+: { details+: { retryAfterSeconds: retryAfterSeconds } } } } },
          withUid(uid): { metadata+: { initializers+: { result+: { details+: { uid: uid } } } } }
        },
        withCode(code): { metadata+: { initializers+: { result+: { code: code } } } },
        withKind(kind): { metadata+: { initializers+: { result+: { kind: kind } } } },
        withMessage(message): { metadata+: { initializers+: { result+: { message: message } } } },
        withMetadata(metadata): { metadata+: { initializers+: { result+: { metadata: metadata } } } },
        withReason(reason): { metadata+: { initializers+: { result+: { reason: reason } } } }
      },
      withPending(pending): { metadata+: { initializers+: { pending: if std.isArray(v=pending) then pending else [pending] } } },
      withPendingMixin(pending): { metadata+: { initializers+: { pending+: if std.isArray(v=pending) then pending else [pending] } } }
    },
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
  // ObjectReference contains enough information to let you inspect or modify the referred object.
  related: {
    withFieldPath(fieldPath): { related+: { fieldPath: fieldPath } },
    withKind(kind): { related+: { kind: kind } },
    withName(name): { related+: { name: name } },
    withNamespace(namespace): { related+: { namespace: namespace } },
    withResourceVersion(resourceVersion): { related+: { resourceVersion: resourceVersion } },
    withUid(uid): { related+: { uid: uid } }
  },
  // EventSeries contain information on series of events, i.e. thing that was/is happening continuously for some time.
  series: {
    withCount(count): { series+: { count: count } },
    withLastObservedTime(lastObservedTime): { series+: { lastObservedTime: lastObservedTime } },
    withState(state): { series+: { state: state } }
  },
  // EventSource contains information for an event.
  source: {
    withComponent(component): { source+: { component: component } },
    withHost(host): { source+: { host: host } }
  },
  withAction(action): { action: action },
  withCount(count): { count: count },
  withEventTime(eventTime): { eventTime: eventTime },
  withFirstTimestamp(firstTimestamp): { firstTimestamp: firstTimestamp },
  withLastTimestamp(lastTimestamp): { lastTimestamp: lastTimestamp },
  withMessage(message): { message: message },
  withReason(reason): { reason: reason },
  withReportingComponent(reportingComponent): { reportingComponent: reportingComponent },
  withReportingInstance(reportingInstance): { reportingInstance: reportingInstance },
  withType(type): { type: type },
  mixin: self
}