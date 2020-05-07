{
  // new returns an instance of Storageclass
  new(name): {
    apiVersion: 'storage.k8s.io/v1beta1',
    kind: 'StorageClass'
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
  withAllowVolumeExpansion(allowVolumeExpansion): { allowVolumeExpansion: allowVolumeExpansion },
  withAllowedTopologies(allowedTopologies): { allowedTopologies: if std.isArray(v=allowedTopologies) then allowedTopologies else [allowedTopologies] },
  withAllowedTopologiesMixin(allowedTopologies): { allowedTopologies+: if std.isArray(v=allowedTopologies) then allowedTopologies else [allowedTopologies] },
  withMountOptions(mountOptions): { mountOptions: if std.isArray(v=mountOptions) then mountOptions else [mountOptions] },
  withMountOptionsMixin(mountOptions): { mountOptions+: if std.isArray(v=mountOptions) then mountOptions else [mountOptions] },
  withParameters(parameters): { parameters: parameters },
  withParametersMixin(parameters): { parameters+: parameters },
  withProvisioner(provisioner): { provisioner: provisioner },
  withReclaimPolicy(reclaimPolicy): { reclaimPolicy: reclaimPolicy },
  withVolumeBindingMode(volumeBindingMode): { volumeBindingMode: volumeBindingMode },
  mixin: self
}