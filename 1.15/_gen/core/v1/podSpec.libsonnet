{
  // Affinity is a group of affinity scheduling rules.
  affinity: {
    // Node affinity is a group of node affinity scheduling rules.
    nodeAffinity: {
      // A node selector represents the union of the results of one or more label queries over a set of nodes; that is, it represents the OR of the selectors represented by the node selector terms.
      requiredDuringSchedulingIgnoredDuringExecution: {
        withNodeSelectorTerms(nodeSelectorTerms): { affinity+: { nodeAffinity+: { requiredDuringSchedulingIgnoredDuringExecution+: { nodeSelectorTerms: if std.isArray(v=nodeSelectorTerms) then nodeSelectorTerms else [nodeSelectorTerms] } } } },
        withNodeSelectorTermsMixin(nodeSelectorTerms): { affinity+: { nodeAffinity+: { requiredDuringSchedulingIgnoredDuringExecution+: { nodeSelectorTerms+: if std.isArray(v=nodeSelectorTerms) then nodeSelectorTerms else [nodeSelectorTerms] } } } }
      },
      withPreferredDuringSchedulingIgnoredDuringExecution(preferredDuringSchedulingIgnoredDuringExecution): { affinity+: { nodeAffinity+: { preferredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } },
      withPreferredDuringSchedulingIgnoredDuringExecutionMixin(preferredDuringSchedulingIgnoredDuringExecution): { affinity+: { nodeAffinity+: { preferredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } }
    },
    // Pod affinity is a group of inter pod affinity scheduling rules.
    podAffinity: {
      withPreferredDuringSchedulingIgnoredDuringExecution(preferredDuringSchedulingIgnoredDuringExecution): { affinity+: { podAffinity+: { preferredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } },
      withPreferredDuringSchedulingIgnoredDuringExecutionMixin(preferredDuringSchedulingIgnoredDuringExecution): { affinity+: { podAffinity+: { preferredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } },
      withRequiredDuringSchedulingIgnoredDuringExecution(requiredDuringSchedulingIgnoredDuringExecution): { affinity+: { podAffinity+: { requiredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=requiredDuringSchedulingIgnoredDuringExecution) then requiredDuringSchedulingIgnoredDuringExecution else [requiredDuringSchedulingIgnoredDuringExecution] } } },
      withRequiredDuringSchedulingIgnoredDuringExecutionMixin(requiredDuringSchedulingIgnoredDuringExecution): { affinity+: { podAffinity+: { requiredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=requiredDuringSchedulingIgnoredDuringExecution) then requiredDuringSchedulingIgnoredDuringExecution else [requiredDuringSchedulingIgnoredDuringExecution] } } }
    },
    // Pod anti affinity is a group of inter pod anti affinity scheduling rules.
    podAntiAffinity: {
      withPreferredDuringSchedulingIgnoredDuringExecution(preferredDuringSchedulingIgnoredDuringExecution): { affinity+: { podAntiAffinity+: { preferredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } },
      withPreferredDuringSchedulingIgnoredDuringExecutionMixin(preferredDuringSchedulingIgnoredDuringExecution): { affinity+: { podAntiAffinity+: { preferredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } },
      withRequiredDuringSchedulingIgnoredDuringExecution(requiredDuringSchedulingIgnoredDuringExecution): { affinity+: { podAntiAffinity+: { requiredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=requiredDuringSchedulingIgnoredDuringExecution) then requiredDuringSchedulingIgnoredDuringExecution else [requiredDuringSchedulingIgnoredDuringExecution] } } },
      withRequiredDuringSchedulingIgnoredDuringExecutionMixin(requiredDuringSchedulingIgnoredDuringExecution): { affinity+: { podAntiAffinity+: { requiredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=requiredDuringSchedulingIgnoredDuringExecution) then requiredDuringSchedulingIgnoredDuringExecution else [requiredDuringSchedulingIgnoredDuringExecution] } } }
    }
  },
  // PodDNSConfig defines the DNS parameters of a pod in addition to those generated from DNSPolicy.
  dnsConfig: {
    withNameservers(nameservers): { dnsConfig+: { nameservers: if std.isArray(v=nameservers) then nameservers else [nameservers] } },
    withNameserversMixin(nameservers): { dnsConfig+: { nameservers+: if std.isArray(v=nameservers) then nameservers else [nameservers] } },
    withOptions(options): { dnsConfig+: { options: if std.isArray(v=options) then options else [options] } },
    withOptionsMixin(options): { dnsConfig+: { options+: if std.isArray(v=options) then options else [options] } },
    withSearches(searches): { dnsConfig+: { searches: if std.isArray(v=searches) then searches else [searches] } },
    withSearchesMixin(searches): { dnsConfig+: { searches+: if std.isArray(v=searches) then searches else [searches] } }
  },
  // PodSecurityContext holds pod-level security attributes and common container settings. Some fields are also present in container.securityContext.  Field values of container.securityContext take precedence over field values of PodSecurityContext.
  securityContext: {
    // SELinuxOptions are the labels to be applied to the container
    seLinuxOptions: {
      withLevel(level): { securityContext+: { seLinuxOptions+: { level: level } } },
      withRole(role): { securityContext+: { seLinuxOptions+: { role: role } } },
      withType(type): { securityContext+: { seLinuxOptions+: { type: type } } },
      withUser(user): { securityContext+: { seLinuxOptions+: { user: user } } }
    },
    // WindowsSecurityContextOptions contain Windows-specific options and credentials.
    windowsOptions: {
      withGmsaCredentialSpec(gmsaCredentialSpec): { securityContext+: { windowsOptions+: { gmsaCredentialSpec: gmsaCredentialSpec } } },
      withGmsaCredentialSpecName(gmsaCredentialSpecName): { securityContext+: { windowsOptions+: { gmsaCredentialSpecName: gmsaCredentialSpecName } } }
    },
    withFsGroup(fsGroup): { securityContext+: { fsGroup: fsGroup } },
    withRunAsGroup(runAsGroup): { securityContext+: { runAsGroup: runAsGroup } },
    withRunAsNonRoot(runAsNonRoot): { securityContext+: { runAsNonRoot: runAsNonRoot } },
    withRunAsUser(runAsUser): { securityContext+: { runAsUser: runAsUser } },
    withSupplementalGroups(supplementalGroups): { securityContext+: { supplementalGroups: if std.isArray(v=supplementalGroups) then supplementalGroups else [supplementalGroups] } },
    withSupplementalGroupsMixin(supplementalGroups): { securityContext+: { supplementalGroups+: if std.isArray(v=supplementalGroups) then supplementalGroups else [supplementalGroups] } },
    withSysctls(sysctls): { securityContext+: { sysctls: if std.isArray(v=sysctls) then sysctls else [sysctls] } },
    withSysctlsMixin(sysctls): { securityContext+: { sysctls+: if std.isArray(v=sysctls) then sysctls else [sysctls] } }
  },
  withActiveDeadlineSeconds(activeDeadlineSeconds): { activeDeadlineSeconds: activeDeadlineSeconds },
  withAutomountServiceAccountToken(automountServiceAccountToken): { automountServiceAccountToken: automountServiceAccountToken },
  withContainers(containers): { containers: if std.isArray(v=containers) then containers else [containers] },
  withContainersMixin(containers): { containers+: if std.isArray(v=containers) then containers else [containers] },
  withDnsPolicy(dnsPolicy): { dnsPolicy: dnsPolicy },
  withEnableServiceLinks(enableServiceLinks): { enableServiceLinks: enableServiceLinks },
  withHostAliases(hostAliases): { hostAliases: if std.isArray(v=hostAliases) then hostAliases else [hostAliases] },
  withHostAliasesMixin(hostAliases): { hostAliases+: if std.isArray(v=hostAliases) then hostAliases else [hostAliases] },
  withHostIPC(hostIPC): { hostIPC: hostIPC },
  withHostNetwork(hostNetwork): { hostNetwork: hostNetwork },
  withHostPID(hostPID): { hostPID: hostPID },
  withHostname(hostname): { hostname: hostname },
  withImagePullSecrets(imagePullSecrets): { imagePullSecrets: if std.isArray(v=imagePullSecrets) then imagePullSecrets else [imagePullSecrets] },
  withImagePullSecretsMixin(imagePullSecrets): { imagePullSecrets+: if std.isArray(v=imagePullSecrets) then imagePullSecrets else [imagePullSecrets] },
  withInitContainers(initContainers): { initContainers: if std.isArray(v=initContainers) then initContainers else [initContainers] },
  withInitContainersMixin(initContainers): { initContainers+: if std.isArray(v=initContainers) then initContainers else [initContainers] },
  withNodeName(nodeName): { nodeName: nodeName },
  withNodeSelector(nodeSelector): { nodeSelector: nodeSelector },
  withNodeSelectorMixin(nodeSelector): { nodeSelector+: nodeSelector },
  withPreemptionPolicy(preemptionPolicy): { preemptionPolicy: preemptionPolicy },
  withPriority(priority): { priority: priority },
  withPriorityClassName(priorityClassName): { priorityClassName: priorityClassName },
  withReadinessGates(readinessGates): { readinessGates: if std.isArray(v=readinessGates) then readinessGates else [readinessGates] },
  withReadinessGatesMixin(readinessGates): { readinessGates+: if std.isArray(v=readinessGates) then readinessGates else [readinessGates] },
  withRestartPolicy(restartPolicy): { restartPolicy: restartPolicy },
  withRuntimeClassName(runtimeClassName): { runtimeClassName: runtimeClassName },
  withSchedulerName(schedulerName): { schedulerName: schedulerName },
  withServiceAccount(serviceAccount): { serviceAccount: serviceAccount },
  withServiceAccountName(serviceAccountName): { serviceAccountName: serviceAccountName },
  withShareProcessNamespace(shareProcessNamespace): { shareProcessNamespace: shareProcessNamespace },
  withSubdomain(subdomain): { subdomain: subdomain },
  withTerminationGracePeriodSeconds(terminationGracePeriodSeconds): { terminationGracePeriodSeconds: terminationGracePeriodSeconds },
  withTolerations(tolerations): { tolerations: if std.isArray(v=tolerations) then tolerations else [tolerations] },
  withTolerationsMixin(tolerations): { tolerations+: if std.isArray(v=tolerations) then tolerations else [tolerations] },
  withVolumes(volumes): { volumes: if std.isArray(v=volumes) then volumes else [volumes] },
  withVolumesMixin(volumes): { volumes+: if std.isArray(v=volumes) then volumes else [volumes] },
  mixin: self
}