{
  // FSGroupStrategyOptions defines the strategy type and options used to create the strategy.
  fsGroup: {
    withRanges(ranges): { fsGroup+: { ranges: if std.isArray(v=ranges) then ranges else [ranges] } },
    withRangesMixin(ranges): { fsGroup+: { ranges+: if std.isArray(v=ranges) then ranges else [ranges] } },
    withRule(rule): { fsGroup+: { rule: rule } }
  },
  // RunAsGroupStrategyOptions defines the strategy type and any options used to create the strategy.
  runAsGroup: {
    withRanges(ranges): { runAsGroup+: { ranges: if std.isArray(v=ranges) then ranges else [ranges] } },
    withRangesMixin(ranges): { runAsGroup+: { ranges+: if std.isArray(v=ranges) then ranges else [ranges] } },
    withRule(rule): { runAsGroup+: { rule: rule } }
  },
  // RunAsUserStrategyOptions defines the strategy type and any options used to create the strategy.
  runAsUser: {
    withRanges(ranges): { runAsUser+: { ranges: if std.isArray(v=ranges) then ranges else [ranges] } },
    withRangesMixin(ranges): { runAsUser+: { ranges+: if std.isArray(v=ranges) then ranges else [ranges] } },
    withRule(rule): { runAsUser+: { rule: rule } }
  },
  // SELinuxStrategyOptions defines the strategy type and any options used to create the strategy.
  seLinux: {
    // SELinuxOptions are the labels to be applied to the container
    seLinuxOptions: {
      withLevel(level): { seLinux+: { seLinuxOptions+: { level: level } } },
      withRole(role): { seLinux+: { seLinuxOptions+: { role: role } } },
      withType(type): { seLinux+: { seLinuxOptions+: { type: type } } },
      withUser(user): { seLinux+: { seLinuxOptions+: { user: user } } }
    },
    withRule(rule): { seLinux+: { rule: rule } }
  },
  // SupplementalGroupsStrategyOptions defines the strategy type and options used to create the strategy.
  supplementalGroups: {
    withRanges(ranges): { supplementalGroups+: { ranges: if std.isArray(v=ranges) then ranges else [ranges] } },
    withRangesMixin(ranges): { supplementalGroups+: { ranges+: if std.isArray(v=ranges) then ranges else [ranges] } },
    withRule(rule): { supplementalGroups+: { rule: rule } }
  },
  withAllowPrivilegeEscalation(allowPrivilegeEscalation): { allowPrivilegeEscalation: allowPrivilegeEscalation },
  withAllowedCSIDrivers(allowedCSIDrivers): { allowedCSIDrivers: if std.isArray(v=allowedCSIDrivers) then allowedCSIDrivers else [allowedCSIDrivers] },
  withAllowedCSIDriversMixin(allowedCSIDrivers): { allowedCSIDrivers+: if std.isArray(v=allowedCSIDrivers) then allowedCSIDrivers else [allowedCSIDrivers] },
  withAllowedCapabilities(allowedCapabilities): { allowedCapabilities: if std.isArray(v=allowedCapabilities) then allowedCapabilities else [allowedCapabilities] },
  withAllowedCapabilitiesMixin(allowedCapabilities): { allowedCapabilities+: if std.isArray(v=allowedCapabilities) then allowedCapabilities else [allowedCapabilities] },
  withAllowedFlexVolumes(allowedFlexVolumes): { allowedFlexVolumes: if std.isArray(v=allowedFlexVolumes) then allowedFlexVolumes else [allowedFlexVolumes] },
  withAllowedFlexVolumesMixin(allowedFlexVolumes): { allowedFlexVolumes+: if std.isArray(v=allowedFlexVolumes) then allowedFlexVolumes else [allowedFlexVolumes] },
  withAllowedHostPaths(allowedHostPaths): { allowedHostPaths: if std.isArray(v=allowedHostPaths) then allowedHostPaths else [allowedHostPaths] },
  withAllowedHostPathsMixin(allowedHostPaths): { allowedHostPaths+: if std.isArray(v=allowedHostPaths) then allowedHostPaths else [allowedHostPaths] },
  withAllowedProcMountTypes(allowedProcMountTypes): { allowedProcMountTypes: if std.isArray(v=allowedProcMountTypes) then allowedProcMountTypes else [allowedProcMountTypes] },
  withAllowedProcMountTypesMixin(allowedProcMountTypes): { allowedProcMountTypes+: if std.isArray(v=allowedProcMountTypes) then allowedProcMountTypes else [allowedProcMountTypes] },
  withAllowedUnsafeSysctls(allowedUnsafeSysctls): { allowedUnsafeSysctls: if std.isArray(v=allowedUnsafeSysctls) then allowedUnsafeSysctls else [allowedUnsafeSysctls] },
  withAllowedUnsafeSysctlsMixin(allowedUnsafeSysctls): { allowedUnsafeSysctls+: if std.isArray(v=allowedUnsafeSysctls) then allowedUnsafeSysctls else [allowedUnsafeSysctls] },
  withDefaultAddCapabilities(defaultAddCapabilities): { defaultAddCapabilities: if std.isArray(v=defaultAddCapabilities) then defaultAddCapabilities else [defaultAddCapabilities] },
  withDefaultAddCapabilitiesMixin(defaultAddCapabilities): { defaultAddCapabilities+: if std.isArray(v=defaultAddCapabilities) then defaultAddCapabilities else [defaultAddCapabilities] },
  withDefaultAllowPrivilegeEscalation(defaultAllowPrivilegeEscalation): { defaultAllowPrivilegeEscalation: defaultAllowPrivilegeEscalation },
  withForbiddenSysctls(forbiddenSysctls): { forbiddenSysctls: if std.isArray(v=forbiddenSysctls) then forbiddenSysctls else [forbiddenSysctls] },
  withForbiddenSysctlsMixin(forbiddenSysctls): { forbiddenSysctls+: if std.isArray(v=forbiddenSysctls) then forbiddenSysctls else [forbiddenSysctls] },
  withHostIPC(hostIPC): { hostIPC: hostIPC },
  withHostNetwork(hostNetwork): { hostNetwork: hostNetwork },
  withHostPID(hostPID): { hostPID: hostPID },
  withHostPorts(hostPorts): { hostPorts: if std.isArray(v=hostPorts) then hostPorts else [hostPorts] },
  withHostPortsMixin(hostPorts): { hostPorts+: if std.isArray(v=hostPorts) then hostPorts else [hostPorts] },
  withPrivileged(privileged): { privileged: privileged },
  withReadOnlyRootFilesystem(readOnlyRootFilesystem): { readOnlyRootFilesystem: readOnlyRootFilesystem },
  withRequiredDropCapabilities(requiredDropCapabilities): { requiredDropCapabilities: if std.isArray(v=requiredDropCapabilities) then requiredDropCapabilities else [requiredDropCapabilities] },
  withRequiredDropCapabilitiesMixin(requiredDropCapabilities): { requiredDropCapabilities+: if std.isArray(v=requiredDropCapabilities) then requiredDropCapabilities else [requiredDropCapabilities] },
  withVolumes(volumes): { volumes: if std.isArray(v=volumes) then volumes else [volumes] },
  withVolumesMixin(volumes): { volumes+: if std.isArray(v=volumes) then volumes else [volumes] },
  mixin: self
}