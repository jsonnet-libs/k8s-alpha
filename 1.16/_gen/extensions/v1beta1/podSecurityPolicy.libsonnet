{
  // new returns an instance of Podsecuritypolicy
  new(name): {
    apiVersion: 'extensions/v1beta1',
    kind: 'PodSecurityPolicy'
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
  // PodSecurityPolicySpec defines the policy enforced. Deprecated: use PodSecurityPolicySpec from policy API Group instead.
  spec: {
    // FSGroupStrategyOptions defines the strategy type and options used to create the strategy. Deprecated: use FSGroupStrategyOptions from policy API Group instead.
    fsGroup: {
      withRanges(ranges): { spec+: { fsGroup+: { ranges: if std.isArray(v=ranges) then ranges else [ranges] } } },
      withRangesMixin(ranges): { spec+: { fsGroup+: { ranges+: if std.isArray(v=ranges) then ranges else [ranges] } } },
      withRule(rule): { spec+: { fsGroup+: { rule: rule } } }
    },
    // RunAsGroupStrategyOptions defines the strategy type and any options used to create the strategy. Deprecated: use RunAsGroupStrategyOptions from policy API Group instead.
    runAsGroup: {
      withRanges(ranges): { spec+: { runAsGroup+: { ranges: if std.isArray(v=ranges) then ranges else [ranges] } } },
      withRangesMixin(ranges): { spec+: { runAsGroup+: { ranges+: if std.isArray(v=ranges) then ranges else [ranges] } } },
      withRule(rule): { spec+: { runAsGroup+: { rule: rule } } }
    },
    // RunAsUserStrategyOptions defines the strategy type and any options used to create the strategy. Deprecated: use RunAsUserStrategyOptions from policy API Group instead.
    runAsUser: {
      withRanges(ranges): { spec+: { runAsUser+: { ranges: if std.isArray(v=ranges) then ranges else [ranges] } } },
      withRangesMixin(ranges): { spec+: { runAsUser+: { ranges+: if std.isArray(v=ranges) then ranges else [ranges] } } },
      withRule(rule): { spec+: { runAsUser+: { rule: rule } } }
    },
    // RuntimeClassStrategyOptions define the strategy that will dictate the allowable RuntimeClasses for a pod.
    runtimeClass: {
      withAllowedRuntimeClassNames(allowedRuntimeClassNames): { spec+: { runtimeClass+: { allowedRuntimeClassNames: if std.isArray(v=allowedRuntimeClassNames) then allowedRuntimeClassNames else [allowedRuntimeClassNames] } } },
      withAllowedRuntimeClassNamesMixin(allowedRuntimeClassNames): { spec+: { runtimeClass+: { allowedRuntimeClassNames+: if std.isArray(v=allowedRuntimeClassNames) then allowedRuntimeClassNames else [allowedRuntimeClassNames] } } },
      withDefaultRuntimeClassName(defaultRuntimeClassName): { spec+: { runtimeClass+: { defaultRuntimeClassName: defaultRuntimeClassName } } }
    },
    // SELinuxStrategyOptions defines the strategy type and any options used to create the strategy. Deprecated: use SELinuxStrategyOptions from policy API Group instead.
    seLinux: {
      // SELinuxOptions are the labels to be applied to the container
      seLinuxOptions: {
        withLevel(level): { spec+: { seLinux+: { seLinuxOptions+: { level: level } } } },
        withRole(role): { spec+: { seLinux+: { seLinuxOptions+: { role: role } } } },
        withType(type): { spec+: { seLinux+: { seLinuxOptions+: { type: type } } } },
        withUser(user): { spec+: { seLinux+: { seLinuxOptions+: { user: user } } } }
      },
      withRule(rule): { spec+: { seLinux+: { rule: rule } } }
    },
    // SupplementalGroupsStrategyOptions defines the strategy type and options used to create the strategy. Deprecated: use SupplementalGroupsStrategyOptions from policy API Group instead.
    supplementalGroups: {
      withRanges(ranges): { spec+: { supplementalGroups+: { ranges: if std.isArray(v=ranges) then ranges else [ranges] } } },
      withRangesMixin(ranges): { spec+: { supplementalGroups+: { ranges+: if std.isArray(v=ranges) then ranges else [ranges] } } },
      withRule(rule): { spec+: { supplementalGroups+: { rule: rule } } }
    },
    withAllowPrivilegeEscalation(allowPrivilegeEscalation): { spec+: { allowPrivilegeEscalation: allowPrivilegeEscalation } },
    withAllowedCSIDrivers(allowedCSIDrivers): { spec+: { allowedCSIDrivers: if std.isArray(v=allowedCSIDrivers) then allowedCSIDrivers else [allowedCSIDrivers] } },
    withAllowedCSIDriversMixin(allowedCSIDrivers): { spec+: { allowedCSIDrivers+: if std.isArray(v=allowedCSIDrivers) then allowedCSIDrivers else [allowedCSIDrivers] } },
    withAllowedCapabilities(allowedCapabilities): { spec+: { allowedCapabilities: if std.isArray(v=allowedCapabilities) then allowedCapabilities else [allowedCapabilities] } },
    withAllowedCapabilitiesMixin(allowedCapabilities): { spec+: { allowedCapabilities+: if std.isArray(v=allowedCapabilities) then allowedCapabilities else [allowedCapabilities] } },
    withAllowedFlexVolumes(allowedFlexVolumes): { spec+: { allowedFlexVolumes: if std.isArray(v=allowedFlexVolumes) then allowedFlexVolumes else [allowedFlexVolumes] } },
    withAllowedFlexVolumesMixin(allowedFlexVolumes): { spec+: { allowedFlexVolumes+: if std.isArray(v=allowedFlexVolumes) then allowedFlexVolumes else [allowedFlexVolumes] } },
    withAllowedHostPaths(allowedHostPaths): { spec+: { allowedHostPaths: if std.isArray(v=allowedHostPaths) then allowedHostPaths else [allowedHostPaths] } },
    withAllowedHostPathsMixin(allowedHostPaths): { spec+: { allowedHostPaths+: if std.isArray(v=allowedHostPaths) then allowedHostPaths else [allowedHostPaths] } },
    withAllowedProcMountTypes(allowedProcMountTypes): { spec+: { allowedProcMountTypes: if std.isArray(v=allowedProcMountTypes) then allowedProcMountTypes else [allowedProcMountTypes] } },
    withAllowedProcMountTypesMixin(allowedProcMountTypes): { spec+: { allowedProcMountTypes+: if std.isArray(v=allowedProcMountTypes) then allowedProcMountTypes else [allowedProcMountTypes] } },
    withAllowedUnsafeSysctls(allowedUnsafeSysctls): { spec+: { allowedUnsafeSysctls: if std.isArray(v=allowedUnsafeSysctls) then allowedUnsafeSysctls else [allowedUnsafeSysctls] } },
    withAllowedUnsafeSysctlsMixin(allowedUnsafeSysctls): { spec+: { allowedUnsafeSysctls+: if std.isArray(v=allowedUnsafeSysctls) then allowedUnsafeSysctls else [allowedUnsafeSysctls] } },
    withDefaultAddCapabilities(defaultAddCapabilities): { spec+: { defaultAddCapabilities: if std.isArray(v=defaultAddCapabilities) then defaultAddCapabilities else [defaultAddCapabilities] } },
    withDefaultAddCapabilitiesMixin(defaultAddCapabilities): { spec+: { defaultAddCapabilities+: if std.isArray(v=defaultAddCapabilities) then defaultAddCapabilities else [defaultAddCapabilities] } },
    withDefaultAllowPrivilegeEscalation(defaultAllowPrivilegeEscalation): { spec+: { defaultAllowPrivilegeEscalation: defaultAllowPrivilegeEscalation } },
    withForbiddenSysctls(forbiddenSysctls): { spec+: { forbiddenSysctls: if std.isArray(v=forbiddenSysctls) then forbiddenSysctls else [forbiddenSysctls] } },
    withForbiddenSysctlsMixin(forbiddenSysctls): { spec+: { forbiddenSysctls+: if std.isArray(v=forbiddenSysctls) then forbiddenSysctls else [forbiddenSysctls] } },
    withHostIPC(hostIPC): { spec+: { hostIPC: hostIPC } },
    withHostNetwork(hostNetwork): { spec+: { hostNetwork: hostNetwork } },
    withHostPID(hostPID): { spec+: { hostPID: hostPID } },
    withHostPorts(hostPorts): { spec+: { hostPorts: if std.isArray(v=hostPorts) then hostPorts else [hostPorts] } },
    withHostPortsMixin(hostPorts): { spec+: { hostPorts+: if std.isArray(v=hostPorts) then hostPorts else [hostPorts] } },
    withPrivileged(privileged): { spec+: { privileged: privileged } },
    withReadOnlyRootFilesystem(readOnlyRootFilesystem): { spec+: { readOnlyRootFilesystem: readOnlyRootFilesystem } },
    withRequiredDropCapabilities(requiredDropCapabilities): { spec+: { requiredDropCapabilities: if std.isArray(v=requiredDropCapabilities) then requiredDropCapabilities else [requiredDropCapabilities] } },
    withRequiredDropCapabilitiesMixin(requiredDropCapabilities): { spec+: { requiredDropCapabilities+: if std.isArray(v=requiredDropCapabilities) then requiredDropCapabilities else [requiredDropCapabilities] } },
    withVolumes(volumes): { spec+: { volumes: if std.isArray(v=volumes) then volumes else [volumes] } },
    withVolumesMixin(volumes): { spec+: { volumes+: if std.isArray(v=volumes) then volumes else [volumes] } }
  },
  mixin: self
}