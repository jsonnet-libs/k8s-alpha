{
  // new returns an instance of Selfsubjectaccessreview
  new(name): {
    apiVersion: 'authorization.k8s.io/v1beta1',
    kind: 'SelfSubjectAccessReview'
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
  // SelfSubjectAccessReviewSpec is a description of the access request.  Exactly one of ResourceAuthorizationAttributes and NonResourceAuthorizationAttributes must be set
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
    }
  },
  mixin: self
}