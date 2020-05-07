{
  // Adds and removes POSIX capabilities from running containers.
  capabilities: {
    withAdd(add): { capabilities+: { add: if std.isArray(v=add) then add else [add] } },
    withAddMixin(add): { capabilities+: { add+: if std.isArray(v=add) then add else [add] } },
    withDrop(drop): { capabilities+: { drop: if std.isArray(v=drop) then drop else [drop] } },
    withDropMixin(drop): { capabilities+: { drop+: if std.isArray(v=drop) then drop else [drop] } }
  },
  // SELinuxOptions are the labels to be applied to the container
  seLinuxOptions: {
    withLevel(level): { seLinuxOptions+: { level: level } },
    withRole(role): { seLinuxOptions+: { role: role } },
    withType(type): { seLinuxOptions+: { type: type } },
    withUser(user): { seLinuxOptions+: { user: user } }
  },
  // WindowsSecurityContextOptions contain Windows-specific options and credentials.
  windowsOptions: {
    withGmsaCredentialSpec(gmsaCredentialSpec): { windowsOptions+: { gmsaCredentialSpec: gmsaCredentialSpec } },
    withGmsaCredentialSpecName(gmsaCredentialSpecName): { windowsOptions+: { gmsaCredentialSpecName: gmsaCredentialSpecName } },
    withRunAsUserName(runAsUserName): { windowsOptions+: { runAsUserName: runAsUserName } }
  },
  withAllowPrivilegeEscalation(allowPrivilegeEscalation): { allowPrivilegeEscalation: allowPrivilegeEscalation },
  withPrivileged(privileged): { privileged: privileged },
  withProcMount(procMount): { procMount: procMount },
  withReadOnlyRootFilesystem(readOnlyRootFilesystem): { readOnlyRootFilesystem: readOnlyRootFilesystem },
  withRunAsGroup(runAsGroup): { runAsGroup: runAsGroup },
  withRunAsNonRoot(runAsNonRoot): { runAsNonRoot: runAsNonRoot },
  withRunAsUser(runAsUser): { runAsUser: runAsUser },
  mixin: self
}