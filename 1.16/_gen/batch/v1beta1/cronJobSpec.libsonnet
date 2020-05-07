{
  // JobTemplateSpec describes the data a Job should have when created from a template
  jobTemplate: {
    // ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.
    metadata: {
      withAnnotations(annotations): { jobTemplate+: { metadata+: { annotations: annotations } } },
      withAnnotationsMixin(annotations): { jobTemplate+: { metadata+: { annotations+: annotations } } },
      withClusterName(clusterName): { jobTemplate+: { metadata+: { clusterName: clusterName } } },
      withCreationTimestamp(creationTimestamp): { jobTemplate+: { metadata+: { creationTimestamp: creationTimestamp } } },
      withDeletionGracePeriodSeconds(deletionGracePeriodSeconds): { jobTemplate+: { metadata+: { deletionGracePeriodSeconds: deletionGracePeriodSeconds } } },
      withDeletionTimestamp(deletionTimestamp): { jobTemplate+: { metadata+: { deletionTimestamp: deletionTimestamp } } },
      withFinalizers(finalizers): { jobTemplate+: { metadata+: { finalizers: if std.isArray(v=finalizers) then finalizers else [finalizers] } } },
      withFinalizersMixin(finalizers): { jobTemplate+: { metadata+: { finalizers+: if std.isArray(v=finalizers) then finalizers else [finalizers] } } },
      withGenerateName(generateName): { jobTemplate+: { metadata+: { generateName: generateName } } },
      withGeneration(generation): { jobTemplate+: { metadata+: { generation: generation } } },
      withLabels(labels): { jobTemplate+: { metadata+: { labels: labels } } },
      withLabelsMixin(labels): { jobTemplate+: { metadata+: { labels+: labels } } },
      withManagedFields(managedFields): { jobTemplate+: { metadata+: { managedFields: if std.isArray(v=managedFields) then managedFields else [managedFields] } } },
      withManagedFieldsMixin(managedFields): { jobTemplate+: { metadata+: { managedFields+: if std.isArray(v=managedFields) then managedFields else [managedFields] } } },
      withName(name): { jobTemplate+: { metadata+: { name: name } } },
      withNamespace(namespace): { jobTemplate+: { metadata+: { namespace: namespace } } },
      withOwnerReferences(ownerReferences): { jobTemplate+: { metadata+: { ownerReferences: if std.isArray(v=ownerReferences) then ownerReferences else [ownerReferences] } } },
      withOwnerReferencesMixin(ownerReferences): { jobTemplate+: { metadata+: { ownerReferences+: if std.isArray(v=ownerReferences) then ownerReferences else [ownerReferences] } } },
      withResourceVersion(resourceVersion): { jobTemplate+: { metadata+: { resourceVersion: resourceVersion } } },
      withSelfLink(selfLink): { jobTemplate+: { metadata+: { selfLink: selfLink } } },
      withUid(uid): { jobTemplate+: { metadata+: { uid: uid } } }
    },
    // JobSpec describes how the job execution will look like.
    spec: {
      // A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
      selector: {
        withMatchExpressions(matchExpressions): { jobTemplate+: { spec+: { selector+: { matchExpressions: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } } } },
        withMatchExpressionsMixin(matchExpressions): { jobTemplate+: { spec+: { selector+: { matchExpressions+: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } } } },
        withMatchLabels(matchLabels): { jobTemplate+: { spec+: { selector+: { matchLabels: matchLabels } } } },
        withMatchLabelsMixin(matchLabels): { jobTemplate+: { spec+: { selector+: { matchLabels+: matchLabels } } } }
      },
      // PodTemplateSpec describes the data a pod should have when created from a template
      template: {
        // ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.
        metadata: {
          withAnnotations(annotations): { jobTemplate+: { spec+: { template+: { metadata+: { annotations: annotations } } } } },
          withAnnotationsMixin(annotations): { jobTemplate+: { spec+: { template+: { metadata+: { annotations+: annotations } } } } },
          withClusterName(clusterName): { jobTemplate+: { spec+: { template+: { metadata+: { clusterName: clusterName } } } } },
          withCreationTimestamp(creationTimestamp): { jobTemplate+: { spec+: { template+: { metadata+: { creationTimestamp: creationTimestamp } } } } },
          withDeletionGracePeriodSeconds(deletionGracePeriodSeconds): { jobTemplate+: { spec+: { template+: { metadata+: { deletionGracePeriodSeconds: deletionGracePeriodSeconds } } } } },
          withDeletionTimestamp(deletionTimestamp): { jobTemplate+: { spec+: { template+: { metadata+: { deletionTimestamp: deletionTimestamp } } } } },
          withFinalizers(finalizers): { jobTemplate+: { spec+: { template+: { metadata+: { finalizers: if std.isArray(v=finalizers) then finalizers else [finalizers] } } } } },
          withFinalizersMixin(finalizers): { jobTemplate+: { spec+: { template+: { metadata+: { finalizers+: if std.isArray(v=finalizers) then finalizers else [finalizers] } } } } },
          withGenerateName(generateName): { jobTemplate+: { spec+: { template+: { metadata+: { generateName: generateName } } } } },
          withGeneration(generation): { jobTemplate+: { spec+: { template+: { metadata+: { generation: generation } } } } },
          withLabels(labels): { jobTemplate+: { spec+: { template+: { metadata+: { labels: labels } } } } },
          withLabelsMixin(labels): { jobTemplate+: { spec+: { template+: { metadata+: { labels+: labels } } } } },
          withManagedFields(managedFields): { jobTemplate+: { spec+: { template+: { metadata+: { managedFields: if std.isArray(v=managedFields) then managedFields else [managedFields] } } } } },
          withManagedFieldsMixin(managedFields): { jobTemplate+: { spec+: { template+: { metadata+: { managedFields+: if std.isArray(v=managedFields) then managedFields else [managedFields] } } } } },
          withName(name): { jobTemplate+: { spec+: { template+: { metadata+: { name: name } } } } },
          withNamespace(namespace): { jobTemplate+: { spec+: { template+: { metadata+: { namespace: namespace } } } } },
          withOwnerReferences(ownerReferences): { jobTemplate+: { spec+: { template+: { metadata+: { ownerReferences: if std.isArray(v=ownerReferences) then ownerReferences else [ownerReferences] } } } } },
          withOwnerReferencesMixin(ownerReferences): { jobTemplate+: { spec+: { template+: { metadata+: { ownerReferences+: if std.isArray(v=ownerReferences) then ownerReferences else [ownerReferences] } } } } },
          withResourceVersion(resourceVersion): { jobTemplate+: { spec+: { template+: { metadata+: { resourceVersion: resourceVersion } } } } },
          withSelfLink(selfLink): { jobTemplate+: { spec+: { template+: { metadata+: { selfLink: selfLink } } } } },
          withUid(uid): { jobTemplate+: { spec+: { template+: { metadata+: { uid: uid } } } } }
        },
        // PodSpec is a description of a pod.
        spec: {
          // Affinity is a group of affinity scheduling rules.
          affinity: {
            // Node affinity is a group of node affinity scheduling rules.
            nodeAffinity: {
              // A node selector represents the union of the results of one or more label queries over a set of nodes; that is, it represents the OR of the selectors represented by the node selector terms.
              requiredDuringSchedulingIgnoredDuringExecution: {
                withNodeSelectorTerms(nodeSelectorTerms): { jobTemplate+: { spec+: { template+: { spec+: { affinity+: { nodeAffinity+: { requiredDuringSchedulingIgnoredDuringExecution+: { nodeSelectorTerms: if std.isArray(v=nodeSelectorTerms) then nodeSelectorTerms else [nodeSelectorTerms] } } } } } } } },
                withNodeSelectorTermsMixin(nodeSelectorTerms): { jobTemplate+: { spec+: { template+: { spec+: { affinity+: { nodeAffinity+: { requiredDuringSchedulingIgnoredDuringExecution+: { nodeSelectorTerms+: if std.isArray(v=nodeSelectorTerms) then nodeSelectorTerms else [nodeSelectorTerms] } } } } } } } }
              },
              withPreferredDuringSchedulingIgnoredDuringExecution(preferredDuringSchedulingIgnoredDuringExecution): { jobTemplate+: { spec+: { template+: { spec+: { affinity+: { nodeAffinity+: { preferredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } } } } } },
              withPreferredDuringSchedulingIgnoredDuringExecutionMixin(preferredDuringSchedulingIgnoredDuringExecution): { jobTemplate+: { spec+: { template+: { spec+: { affinity+: { nodeAffinity+: { preferredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } } } } } }
            },
            // Pod affinity is a group of inter pod affinity scheduling rules.
            podAffinity: {
              withPreferredDuringSchedulingIgnoredDuringExecution(preferredDuringSchedulingIgnoredDuringExecution): { jobTemplate+: { spec+: { template+: { spec+: { affinity+: { podAffinity+: { preferredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } } } } } },
              withPreferredDuringSchedulingIgnoredDuringExecutionMixin(preferredDuringSchedulingIgnoredDuringExecution): { jobTemplate+: { spec+: { template+: { spec+: { affinity+: { podAffinity+: { preferredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } } } } } },
              withRequiredDuringSchedulingIgnoredDuringExecution(requiredDuringSchedulingIgnoredDuringExecution): { jobTemplate+: { spec+: { template+: { spec+: { affinity+: { podAffinity+: { requiredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=requiredDuringSchedulingIgnoredDuringExecution) then requiredDuringSchedulingIgnoredDuringExecution else [requiredDuringSchedulingIgnoredDuringExecution] } } } } } } },
              withRequiredDuringSchedulingIgnoredDuringExecutionMixin(requiredDuringSchedulingIgnoredDuringExecution): { jobTemplate+: { spec+: { template+: { spec+: { affinity+: { podAffinity+: { requiredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=requiredDuringSchedulingIgnoredDuringExecution) then requiredDuringSchedulingIgnoredDuringExecution else [requiredDuringSchedulingIgnoredDuringExecution] } } } } } } }
            },
            // Pod anti affinity is a group of inter pod anti affinity scheduling rules.
            podAntiAffinity: {
              withPreferredDuringSchedulingIgnoredDuringExecution(preferredDuringSchedulingIgnoredDuringExecution): { jobTemplate+: { spec+: { template+: { spec+: { affinity+: { podAntiAffinity+: { preferredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } } } } } },
              withPreferredDuringSchedulingIgnoredDuringExecutionMixin(preferredDuringSchedulingIgnoredDuringExecution): { jobTemplate+: { spec+: { template+: { spec+: { affinity+: { podAntiAffinity+: { preferredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } } } } } },
              withRequiredDuringSchedulingIgnoredDuringExecution(requiredDuringSchedulingIgnoredDuringExecution): { jobTemplate+: { spec+: { template+: { spec+: { affinity+: { podAntiAffinity+: { requiredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=requiredDuringSchedulingIgnoredDuringExecution) then requiredDuringSchedulingIgnoredDuringExecution else [requiredDuringSchedulingIgnoredDuringExecution] } } } } } } },
              withRequiredDuringSchedulingIgnoredDuringExecutionMixin(requiredDuringSchedulingIgnoredDuringExecution): { jobTemplate+: { spec+: { template+: { spec+: { affinity+: { podAntiAffinity+: { requiredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=requiredDuringSchedulingIgnoredDuringExecution) then requiredDuringSchedulingIgnoredDuringExecution else [requiredDuringSchedulingIgnoredDuringExecution] } } } } } } }
            }
          },
          // PodDNSConfig defines the DNS parameters of a pod in addition to those generated from DNSPolicy.
          dnsConfig: {
            withNameservers(nameservers): { jobTemplate+: { spec+: { template+: { spec+: { dnsConfig+: { nameservers: if std.isArray(v=nameservers) then nameservers else [nameservers] } } } } } },
            withNameserversMixin(nameservers): { jobTemplate+: { spec+: { template+: { spec+: { dnsConfig+: { nameservers+: if std.isArray(v=nameservers) then nameservers else [nameservers] } } } } } },
            withOptions(options): { jobTemplate+: { spec+: { template+: { spec+: { dnsConfig+: { options: if std.isArray(v=options) then options else [options] } } } } } },
            withOptionsMixin(options): { jobTemplate+: { spec+: { template+: { spec+: { dnsConfig+: { options+: if std.isArray(v=options) then options else [options] } } } } } },
            withSearches(searches): { jobTemplate+: { spec+: { template+: { spec+: { dnsConfig+: { searches: if std.isArray(v=searches) then searches else [searches] } } } } } },
            withSearchesMixin(searches): { jobTemplate+: { spec+: { template+: { spec+: { dnsConfig+: { searches+: if std.isArray(v=searches) then searches else [searches] } } } } } }
          },
          // PodSecurityContext holds pod-level security attributes and common container settings. Some fields are also present in container.securityContext.  Field values of container.securityContext take precedence over field values of PodSecurityContext.
          securityContext: {
            // SELinuxOptions are the labels to be applied to the container
            seLinuxOptions: {
              withLevel(level): { jobTemplate+: { spec+: { template+: { spec+: { securityContext+: { seLinuxOptions+: { level: level } } } } } } },
              withRole(role): { jobTemplate+: { spec+: { template+: { spec+: { securityContext+: { seLinuxOptions+: { role: role } } } } } } },
              withType(type): { jobTemplate+: { spec+: { template+: { spec+: { securityContext+: { seLinuxOptions+: { type: type } } } } } } },
              withUser(user): { jobTemplate+: { spec+: { template+: { spec+: { securityContext+: { seLinuxOptions+: { user: user } } } } } } }
            },
            // WindowsSecurityContextOptions contain Windows-specific options and credentials.
            windowsOptions: {
              withGmsaCredentialSpec(gmsaCredentialSpec): { jobTemplate+: { spec+: { template+: { spec+: { securityContext+: { windowsOptions+: { gmsaCredentialSpec: gmsaCredentialSpec } } } } } } },
              withGmsaCredentialSpecName(gmsaCredentialSpecName): { jobTemplate+: { spec+: { template+: { spec+: { securityContext+: { windowsOptions+: { gmsaCredentialSpecName: gmsaCredentialSpecName } } } } } } },
              withRunAsUserName(runAsUserName): { jobTemplate+: { spec+: { template+: { spec+: { securityContext+: { windowsOptions+: { runAsUserName: runAsUserName } } } } } } }
            },
            withFsGroup(fsGroup): { jobTemplate+: { spec+: { template+: { spec+: { securityContext+: { fsGroup: fsGroup } } } } } },
            withRunAsGroup(runAsGroup): { jobTemplate+: { spec+: { template+: { spec+: { securityContext+: { runAsGroup: runAsGroup } } } } } },
            withRunAsNonRoot(runAsNonRoot): { jobTemplate+: { spec+: { template+: { spec+: { securityContext+: { runAsNonRoot: runAsNonRoot } } } } } },
            withRunAsUser(runAsUser): { jobTemplate+: { spec+: { template+: { spec+: { securityContext+: { runAsUser: runAsUser } } } } } },
            withSupplementalGroups(supplementalGroups): { jobTemplate+: { spec+: { template+: { spec+: { securityContext+: { supplementalGroups: if std.isArray(v=supplementalGroups) then supplementalGroups else [supplementalGroups] } } } } } },
            withSupplementalGroupsMixin(supplementalGroups): { jobTemplate+: { spec+: { template+: { spec+: { securityContext+: { supplementalGroups+: if std.isArray(v=supplementalGroups) then supplementalGroups else [supplementalGroups] } } } } } },
            withSysctls(sysctls): { jobTemplate+: { spec+: { template+: { spec+: { securityContext+: { sysctls: if std.isArray(v=sysctls) then sysctls else [sysctls] } } } } } },
            withSysctlsMixin(sysctls): { jobTemplate+: { spec+: { template+: { spec+: { securityContext+: { sysctls+: if std.isArray(v=sysctls) then sysctls else [sysctls] } } } } } }
          },
          withActiveDeadlineSeconds(activeDeadlineSeconds): { jobTemplate+: { spec+: { template+: { spec+: { activeDeadlineSeconds: activeDeadlineSeconds } } } } },
          withAutomountServiceAccountToken(automountServiceAccountToken): { jobTemplate+: { spec+: { template+: { spec+: { automountServiceAccountToken: automountServiceAccountToken } } } } },
          withContainers(containers): { jobTemplate+: { spec+: { template+: { spec+: { containers: if std.isArray(v=containers) then containers else [containers] } } } } },
          withContainersMixin(containers): { jobTemplate+: { spec+: { template+: { spec+: { containers+: if std.isArray(v=containers) then containers else [containers] } } } } },
          withDnsPolicy(dnsPolicy): { jobTemplate+: { spec+: { template+: { spec+: { dnsPolicy: dnsPolicy } } } } },
          withEnableServiceLinks(enableServiceLinks): { jobTemplate+: { spec+: { template+: { spec+: { enableServiceLinks: enableServiceLinks } } } } },
          withEphemeralContainers(ephemeralContainers): { jobTemplate+: { spec+: { template+: { spec+: { ephemeralContainers: if std.isArray(v=ephemeralContainers) then ephemeralContainers else [ephemeralContainers] } } } } },
          withEphemeralContainersMixin(ephemeralContainers): { jobTemplate+: { spec+: { template+: { spec+: { ephemeralContainers+: if std.isArray(v=ephemeralContainers) then ephemeralContainers else [ephemeralContainers] } } } } },
          withHostAliases(hostAliases): { jobTemplate+: { spec+: { template+: { spec+: { hostAliases: if std.isArray(v=hostAliases) then hostAliases else [hostAliases] } } } } },
          withHostAliasesMixin(hostAliases): { jobTemplate+: { spec+: { template+: { spec+: { hostAliases+: if std.isArray(v=hostAliases) then hostAliases else [hostAliases] } } } } },
          withHostIPC(hostIPC): { jobTemplate+: { spec+: { template+: { spec+: { hostIPC: hostIPC } } } } },
          withHostNetwork(hostNetwork): { jobTemplate+: { spec+: { template+: { spec+: { hostNetwork: hostNetwork } } } } },
          withHostPID(hostPID): { jobTemplate+: { spec+: { template+: { spec+: { hostPID: hostPID } } } } },
          withHostname(hostname): { jobTemplate+: { spec+: { template+: { spec+: { hostname: hostname } } } } },
          withImagePullSecrets(imagePullSecrets): { jobTemplate+: { spec+: { template+: { spec+: { imagePullSecrets: if std.isArray(v=imagePullSecrets) then imagePullSecrets else [imagePullSecrets] } } } } },
          withImagePullSecretsMixin(imagePullSecrets): { jobTemplate+: { spec+: { template+: { spec+: { imagePullSecrets+: if std.isArray(v=imagePullSecrets) then imagePullSecrets else [imagePullSecrets] } } } } },
          withInitContainers(initContainers): { jobTemplate+: { spec+: { template+: { spec+: { initContainers: if std.isArray(v=initContainers) then initContainers else [initContainers] } } } } },
          withInitContainersMixin(initContainers): { jobTemplate+: { spec+: { template+: { spec+: { initContainers+: if std.isArray(v=initContainers) then initContainers else [initContainers] } } } } },
          withNodeName(nodeName): { jobTemplate+: { spec+: { template+: { spec+: { nodeName: nodeName } } } } },
          withNodeSelector(nodeSelector): { jobTemplate+: { spec+: { template+: { spec+: { nodeSelector: nodeSelector } } } } },
          withNodeSelectorMixin(nodeSelector): { jobTemplate+: { spec+: { template+: { spec+: { nodeSelector+: nodeSelector } } } } },
          withOverhead(overhead): { jobTemplate+: { spec+: { template+: { spec+: { overhead: overhead } } } } },
          withOverheadMixin(overhead): { jobTemplate+: { spec+: { template+: { spec+: { overhead+: overhead } } } } },
          withPreemptionPolicy(preemptionPolicy): { jobTemplate+: { spec+: { template+: { spec+: { preemptionPolicy: preemptionPolicy } } } } },
          withPriority(priority): { jobTemplate+: { spec+: { template+: { spec+: { priority: priority } } } } },
          withPriorityClassName(priorityClassName): { jobTemplate+: { spec+: { template+: { spec+: { priorityClassName: priorityClassName } } } } },
          withReadinessGates(readinessGates): { jobTemplate+: { spec+: { template+: { spec+: { readinessGates: if std.isArray(v=readinessGates) then readinessGates else [readinessGates] } } } } },
          withReadinessGatesMixin(readinessGates): { jobTemplate+: { spec+: { template+: { spec+: { readinessGates+: if std.isArray(v=readinessGates) then readinessGates else [readinessGates] } } } } },
          withRestartPolicy(restartPolicy): { jobTemplate+: { spec+: { template+: { spec+: { restartPolicy: restartPolicy } } } } },
          withRuntimeClassName(runtimeClassName): { jobTemplate+: { spec+: { template+: { spec+: { runtimeClassName: runtimeClassName } } } } },
          withSchedulerName(schedulerName): { jobTemplate+: { spec+: { template+: { spec+: { schedulerName: schedulerName } } } } },
          withServiceAccount(serviceAccount): { jobTemplate+: { spec+: { template+: { spec+: { serviceAccount: serviceAccount } } } } },
          withServiceAccountName(serviceAccountName): { jobTemplate+: { spec+: { template+: { spec+: { serviceAccountName: serviceAccountName } } } } },
          withShareProcessNamespace(shareProcessNamespace): { jobTemplate+: { spec+: { template+: { spec+: { shareProcessNamespace: shareProcessNamespace } } } } },
          withSubdomain(subdomain): { jobTemplate+: { spec+: { template+: { spec+: { subdomain: subdomain } } } } },
          withTerminationGracePeriodSeconds(terminationGracePeriodSeconds): { jobTemplate+: { spec+: { template+: { spec+: { terminationGracePeriodSeconds: terminationGracePeriodSeconds } } } } },
          withTolerations(tolerations): { jobTemplate+: { spec+: { template+: { spec+: { tolerations: if std.isArray(v=tolerations) then tolerations else [tolerations] } } } } },
          withTolerationsMixin(tolerations): { jobTemplate+: { spec+: { template+: { spec+: { tolerations+: if std.isArray(v=tolerations) then tolerations else [tolerations] } } } } },
          withTopologySpreadConstraints(topologySpreadConstraints): { jobTemplate+: { spec+: { template+: { spec+: { topologySpreadConstraints: if std.isArray(v=topologySpreadConstraints) then topologySpreadConstraints else [topologySpreadConstraints] } } } } },
          withTopologySpreadConstraintsMixin(topologySpreadConstraints): { jobTemplate+: { spec+: { template+: { spec+: { topologySpreadConstraints+: if std.isArray(v=topologySpreadConstraints) then topologySpreadConstraints else [topologySpreadConstraints] } } } } },
          withVolumes(volumes): { jobTemplate+: { spec+: { template+: { spec+: { volumes: if std.isArray(v=volumes) then volumes else [volumes] } } } } },
          withVolumesMixin(volumes): { jobTemplate+: { spec+: { template+: { spec+: { volumes+: if std.isArray(v=volumes) then volumes else [volumes] } } } } }
        }
      },
      withActiveDeadlineSeconds(activeDeadlineSeconds): { jobTemplate+: { spec+: { activeDeadlineSeconds: activeDeadlineSeconds } } },
      withBackoffLimit(backoffLimit): { jobTemplate+: { spec+: { backoffLimit: backoffLimit } } },
      withCompletions(completions): { jobTemplate+: { spec+: { completions: completions } } },
      withManualSelector(manualSelector): { jobTemplate+: { spec+: { manualSelector: manualSelector } } },
      withParallelism(parallelism): { jobTemplate+: { spec+: { parallelism: parallelism } } },
      withTtlSecondsAfterFinished(ttlSecondsAfterFinished): { jobTemplate+: { spec+: { ttlSecondsAfterFinished: ttlSecondsAfterFinished } } }
    }
  },
  withConcurrencyPolicy(concurrencyPolicy): { concurrencyPolicy: concurrencyPolicy },
  withFailedJobsHistoryLimit(failedJobsHistoryLimit): { failedJobsHistoryLimit: failedJobsHistoryLimit },
  withSchedule(schedule): { schedule: schedule },
  withStartingDeadlineSeconds(startingDeadlineSeconds): { startingDeadlineSeconds: startingDeadlineSeconds },
  withSuccessfulJobsHistoryLimit(successfulJobsHistoryLimit): { successfulJobsHistoryLimit: successfulJobsHistoryLimit },
  withSuspend(suspend): { suspend: suspend },
  mixin: self
}