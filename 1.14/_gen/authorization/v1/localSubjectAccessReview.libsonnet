{
  // new returns an instance of Localsubjectaccessreview
  new(name): {
    apiVersion: 'authorization.k8s.io/v1',
    kind: 'LocalSubjectAccessReview'
  } + self.metadata.withName(name=name),
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
  // SubjectAccessReviewSpec is a description of the access request.  Exactly one of ResourceAuthorizationAttributes and NonResourceAuthorizationAttributes must be set
  spec: {
    // NonResourceAttributes includes the authorization attributes available for non-resource requests to the Authorizer interface
    nonResourceAttributes: {
      withPath(path): { spec+: { nonResourceAttributes+: { path: path } } },
      withVerb(verb): { spec+: { nonResourceAttributes+: { verb: verb } } }
    },
    // ResourceAttributes includes the authorization attributes available for resource requests to the Authorizer interface
    resourceAttributes: {
      withGroup(group): { spec+: { resourceAttributes+: { group: group } } },
      withName(name): { spec+: { resourceAttributes+: { name: name } } },
      withNamespace(namespace): { spec+: { resourceAttributes+: { namespace: namespace } } },
      withResource(resource): { spec+: { resourceAttributes+: { resource: resource } } },
      withSubresource(subresource): { spec+: { resourceAttributes+: { subresource: subresource } } },
      withVerb(verb): { spec+: { resourceAttributes+: { verb: verb } } },
      withVersion(version): { spec+: { resourceAttributes+: { version: version } } }
    },
    withExtra(extra): { spec+: { extra: extra } },
    withExtraMixin(extra): { spec+: { extra+: extra } },
    withGroups(groups): { spec+: { groups: if std.isArray(v=groups) then groups else [groups] } },
    withGroupsMixin(groups): { spec+: { groups+: if std.isArray(v=groups) then groups else [groups] } },
    withUid(uid): { spec+: { uid: uid } },
    withUser(user): { spec+: { user: user } }
  },
  mixin: self
}