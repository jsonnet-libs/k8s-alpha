{
  withConfigSource(configSource): { configSource: configSource },
  withExternalID(externalID): { externalID: externalID },
  withPodCIDR(podCIDR): { podCIDR: podCIDR },
  withProviderID(providerID): { providerID: providerID },
  withTaints(taints): { taints: if std.isArray(v=taints) then taints else [taints] },
  withTaintsMixin(taints): { taints+: if std.isArray(v=taints) then taints else [taints] },
  withUnschedulable(unschedulable): { unschedulable: unschedulable },
  mixin: self
}