{
  withEnv(env): { env: if std.isArray(v=env) then env else [env] },
  withEnvFrom(envFrom): { envFrom: if std.isArray(v=envFrom) then envFrom else [envFrom] },
  withEnvFromMixin(envFrom): { envFrom+: if std.isArray(v=envFrom) then envFrom else [envFrom] },
  withEnvMixin(env): { env+: if std.isArray(v=env) then env else [env] },
  withSelector(selector): { selector: selector },
  withVolumeMounts(volumeMounts): { volumeMounts: if std.isArray(v=volumeMounts) then volumeMounts else [volumeMounts] },
  withVolumeMountsMixin(volumeMounts): { volumeMounts+: if std.isArray(v=volumeMounts) then volumeMounts else [volumeMounts] },
  withVolumes(volumes): { volumes: if std.isArray(v=volumes) then volumes else [volumes] },
  withVolumesMixin(volumes): { volumes+: if std.isArray(v=volumes) then volumes else [volumes] },
  mixin: self
}