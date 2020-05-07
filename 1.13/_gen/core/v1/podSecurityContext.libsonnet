{
  withFsGroup(fsGroup): { fsGroup: fsGroup },
  withRunAsGroup(runAsGroup): { runAsGroup: runAsGroup },
  withRunAsNonRoot(runAsNonRoot): { runAsNonRoot: runAsNonRoot },
  withRunAsUser(runAsUser): { runAsUser: runAsUser },
  withSeLinuxOptions(seLinuxOptions): { seLinuxOptions: seLinuxOptions },
  withSupplementalGroups(supplementalGroups): { supplementalGroups: if std.isArray(v=supplementalGroups) then supplementalGroups else [supplementalGroups] },
  withSupplementalGroupsMixin(supplementalGroups): { supplementalGroups+: if std.isArray(v=supplementalGroups) then supplementalGroups else [supplementalGroups] },
  withSysctls(sysctls): { sysctls: if std.isArray(v=sysctls) then sysctls else [sysctls] },
  withSysctlsMixin(sysctls): { sysctls+: if std.isArray(v=sysctls) then sysctls else [sysctls] },
  mixin: self
}