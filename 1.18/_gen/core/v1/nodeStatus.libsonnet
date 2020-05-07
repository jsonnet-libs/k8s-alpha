{
  // NodeConfigStatus describes the status of the config assigned by Node.Spec.ConfigSource.
  config: {
    // NodeConfigSource specifies a source of node configuration. Exactly one subfield (excluding metadata) must be non-nil.
    active: { configMap: {
      withKubeletConfigKey(kubeletConfigKey): { config+: { active+: { configMap+: { kubeletConfigKey: kubeletConfigKey } } } },
      withName(name): { config+: { active+: { configMap+: { name: name } } } },
      withNamespace(namespace): { config+: { active+: { configMap+: { namespace: namespace } } } },
      withResourceVersion(resourceVersion): { config+: { active+: { configMap+: { resourceVersion: resourceVersion } } } },
      withUid(uid): { config+: { active+: { configMap+: { uid: uid } } } }
    } },
    // NodeConfigSource specifies a source of node configuration. Exactly one subfield (excluding metadata) must be non-nil.
    assigned: { configMap: {
      withKubeletConfigKey(kubeletConfigKey): { config+: { assigned+: { configMap+: { kubeletConfigKey: kubeletConfigKey } } } },
      withName(name): { config+: { assigned+: { configMap+: { name: name } } } },
      withNamespace(namespace): { config+: { assigned+: { configMap+: { namespace: namespace } } } },
      withResourceVersion(resourceVersion): { config+: { assigned+: { configMap+: { resourceVersion: resourceVersion } } } },
      withUid(uid): { config+: { assigned+: { configMap+: { uid: uid } } } }
    } },
    // NodeConfigSource specifies a source of node configuration. Exactly one subfield (excluding metadata) must be non-nil.
    lastKnownGood: { configMap: {
      withKubeletConfigKey(kubeletConfigKey): { config+: { lastKnownGood+: { configMap+: { kubeletConfigKey: kubeletConfigKey } } } },
      withName(name): { config+: { lastKnownGood+: { configMap+: { name: name } } } },
      withNamespace(namespace): { config+: { lastKnownGood+: { configMap+: { namespace: namespace } } } },
      withResourceVersion(resourceVersion): { config+: { lastKnownGood+: { configMap+: { resourceVersion: resourceVersion } } } },
      withUid(uid): { config+: { lastKnownGood+: { configMap+: { uid: uid } } } }
    } },
    withError(err): { config+: { 'error': err } }
  },
  // NodeDaemonEndpoints lists ports opened by daemons running on the Node.
  daemonEndpoints: { kubeletEndpoint: {
    withPort(port): { daemonEndpoints+: { kubeletEndpoint+: { port: port } } }
  } },
  // NodeSystemInfo is a set of ids/uuids to uniquely identify the node.
  nodeInfo: {
    withArchitecture(architecture): { nodeInfo+: { architecture: architecture } },
    withBootID(bootID): { nodeInfo+: { bootID: bootID } },
    withContainerRuntimeVersion(containerRuntimeVersion): { nodeInfo+: { containerRuntimeVersion: containerRuntimeVersion } },
    withKernelVersion(kernelVersion): { nodeInfo+: { kernelVersion: kernelVersion } },
    withKubeProxyVersion(kubeProxyVersion): { nodeInfo+: { kubeProxyVersion: kubeProxyVersion } },
    withKubeletVersion(kubeletVersion): { nodeInfo+: { kubeletVersion: kubeletVersion } },
    withMachineID(machineID): { nodeInfo+: { machineID: machineID } },
    withOperatingSystem(operatingSystem): { nodeInfo+: { operatingSystem: operatingSystem } },
    withOsImage(osImage): { nodeInfo+: { osImage: osImage } },
    withSystemUUID(systemUUID): { nodeInfo+: { systemUUID: systemUUID } }
  },
  withAddresses(addresses): { addresses: if std.isArray(v=addresses) then addresses else [addresses] },
  withAddressesMixin(addresses): { addresses+: if std.isArray(v=addresses) then addresses else [addresses] },
  withAllocatable(allocatable): { allocatable: allocatable },
  withAllocatableMixin(allocatable): { allocatable+: allocatable },
  withCapacity(capacity): { capacity: capacity },
  withCapacityMixin(capacity): { capacity+: capacity },
  withConditions(conditions): { conditions: if std.isArray(v=conditions) then conditions else [conditions] },
  withConditionsMixin(conditions): { conditions+: if std.isArray(v=conditions) then conditions else [conditions] },
  withImages(images): { images: if std.isArray(v=images) then images else [images] },
  withImagesMixin(images): { images+: if std.isArray(v=images) then images else [images] },
  withPhase(phase): { phase: phase },
  withVolumesAttached(volumesAttached): { volumesAttached: if std.isArray(v=volumesAttached) then volumesAttached else [volumesAttached] },
  withVolumesAttachedMixin(volumesAttached): { volumesAttached+: if std.isArray(v=volumesAttached) then volumesAttached else [volumesAttached] },
  withVolumesInUse(volumesInUse): { volumesInUse: if std.isArray(v=volumesInUse) then volumesInUse else [volumesInUse] },
  withVolumesInUseMixin(volumesInUse): { volumesInUse+: if std.isArray(v=volumesInUse) then volumesInUse else [volumesInUse] },
  mixin: self
}