{
  // TypedLocalObjectReference contains enough information to let you locate the typed referenced object inside the same namespace.
  dataSource: {
    withApiGroup(apiGroup): { dataSource+: { apiGroup: apiGroup } },
    withKind(kind): { dataSource+: { kind: kind } },
    withName(name): { dataSource+: { name: name } }
  },
  // ResourceRequirements describes the compute resource requirements.
  resources: {
    withLimits(limits): { resources+: { limits: limits } },
    withLimitsMixin(limits): { resources+: { limits+: limits } },
    withRequests(requests): { resources+: { requests: requests } },
    withRequestsMixin(requests): { resources+: { requests+: requests } }
  },
  // A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
  selector: {
    withMatchExpressions(matchExpressions): { selector+: { matchExpressions: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } },
    withMatchExpressionsMixin(matchExpressions): { selector+: { matchExpressions+: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } },
    withMatchLabels(matchLabels): { selector+: { matchLabels: matchLabels } },
    withMatchLabelsMixin(matchLabels): { selector+: { matchLabels+: matchLabels } }
  },
  withAccessModes(accessModes): { accessModes: if std.isArray(v=accessModes) then accessModes else [accessModes] },
  withAccessModesMixin(accessModes): { accessModes+: if std.isArray(v=accessModes) then accessModes else [accessModes] },
  withStorageClassName(storageClassName): { storageClassName: storageClassName },
  withVolumeMode(volumeMode): { volumeMode: volumeMode },
  withVolumeName(volumeName): { volumeName: volumeName },
  mixin: self
}