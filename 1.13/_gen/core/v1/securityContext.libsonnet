{
  withAllowPrivilegeEscalation(allowPrivilegeEscalation): { allowPrivilegeEscalation: allowPrivilegeEscalation },
  withCapabilities(capabilities): { capabilities: capabilities },
  withPrivileged(privileged): { privileged: privileged },
  withProcMount(procMount): { procMount: procMount },
  withReadOnlyRootFilesystem(readOnlyRootFilesystem): { readOnlyRootFilesystem: readOnlyRootFilesystem },
  withRunAsGroup(runAsGroup): { runAsGroup: runAsGroup },
  withRunAsNonRoot(runAsNonRoot): { runAsNonRoot: runAsNonRoot },
  withRunAsUser(runAsUser): { runAsUser: runAsUser },
  withSeLinuxOptions(seLinuxOptions): { seLinuxOptions: seLinuxOptions },
  mixin: self
}