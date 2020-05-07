{
  // A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
  selector: {
    withMatchExpressions(matchExpressions): { selector+: { matchExpressions: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } },
    withMatchExpressionsMixin(matchExpressions): { selector+: { matchExpressions+: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } },
    withMatchLabels(matchLabels): { selector+: { matchLabels: matchLabels } },
    withMatchLabelsMixin(matchLabels): { selector+: { matchLabels+: matchLabels } }
  },
  withEnv(env): { env: if std.isArray(v=env) then env else [env] },
  withEnvFrom(envFrom): { envFrom: if std.isArray(v=envFrom) then envFrom else [envFrom] },
  withEnvFromMixin(envFrom): { envFrom+: if std.isArray(v=envFrom) then envFrom else [envFrom] },
  withEnvMixin(env): { env+: if std.isArray(v=env) then env else [env] },
  withVolumeMounts(volumeMounts): { volumeMounts: if std.isArray(v=volumeMounts) then volumeMounts else [volumeMounts] },
  withVolumeMountsMixin(volumeMounts): { volumeMounts+: if std.isArray(v=volumeMounts) then volumeMounts else [volumeMounts] },
  withVolumes(volumes): { volumes: if std.isArray(v=volumes) then volumes else [volumes] },
  withVolumesMixin(volumes): { volumes+: if std.isArray(v=volumes) then volumes else [volumes] },
  mixin: self
}