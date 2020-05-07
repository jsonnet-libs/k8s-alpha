{
  // new returns an instance of Cronjob
  new(name): {
    apiVersion: 'batch/v2alpha1',
    kind: 'CronJob'
  } + self.metadata.withName(name=name),
  // ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.
  metadata: {
    withAnnotations(annotations): { metadata+: { annotations: annotations } },
    withAnnotationsMixin(annotations): { metadata+: { annotations+: annotations } },
    withClusterName(clusterName): { metadata+: { clusterName: clusterName } },
    withCreationTimestamp(creationTimestamp): { metadata+: { creationTimestamp: creationTimestamp } },
    withDeletionGracePeriodSeconds(deletionGracePeriodSeconds): { metadata+: { deletionGracePeriodSeconds: deletionGracePeriodSeconds } },
    withDeletionTimestamp(deletionTimestamp): { metadata+: { deletionTimestamp: deletionTimestamp } },
    withFinalizers(finalizers): { metadata+: { finalizers: if std.isArray(v=finalizers) then finalizers else [finalizers] } },
    withFinalizersMixin(finalizers): { metadata+: { finalizers+: if std.isArray(v=finalizers) then finalizers else [finalizers] } },
    withGenerateName(generateName): { metadata+: { generateName: generateName } },
    withGeneration(generation): { metadata+: { generation: generation } },
    withLabels(labels): { metadata+: { labels: labels } },
    withLabelsMixin(labels): { metadata+: { labels+: labels } },
    withManagedFields(managedFields): { metadata+: { managedFields: if std.isArray(v=managedFields) then managedFields else [managedFields] } },
    withManagedFieldsMixin(managedFields): { metadata+: { managedFields+: if std.isArray(v=managedFields) then managedFields else [managedFields] } },
    withName(name): { metadata+: { name: name } },
    withNamespace(namespace): { metadata+: { namespace: namespace } },
    withOwnerReferences(ownerReferences): { metadata+: { ownerReferences: if std.isArray(v=ownerReferences) then ownerReferences else [ownerReferences] } },
    withOwnerReferencesMixin(ownerReferences): { metadata+: { ownerReferences+: if std.isArray(v=ownerReferences) then ownerReferences else [ownerReferences] } },
    withResourceVersion(resourceVersion): { metadata+: { resourceVersion: resourceVersion } },
    withSelfLink(selfLink): { metadata+: { selfLink: selfLink } },
    withUid(uid): { metadata+: { uid: uid } }
  },
  // CronJobSpec describes how the job execution will look like and when it will actually run.
  spec: {
    // JobTemplateSpec describes the data a Job should have when created from a template
    jobTemplate: {
      // ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.
      metadata: {
        withAnnotations(annotations): { spec+: { jobTemplate+: { metadata+: { annotations: annotations } } } },
        withAnnotationsMixin(annotations): { spec+: { jobTemplate+: { metadata+: { annotations+: annotations } } } },
        withClusterName(clusterName): { spec+: { jobTemplate+: { metadata+: { clusterName: clusterName } } } },
        withCreationTimestamp(creationTimestamp): { spec+: { jobTemplate+: { metadata+: { creationTimestamp: creationTimestamp } } } },
        withDeletionGracePeriodSeconds(deletionGracePeriodSeconds): { spec+: { jobTemplate+: { metadata+: { deletionGracePeriodSeconds: deletionGracePeriodSeconds } } } },
        withDeletionTimestamp(deletionTimestamp): { spec+: { jobTemplate+: { metadata+: { deletionTimestamp: deletionTimestamp } } } },
        withFinalizers(finalizers): { spec+: { jobTemplate+: { metadata+: { finalizers: if std.isArray(v=finalizers) then finalizers else [finalizers] } } } },
        withFinalizersMixin(finalizers): { spec+: { jobTemplate+: { metadata+: { finalizers+: if std.isArray(v=finalizers) then finalizers else [finalizers] } } } },
        withGenerateName(generateName): { spec+: { jobTemplate+: { metadata+: { generateName: generateName } } } },
        withGeneration(generation): { spec+: { jobTemplate+: { metadata+: { generation: generation } } } },
        withLabels(labels): { spec+: { jobTemplate+: { metadata+: { labels: labels } } } },
        withLabelsMixin(labels): { spec+: { jobTemplate+: { metadata+: { labels+: labels } } } },
        withManagedFields(managedFields): { spec+: { jobTemplate+: { metadata+: { managedFields: if std.isArray(v=managedFields) then managedFields else [managedFields] } } } },
        withManagedFieldsMixin(managedFields): { spec+: { jobTemplate+: { metadata+: { managedFields+: if std.isArray(v=managedFields) then managedFields else [managedFields] } } } },
        withName(name): { spec+: { jobTemplate+: { metadata+: { name: name } } } },
        withNamespace(namespace): { spec+: { jobTemplate+: { metadata+: { namespace: namespace } } } },
        withOwnerReferences(ownerReferences): { spec+: { jobTemplate+: { metadata+: { ownerReferences: if std.isArray(v=ownerReferences) then ownerReferences else [ownerReferences] } } } },
        withOwnerReferencesMixin(ownerReferences): { spec+: { jobTemplate+: { metadata+: { ownerReferences+: if std.isArray(v=ownerReferences) then ownerReferences else [ownerReferences] } } } },
        withResourceVersion(resourceVersion): { spec+: { jobTemplate+: { metadata+: { resourceVersion: resourceVersion } } } },
        withSelfLink(selfLink): { spec+: { jobTemplate+: { metadata+: { selfLink: selfLink } } } },
        withUid(uid): { spec+: { jobTemplate+: { metadata+: { uid: uid } } } }
      },
      // JobSpec describes how the job execution will look like.
      spec: {
        // A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
        selector: {
          withMatchExpressions(matchExpressions): { spec+: { jobTemplate+: { spec+: { selector+: { matchExpressions: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } } } } },
          withMatchExpressionsMixin(matchExpressions): { spec+: { jobTemplate+: { spec+: { selector+: { matchExpressions+: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } } } } },
          withMatchLabels(matchLabels): { spec+: { jobTemplate+: { spec+: { selector+: { matchLabels: matchLabels } } } } },
          withMatchLabelsMixin(matchLabels): { spec+: { jobTemplate+: { spec+: { selector+: { matchLabels+: matchLabels } } } } }
        },
        // PodTemplateSpec describes the data a pod should have when created from a template
        template: {
          // ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.
          metadata: {
            withAnnotations(annotations): { spec+: { jobTemplate+: { spec+: { template+: { metadata+: { annotations: annotations } } } } } },
            withAnnotationsMixin(annotations): { spec+: { jobTemplate+: { spec+: { template+: { metadata+: { annotations+: annotations } } } } } },
            withClusterName(clusterName): { spec+: { jobTemplate+: { spec+: { template+: { metadata+: { clusterName: clusterName } } } } } },
            withCreationTimestamp(creationTimestamp): { spec+: { jobTemplate+: { spec+: { template+: { metadata+: { creationTimestamp: creationTimestamp } } } } } },
            withDeletionGracePeriodSeconds(deletionGracePeriodSeconds): { spec+: { jobTemplate+: { spec+: { template+: { metadata+: { deletionGracePeriodSeconds: deletionGracePeriodSeconds } } } } } },
            withDeletionTimestamp(deletionTimestamp): { spec+: { jobTemplate+: { spec+: { template+: { metadata+: { deletionTimestamp: deletionTimestamp } } } } } },
            withFinalizers(finalizers): { spec+: { jobTemplate+: { spec+: { template+: { metadata+: { finalizers: if std.isArray(v=finalizers) then finalizers else [finalizers] } } } } } },
            withFinalizersMixin(finalizers): { spec+: { jobTemplate+: { spec+: { template+: { metadata+: { finalizers+: if std.isArray(v=finalizers) then finalizers else [finalizers] } } } } } },
            withGenerateName(generateName): { spec+: { jobTemplate+: { spec+: { template+: { metadata+: { generateName: generateName } } } } } },
            withGeneration(generation): { spec+: { jobTemplate+: { spec+: { template+: { metadata+: { generation: generation } } } } } },
            withLabels(labels): { spec+: { jobTemplate+: { spec+: { template+: { metadata+: { labels: labels } } } } } },
            withLabelsMixin(labels): { spec+: { jobTemplate+: { spec+: { template+: { metadata+: { labels+: labels } } } } } },
            withManagedFields(managedFields): { spec+: { jobTemplate+: { spec+: { template+: { metadata+: { managedFields: if std.isArray(v=managedFields) then managedFields else [managedFields] } } } } } },
            withManagedFieldsMixin(managedFields): { spec+: { jobTemplate+: { spec+: { template+: { metadata+: { managedFields+: if std.isArray(v=managedFields) then managedFields else [managedFields] } } } } } },
            withName(name): { spec+: { jobTemplate+: { spec+: { template+: { metadata+: { name: name } } } } } },
            withNamespace(namespace): { spec+: { jobTemplate+: { spec+: { template+: { metadata+: { namespace: namespace } } } } } },
            withOwnerReferences(ownerReferences): { spec+: { jobTemplate+: { spec+: { template+: { metadata+: { ownerReferences: if std.isArray(v=ownerReferences) then ownerReferences else [ownerReferences] } } } } } },
            withOwnerReferencesMixin(ownerReferences): { spec+: { jobTemplate+: { spec+: { template+: { metadata+: { ownerReferences+: if std.isArray(v=ownerReferences) then ownerReferences else [ownerReferences] } } } } } },
            withResourceVersion(resourceVersion): { spec+: { jobTemplate+: { spec+: { template+: { metadata+: { resourceVersion: resourceVersion } } } } } },
            withSelfLink(selfLink): { spec+: { jobTemplate+: { spec+: { template+: { metadata+: { selfLink: selfLink } } } } } },
            withUid(uid): { spec+: { jobTemplate+: { spec+: { template+: { metadata+: { uid: uid } } } } } }
          },
          // PodSpec is a description of a pod.
          spec: {
            // Affinity is a group of affinity scheduling rules.
            affinity: {
              // Node affinity is a group of node affinity scheduling rules.
              nodeAffinity: {
                // A node selector represents the union of the results of one or more label queries over a set of nodes; that is, it represents the OR of the selectors represented by the node selector terms.
                requiredDuringSchedulingIgnoredDuringExecution: {
                  withNodeSelectorTerms(nodeSelectorTerms): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { affinity+: { nodeAffinity+: { requiredDuringSchedulingIgnoredDuringExecution+: { nodeSelectorTerms: if std.isArray(v=nodeSelectorTerms) then nodeSelectorTerms else [nodeSelectorTerms] } } } } } } } } },
                  withNodeSelectorTermsMixin(nodeSelectorTerms): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { affinity+: { nodeAffinity+: { requiredDuringSchedulingIgnoredDuringExecution+: { nodeSelectorTerms+: if std.isArray(v=nodeSelectorTerms) then nodeSelectorTerms else [nodeSelectorTerms] } } } } } } } } }
                },
                withPreferredDuringSchedulingIgnoredDuringExecution(preferredDuringSchedulingIgnoredDuringExecution): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { affinity+: { nodeAffinity+: { preferredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } } } } } } },
                withPreferredDuringSchedulingIgnoredDuringExecutionMixin(preferredDuringSchedulingIgnoredDuringExecution): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { affinity+: { nodeAffinity+: { preferredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } } } } } } }
              },
              // Pod affinity is a group of inter pod affinity scheduling rules.
              podAffinity: {
                withPreferredDuringSchedulingIgnoredDuringExecution(preferredDuringSchedulingIgnoredDuringExecution): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { affinity+: { podAffinity+: { preferredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } } } } } } },
                withPreferredDuringSchedulingIgnoredDuringExecutionMixin(preferredDuringSchedulingIgnoredDuringExecution): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { affinity+: { podAffinity+: { preferredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } } } } } } },
                withRequiredDuringSchedulingIgnoredDuringExecution(requiredDuringSchedulingIgnoredDuringExecution): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { affinity+: { podAffinity+: { requiredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=requiredDuringSchedulingIgnoredDuringExecution) then requiredDuringSchedulingIgnoredDuringExecution else [requiredDuringSchedulingIgnoredDuringExecution] } } } } } } } },
                withRequiredDuringSchedulingIgnoredDuringExecutionMixin(requiredDuringSchedulingIgnoredDuringExecution): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { affinity+: { podAffinity+: { requiredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=requiredDuringSchedulingIgnoredDuringExecution) then requiredDuringSchedulingIgnoredDuringExecution else [requiredDuringSchedulingIgnoredDuringExecution] } } } } } } } }
              },
              // Pod anti affinity is a group of inter pod anti affinity scheduling rules.
              podAntiAffinity: {
                withPreferredDuringSchedulingIgnoredDuringExecution(preferredDuringSchedulingIgnoredDuringExecution): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { affinity+: { podAntiAffinity+: { preferredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } } } } } } },
                withPreferredDuringSchedulingIgnoredDuringExecutionMixin(preferredDuringSchedulingIgnoredDuringExecution): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { affinity+: { podAntiAffinity+: { preferredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } } } } } } },
                withRequiredDuringSchedulingIgnoredDuringExecution(requiredDuringSchedulingIgnoredDuringExecution): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { affinity+: { podAntiAffinity+: { requiredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=requiredDuringSchedulingIgnoredDuringExecution) then requiredDuringSchedulingIgnoredDuringExecution else [requiredDuringSchedulingIgnoredDuringExecution] } } } } } } } },
                withRequiredDuringSchedulingIgnoredDuringExecutionMixin(requiredDuringSchedulingIgnoredDuringExecution): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { affinity+: { podAntiAffinity+: { requiredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=requiredDuringSchedulingIgnoredDuringExecution) then requiredDuringSchedulingIgnoredDuringExecution else [requiredDuringSchedulingIgnoredDuringExecution] } } } } } } } }
              }
            },
            // PodDNSConfig defines the DNS parameters of a pod in addition to those generated from DNSPolicy.
            dnsConfig: {
              withNameservers(nameservers): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { dnsConfig+: { nameservers: if std.isArray(v=nameservers) then nameservers else [nameservers] } } } } } } },
              withNameserversMixin(nameservers): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { dnsConfig+: { nameservers+: if std.isArray(v=nameservers) then nameservers else [nameservers] } } } } } } },
              withOptions(options): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { dnsConfig+: { options: if std.isArray(v=options) then options else [options] } } } } } } },
              withOptionsMixin(options): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { dnsConfig+: { options+: if std.isArray(v=options) then options else [options] } } } } } } },
              withSearches(searches): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { dnsConfig+: { searches: if std.isArray(v=searches) then searches else [searches] } } } } } } },
              withSearchesMixin(searches): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { dnsConfig+: { searches+: if std.isArray(v=searches) then searches else [searches] } } } } } } }
            },
            // PodSecurityContext holds pod-level security attributes and common container settings. Some fields are also present in container.securityContext.  Field values of container.securityContext take precedence over field values of PodSecurityContext.
            securityContext: {
              // SELinuxOptions are the labels to be applied to the container
              seLinuxOptions: {
                withLevel(level): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { securityContext+: { seLinuxOptions+: { level: level } } } } } } } },
                withRole(role): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { securityContext+: { seLinuxOptions+: { role: role } } } } } } } },
                withType(type): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { securityContext+: { seLinuxOptions+: { type: type } } } } } } } },
                withUser(user): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { securityContext+: { seLinuxOptions+: { user: user } } } } } } } }
              },
              // WindowsSecurityContextOptions contain Windows-specific options and credentials.
              windowsOptions: {
                withGmsaCredentialSpec(gmsaCredentialSpec): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { securityContext+: { windowsOptions+: { gmsaCredentialSpec: gmsaCredentialSpec } } } } } } } },
                withGmsaCredentialSpecName(gmsaCredentialSpecName): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { securityContext+: { windowsOptions+: { gmsaCredentialSpecName: gmsaCredentialSpecName } } } } } } } },
                withRunAsUserName(runAsUserName): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { securityContext+: { windowsOptions+: { runAsUserName: runAsUserName } } } } } } } }
              },
              withFsGroup(fsGroup): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { securityContext+: { fsGroup: fsGroup } } } } } } },
              withFsGroupChangePolicy(fsGroupChangePolicy): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { securityContext+: { fsGroupChangePolicy: fsGroupChangePolicy } } } } } } },
              withRunAsGroup(runAsGroup): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { securityContext+: { runAsGroup: runAsGroup } } } } } } },
              withRunAsNonRoot(runAsNonRoot): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { securityContext+: { runAsNonRoot: runAsNonRoot } } } } } } },
              withRunAsUser(runAsUser): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { securityContext+: { runAsUser: runAsUser } } } } } } },
              withSupplementalGroups(supplementalGroups): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { securityContext+: { supplementalGroups: if std.isArray(v=supplementalGroups) then supplementalGroups else [supplementalGroups] } } } } } } },
              withSupplementalGroupsMixin(supplementalGroups): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { securityContext+: { supplementalGroups+: if std.isArray(v=supplementalGroups) then supplementalGroups else [supplementalGroups] } } } } } } },
              withSysctls(sysctls): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { securityContext+: { sysctls: if std.isArray(v=sysctls) then sysctls else [sysctls] } } } } } } },
              withSysctlsMixin(sysctls): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { securityContext+: { sysctls+: if std.isArray(v=sysctls) then sysctls else [sysctls] } } } } } } }
            },
            withActiveDeadlineSeconds(activeDeadlineSeconds): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { activeDeadlineSeconds: activeDeadlineSeconds } } } } } },
            withAutomountServiceAccountToken(automountServiceAccountToken): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { automountServiceAccountToken: automountServiceAccountToken } } } } } },
            withContainers(containers): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { containers: if std.isArray(v=containers) then containers else [containers] } } } } } },
            withContainersMixin(containers): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { containers+: if std.isArray(v=containers) then containers else [containers] } } } } } },
            withDnsPolicy(dnsPolicy): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { dnsPolicy: dnsPolicy } } } } } },
            withEnableServiceLinks(enableServiceLinks): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { enableServiceLinks: enableServiceLinks } } } } } },
            withEphemeralContainers(ephemeralContainers): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { ephemeralContainers: if std.isArray(v=ephemeralContainers) then ephemeralContainers else [ephemeralContainers] } } } } } },
            withEphemeralContainersMixin(ephemeralContainers): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { ephemeralContainers+: if std.isArray(v=ephemeralContainers) then ephemeralContainers else [ephemeralContainers] } } } } } },
            withHostAliases(hostAliases): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { hostAliases: if std.isArray(v=hostAliases) then hostAliases else [hostAliases] } } } } } },
            withHostAliasesMixin(hostAliases): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { hostAliases+: if std.isArray(v=hostAliases) then hostAliases else [hostAliases] } } } } } },
            withHostIPC(hostIPC): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { hostIPC: hostIPC } } } } } },
            withHostNetwork(hostNetwork): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { hostNetwork: hostNetwork } } } } } },
            withHostPID(hostPID): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { hostPID: hostPID } } } } } },
            withHostname(hostname): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { hostname: hostname } } } } } },
            withImagePullSecrets(imagePullSecrets): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { imagePullSecrets: if std.isArray(v=imagePullSecrets) then imagePullSecrets else [imagePullSecrets] } } } } } },
            withImagePullSecretsMixin(imagePullSecrets): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { imagePullSecrets+: if std.isArray(v=imagePullSecrets) then imagePullSecrets else [imagePullSecrets] } } } } } },
            withInitContainers(initContainers): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { initContainers: if std.isArray(v=initContainers) then initContainers else [initContainers] } } } } } },
            withInitContainersMixin(initContainers): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { initContainers+: if std.isArray(v=initContainers) then initContainers else [initContainers] } } } } } },
            withNodeName(nodeName): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { nodeName: nodeName } } } } } },
            withNodeSelector(nodeSelector): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { nodeSelector: nodeSelector } } } } } },
            withNodeSelectorMixin(nodeSelector): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { nodeSelector+: nodeSelector } } } } } },
            withOverhead(overhead): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { overhead: overhead } } } } } },
            withOverheadMixin(overhead): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { overhead+: overhead } } } } } },
            withPreemptionPolicy(preemptionPolicy): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { preemptionPolicy: preemptionPolicy } } } } } },
            withPriority(priority): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { priority: priority } } } } } },
            withPriorityClassName(priorityClassName): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { priorityClassName: priorityClassName } } } } } },
            withReadinessGates(readinessGates): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { readinessGates: if std.isArray(v=readinessGates) then readinessGates else [readinessGates] } } } } } },
            withReadinessGatesMixin(readinessGates): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { readinessGates+: if std.isArray(v=readinessGates) then readinessGates else [readinessGates] } } } } } },
            withRestartPolicy(restartPolicy): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { restartPolicy: restartPolicy } } } } } },
            withRuntimeClassName(runtimeClassName): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { runtimeClassName: runtimeClassName } } } } } },
            withSchedulerName(schedulerName): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { schedulerName: schedulerName } } } } } },
            withServiceAccount(serviceAccount): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { serviceAccount: serviceAccount } } } } } },
            withServiceAccountName(serviceAccountName): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { serviceAccountName: serviceAccountName } } } } } },
            withShareProcessNamespace(shareProcessNamespace): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { shareProcessNamespace: shareProcessNamespace } } } } } },
            withSubdomain(subdomain): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { subdomain: subdomain } } } } } },
            withTerminationGracePeriodSeconds(terminationGracePeriodSeconds): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { terminationGracePeriodSeconds: terminationGracePeriodSeconds } } } } } },
            withTolerations(tolerations): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { tolerations: if std.isArray(v=tolerations) then tolerations else [tolerations] } } } } } },
            withTolerationsMixin(tolerations): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { tolerations+: if std.isArray(v=tolerations) then tolerations else [tolerations] } } } } } },
            withTopologySpreadConstraints(topologySpreadConstraints): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { topologySpreadConstraints: if std.isArray(v=topologySpreadConstraints) then topologySpreadConstraints else [topologySpreadConstraints] } } } } } },
            withTopologySpreadConstraintsMixin(topologySpreadConstraints): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { topologySpreadConstraints+: if std.isArray(v=topologySpreadConstraints) then topologySpreadConstraints else [topologySpreadConstraints] } } } } } },
            withVolumes(volumes): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { volumes: if std.isArray(v=volumes) then volumes else [volumes] } } } } } },
            withVolumesMixin(volumes): { spec+: { jobTemplate+: { spec+: { template+: { spec+: { volumes+: if std.isArray(v=volumes) then volumes else [volumes] } } } } } }
          }
        },
        withActiveDeadlineSeconds(activeDeadlineSeconds): { spec+: { jobTemplate+: { spec+: { activeDeadlineSeconds: activeDeadlineSeconds } } } },
        withBackoffLimit(backoffLimit): { spec+: { jobTemplate+: { spec+: { backoffLimit: backoffLimit } } } },
        withCompletions(completions): { spec+: { jobTemplate+: { spec+: { completions: completions } } } },
        withManualSelector(manualSelector): { spec+: { jobTemplate+: { spec+: { manualSelector: manualSelector } } } },
        withParallelism(parallelism): { spec+: { jobTemplate+: { spec+: { parallelism: parallelism } } } },
        withTtlSecondsAfterFinished(ttlSecondsAfterFinished): { spec+: { jobTemplate+: { spec+: { ttlSecondsAfterFinished: ttlSecondsAfterFinished } } } }
      }
    },
    withConcurrencyPolicy(concurrencyPolicy): { spec+: { concurrencyPolicy: concurrencyPolicy } },
    withFailedJobsHistoryLimit(failedJobsHistoryLimit): { spec+: { failedJobsHistoryLimit: failedJobsHistoryLimit } },
    withSchedule(schedule): { spec+: { schedule: schedule } },
    withStartingDeadlineSeconds(startingDeadlineSeconds): { spec+: { startingDeadlineSeconds: startingDeadlineSeconds } },
    withSuccessfulJobsHistoryLimit(successfulJobsHistoryLimit): { spec+: { successfulJobsHistoryLimit: successfulJobsHistoryLimit } },
    withSuspend(suspend): { spec+: { suspend: suspend } }
  },
  mixin: self
}