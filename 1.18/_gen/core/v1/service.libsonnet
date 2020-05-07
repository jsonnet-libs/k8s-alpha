{
  // new returns an instance of Service
  new(name): {
    apiVersion: 'v1',
    kind: 'Service'
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
  // ServiceSpec describes the attributes that a user creates on a service.
  spec: {
    // SessionAffinityConfig represents the configurations of session affinity.
    sessionAffinityConfig: { clientIP: {
      withTimeoutSeconds(timeoutSeconds): { spec+: { sessionAffinityConfig+: { clientIP+: { timeoutSeconds: timeoutSeconds } } } }
    } },
    withClusterIP(clusterIP): { spec+: { clusterIP: clusterIP } },
    withExternalIPs(externalIPs): { spec+: { externalIPs: if std.isArray(v=externalIPs) then externalIPs else [externalIPs] } },
    withExternalIPsMixin(externalIPs): { spec+: { externalIPs+: if std.isArray(v=externalIPs) then externalIPs else [externalIPs] } },
    withExternalName(externalName): { spec+: { externalName: externalName } },
    withExternalTrafficPolicy(externalTrafficPolicy): { spec+: { externalTrafficPolicy: externalTrafficPolicy } },
    withHealthCheckNodePort(healthCheckNodePort): { spec+: { healthCheckNodePort: healthCheckNodePort } },
    withIpFamily(ipFamily): { spec+: { ipFamily: ipFamily } },
    withLoadBalancerIP(loadBalancerIP): { spec+: { loadBalancerIP: loadBalancerIP } },
    withLoadBalancerSourceRanges(loadBalancerSourceRanges): { spec+: { loadBalancerSourceRanges: if std.isArray(v=loadBalancerSourceRanges) then loadBalancerSourceRanges else [loadBalancerSourceRanges] } },
    withLoadBalancerSourceRangesMixin(loadBalancerSourceRanges): { spec+: { loadBalancerSourceRanges+: if std.isArray(v=loadBalancerSourceRanges) then loadBalancerSourceRanges else [loadBalancerSourceRanges] } },
    withPorts(ports): { spec+: { ports: if std.isArray(v=ports) then ports else [ports] } },
    withPortsMixin(ports): { spec+: { ports+: if std.isArray(v=ports) then ports else [ports] } },
    withPublishNotReadyAddresses(publishNotReadyAddresses): { spec+: { publishNotReadyAddresses: publishNotReadyAddresses } },
    withSelector(selector): { spec+: { selector: selector } },
    withSelectorMixin(selector): { spec+: { selector+: selector } },
    withSessionAffinity(sessionAffinity): { spec+: { sessionAffinity: sessionAffinity } },
    withTopologyKeys(topologyKeys): { spec+: { topologyKeys: if std.isArray(v=topologyKeys) then topologyKeys else [topologyKeys] } },
    withTopologyKeysMixin(topologyKeys): { spec+: { topologyKeys+: if std.isArray(v=topologyKeys) then topologyKeys else [topologyKeys] } },
    withType(type): { spec+: { type: type } }
  },
  mixin: self
}