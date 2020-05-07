{
  // VolumeNodeResources is a set of resource limits for scheduling of volumes.
  allocatable: {
    withCount(count): { allocatable+: { count: count } }
  },
  withName(name): { name: name },
  withNodeID(nodeID): { nodeID: nodeID },
  withTopologyKeys(topologyKeys): { topologyKeys: if std.isArray(v=topologyKeys) then topologyKeys else [topologyKeys] },
  withTopologyKeysMixin(topologyKeys): { topologyKeys+: if std.isArray(v=topologyKeys) then topologyKeys else [topologyKeys] },
  mixin: self
}