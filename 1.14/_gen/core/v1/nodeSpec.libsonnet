{
  // NodeConfigSource specifies a source of node configuration. Exactly one subfield (excluding metadata) must be non-nil.
  configSource: { configMap: {
    withKubeletConfigKey(kubeletConfigKey): { configSource+: { configMap+: { kubeletConfigKey: kubeletConfigKey } } },
    withName(name): { configSource+: { configMap+: { name: name } } },
    withNamespace(namespace): { configSource+: { configMap+: { namespace: namespace } } },
    withResourceVersion(resourceVersion): { configSource+: { configMap+: { resourceVersion: resourceVersion } } },
    withUid(uid): { configSource+: { configMap+: { uid: uid } } }
  } },
  withExternalID(externalID): { externalID: externalID },
  withPodCIDR(podCIDR): { podCIDR: podCIDR },
  withProviderID(providerID): { providerID: providerID },
  withTaints(taints): { taints: if std.isArray(v=taints) then taints else [taints] },
  withTaintsMixin(taints): { taints+: if std.isArray(v=taints) then taints else [taints] },
  withUnschedulable(unschedulable): { unschedulable: unschedulable },
  mixin: self
}