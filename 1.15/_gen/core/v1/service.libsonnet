{
  // new returns an instance of Service
  new(name): {
    apiVersion: 'v1',
    kind: 'Service'
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
    withLoadBalancerIP(loadBalancerIP): { spec+: { loadBalancerIP: loadBalancerIP } },
    withLoadBalancerSourceRanges(loadBalancerSourceRanges): { spec+: { loadBalancerSourceRanges: if std.isArray(v=loadBalancerSourceRanges) then loadBalancerSourceRanges else [loadBalancerSourceRanges] } },
    withLoadBalancerSourceRangesMixin(loadBalancerSourceRanges): { spec+: { loadBalancerSourceRanges+: if std.isArray(v=loadBalancerSourceRanges) then loadBalancerSourceRanges else [loadBalancerSourceRanges] } },
    withPorts(ports): { spec+: { ports: if std.isArray(v=ports) then ports else [ports] } },
    withPortsMixin(ports): { spec+: { ports+: if std.isArray(v=ports) then ports else [ports] } },
    withPublishNotReadyAddresses(publishNotReadyAddresses): { spec+: { publishNotReadyAddresses: publishNotReadyAddresses } },
    withSelector(selector): { spec+: { selector: selector } },
    withSelectorMixin(selector): { spec+: { selector+: selector } },
    withSessionAffinity(sessionAffinity): { spec+: { sessionAffinity: sessionAffinity } },
    withType(type): { spec+: { type: type } }
  },
  mixin: self
}