{
  // new returns an instance of Deployment
  new(name): {
    apiVersion: 'apps/v1beta1',
    kind: 'Deployment'
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
  // DeploymentSpec is the specification of the desired behavior of the Deployment.
  spec: {
    // DEPRECATED.
    rollbackTo: {
      withRevision(revision): { spec+: { rollbackTo+: { revision: revision } } }
    },
    // A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
    selector: {
      withMatchExpressions(matchExpressions): { spec+: { selector+: { matchExpressions: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } } },
      withMatchExpressionsMixin(matchExpressions): { spec+: { selector+: { matchExpressions+: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } } },
      withMatchLabels(matchLabels): { spec+: { selector+: { matchLabels: matchLabels } } },
      withMatchLabelsMixin(matchLabels): { spec+: { selector+: { matchLabels+: matchLabels } } }
    },
    // DeploymentStrategy describes how to replace existing pods with new ones.
    strategy: {
      // Spec to control the desired behavior of rolling update.
      rollingUpdate: {
        withMaxSurge(maxSurge): { spec+: { strategy+: { rollingUpdate+: { maxSurge: maxSurge } } } },
        withMaxUnavailable(maxUnavailable): { spec+: { strategy+: { rollingUpdate+: { maxUnavailable: maxUnavailable } } } }
      },
      withType(type): { spec+: { strategy+: { type: type } } }
    },
    // PodTemplateSpec describes the data a pod should have when created from a template
    template: {
      // ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.
      metadata: {
        withAnnotations(annotations): { spec+: { template+: { metadata+: { annotations: annotations } } } },
        withAnnotationsMixin(annotations): { spec+: { template+: { metadata+: { annotations+: annotations } } } },
        withClusterName(clusterName): { spec+: { template+: { metadata+: { clusterName: clusterName } } } },
        withCreationTimestamp(creationTimestamp): { spec+: { template+: { metadata+: { creationTimestamp: creationTimestamp } } } },
        withDeletionGracePeriodSeconds(deletionGracePeriodSeconds): { spec+: { template+: { metadata+: { deletionGracePeriodSeconds: deletionGracePeriodSeconds } } } },
        withDeletionTimestamp(deletionTimestamp): { spec+: { template+: { metadata+: { deletionTimestamp: deletionTimestamp } } } },
        withFinalizers(finalizers): { spec+: { template+: { metadata+: { finalizers: if std.isArray(v=finalizers) then finalizers else [finalizers] } } } },
        withFinalizersMixin(finalizers): { spec+: { template+: { metadata+: { finalizers+: if std.isArray(v=finalizers) then finalizers else [finalizers] } } } },
        withGenerateName(generateName): { spec+: { template+: { metadata+: { generateName: generateName } } } },
        withGeneration(generation): { spec+: { template+: { metadata+: { generation: generation } } } },
        withLabels(labels): { spec+: { template+: { metadata+: { labels: labels } } } },
        withLabelsMixin(labels): { spec+: { template+: { metadata+: { labels+: labels } } } },
        withManagedFields(managedFields): { spec+: { template+: { metadata+: { managedFields: if std.isArray(v=managedFields) then managedFields else [managedFields] } } } },
        withManagedFieldsMixin(managedFields): { spec+: { template+: { metadata+: { managedFields+: if std.isArray(v=managedFields) then managedFields else [managedFields] } } } },
        withName(name): { spec+: { template+: { metadata+: { name: name } } } },
        withNamespace(namespace): { spec+: { template+: { metadata+: { namespace: namespace } } } },
        withOwnerReferences(ownerReferences): { spec+: { template+: { metadata+: { ownerReferences: if std.isArray(v=ownerReferences) then ownerReferences else [ownerReferences] } } } },
        withOwnerReferencesMixin(ownerReferences): { spec+: { template+: { metadata+: { ownerReferences+: if std.isArray(v=ownerReferences) then ownerReferences else [ownerReferences] } } } },
        withResourceVersion(resourceVersion): { spec+: { template+: { metadata+: { resourceVersion: resourceVersion } } } },
        withSelfLink(selfLink): { spec+: { template+: { metadata+: { selfLink: selfLink } } } },
        withUid(uid): { spec+: { template+: { metadata+: { uid: uid } } } }
      },
      // PodSpec is a description of a pod.
      spec: {
        // Affinity is a group of affinity scheduling rules.
        affinity: {
          // Node affinity is a group of node affinity scheduling rules.
          nodeAffinity: {
            // A node selector represents the union of the results of one or more label queries over a set of nodes; that is, it represents the OR of the selectors represented by the node selector terms.
            requiredDuringSchedulingIgnoredDuringExecution: {
              withNodeSelectorTerms(nodeSelectorTerms): { spec+: { template+: { spec+: { affinity+: { nodeAffinity+: { requiredDuringSchedulingIgnoredDuringExecution+: { nodeSelectorTerms: if std.isArray(v=nodeSelectorTerms) then nodeSelectorTerms else [nodeSelectorTerms] } } } } } } },
              withNodeSelectorTermsMixin(nodeSelectorTerms): { spec+: { template+: { spec+: { affinity+: { nodeAffinity+: { requiredDuringSchedulingIgnoredDuringExecution+: { nodeSelectorTerms+: if std.isArray(v=nodeSelectorTerms) then nodeSelectorTerms else [nodeSelectorTerms] } } } } } } }
            },
            withPreferredDuringSchedulingIgnoredDuringExecution(preferredDuringSchedulingIgnoredDuringExecution): { spec+: { template+: { spec+: { affinity+: { nodeAffinity+: { preferredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } } } } },
            withPreferredDuringSchedulingIgnoredDuringExecutionMixin(preferredDuringSchedulingIgnoredDuringExecution): { spec+: { template+: { spec+: { affinity+: { nodeAffinity+: { preferredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } } } } }
          },
          // Pod affinity is a group of inter pod affinity scheduling rules.
          podAffinity: {
            withPreferredDuringSchedulingIgnoredDuringExecution(preferredDuringSchedulingIgnoredDuringExecution): { spec+: { template+: { spec+: { affinity+: { podAffinity+: { preferredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } } } } },
            withPreferredDuringSchedulingIgnoredDuringExecutionMixin(preferredDuringSchedulingIgnoredDuringExecution): { spec+: { template+: { spec+: { affinity+: { podAffinity+: { preferredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } } } } },
            withRequiredDuringSchedulingIgnoredDuringExecution(requiredDuringSchedulingIgnoredDuringExecution): { spec+: { template+: { spec+: { affinity+: { podAffinity+: { requiredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=requiredDuringSchedulingIgnoredDuringExecution) then requiredDuringSchedulingIgnoredDuringExecution else [requiredDuringSchedulingIgnoredDuringExecution] } } } } } },
            withRequiredDuringSchedulingIgnoredDuringExecutionMixin(requiredDuringSchedulingIgnoredDuringExecution): { spec+: { template+: { spec+: { affinity+: { podAffinity+: { requiredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=requiredDuringSchedulingIgnoredDuringExecution) then requiredDuringSchedulingIgnoredDuringExecution else [requiredDuringSchedulingIgnoredDuringExecution] } } } } } }
          },
          // Pod anti affinity is a group of inter pod anti affinity scheduling rules.
          podAntiAffinity: {
            withPreferredDuringSchedulingIgnoredDuringExecution(preferredDuringSchedulingIgnoredDuringExecution): { spec+: { template+: { spec+: { affinity+: { podAntiAffinity+: { preferredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } } } } },
            withPreferredDuringSchedulingIgnoredDuringExecutionMixin(preferredDuringSchedulingIgnoredDuringExecution): { spec+: { template+: { spec+: { affinity+: { podAntiAffinity+: { preferredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } } } } },
            withRequiredDuringSchedulingIgnoredDuringExecution(requiredDuringSchedulingIgnoredDuringExecution): { spec+: { template+: { spec+: { affinity+: { podAntiAffinity+: { requiredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=requiredDuringSchedulingIgnoredDuringExecution) then requiredDuringSchedulingIgnoredDuringExecution else [requiredDuringSchedulingIgnoredDuringExecution] } } } } } },
            withRequiredDuringSchedulingIgnoredDuringExecutionMixin(requiredDuringSchedulingIgnoredDuringExecution): { spec+: { template+: { spec+: { affinity+: { podAntiAffinity+: { requiredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=requiredDuringSchedulingIgnoredDuringExecution) then requiredDuringSchedulingIgnoredDuringExecution else [requiredDuringSchedulingIgnoredDuringExecution] } } } } } }
          }
        },
        // PodDNSConfig defines the DNS parameters of a pod in addition to those generated from DNSPolicy.
        dnsConfig: {
          withNameservers(nameservers): { spec+: { template+: { spec+: { dnsConfig+: { nameservers: if std.isArray(v=nameservers) then nameservers else [nameservers] } } } } },
          withNameserversMixin(nameservers): { spec+: { template+: { spec+: { dnsConfig+: { nameservers+: if std.isArray(v=nameservers) then nameservers else [nameservers] } } } } },
          withOptions(options): { spec+: { template+: { spec+: { dnsConfig+: { options: if std.isArray(v=options) then options else [options] } } } } },
          withOptionsMixin(options): { spec+: { template+: { spec+: { dnsConfig+: { options+: if std.isArray(v=options) then options else [options] } } } } },
          withSearches(searches): { spec+: { template+: { spec+: { dnsConfig+: { searches: if std.isArray(v=searches) then searches else [searches] } } } } },
          withSearchesMixin(searches): { spec+: { template+: { spec+: { dnsConfig+: { searches+: if std.isArray(v=searches) then searches else [searches] } } } } }
        },
        // PodSecurityContext holds pod-level security attributes and common container settings. Some fields are also present in container.securityContext.  Field values of container.securityContext take precedence over field values of PodSecurityContext.
        securityContext: {
          // SELinuxOptions are the labels to be applied to the container
          seLinuxOptions: {
            withLevel(level): { spec+: { template+: { spec+: { securityContext+: { seLinuxOptions+: { level: level } } } } } },
            withRole(role): { spec+: { template+: { spec+: { securityContext+: { seLinuxOptions+: { role: role } } } } } },
            withType(type): { spec+: { template+: { spec+: { securityContext+: { seLinuxOptions+: { type: type } } } } } },
            withUser(user): { spec+: { template+: { spec+: { securityContext+: { seLinuxOptions+: { user: user } } } } } }
          },
          // WindowsSecurityContextOptions contain Windows-specific options and credentials.
          windowsOptions: {
            withGmsaCredentialSpec(gmsaCredentialSpec): { spec+: { template+: { spec+: { securityContext+: { windowsOptions+: { gmsaCredentialSpec: gmsaCredentialSpec } } } } } },
            withGmsaCredentialSpecName(gmsaCredentialSpecName): { spec+: { template+: { spec+: { securityContext+: { windowsOptions+: { gmsaCredentialSpecName: gmsaCredentialSpecName } } } } } },
            withRunAsUserName(runAsUserName): { spec+: { template+: { spec+: { securityContext+: { windowsOptions+: { runAsUserName: runAsUserName } } } } } }
          },
          withFsGroup(fsGroup): { spec+: { template+: { spec+: { securityContext+: { fsGroup: fsGroup } } } } },
          withRunAsGroup(runAsGroup): { spec+: { template+: { spec+: { securityContext+: { runAsGroup: runAsGroup } } } } },
          withRunAsNonRoot(runAsNonRoot): { spec+: { template+: { spec+: { securityContext+: { runAsNonRoot: runAsNonRoot } } } } },
          withRunAsUser(runAsUser): { spec+: { template+: { spec+: { securityContext+: { runAsUser: runAsUser } } } } },
          withSupplementalGroups(supplementalGroups): { spec+: { template+: { spec+: { securityContext+: { supplementalGroups: if std.isArray(v=supplementalGroups) then supplementalGroups else [supplementalGroups] } } } } },
          withSupplementalGroupsMixin(supplementalGroups): { spec+: { template+: { spec+: { securityContext+: { supplementalGroups+: if std.isArray(v=supplementalGroups) then supplementalGroups else [supplementalGroups] } } } } },
          withSysctls(sysctls): { spec+: { template+: { spec+: { securityContext+: { sysctls: if std.isArray(v=sysctls) then sysctls else [sysctls] } } } } },
          withSysctlsMixin(sysctls): { spec+: { template+: { spec+: { securityContext+: { sysctls+: if std.isArray(v=sysctls) then sysctls else [sysctls] } } } } }
        },
        withActiveDeadlineSeconds(activeDeadlineSeconds): { spec+: { template+: { spec+: { activeDeadlineSeconds: activeDeadlineSeconds } } } },
        withAutomountServiceAccountToken(automountServiceAccountToken): { spec+: { template+: { spec+: { automountServiceAccountToken: automountServiceAccountToken } } } },
        withContainers(containers): { spec+: { template+: { spec+: { containers: if std.isArray(v=containers) then containers else [containers] } } } },
        withContainersMixin(containers): { spec+: { template+: { spec+: { containers+: if std.isArray(v=containers) then containers else [containers] } } } },
        withDnsPolicy(dnsPolicy): { spec+: { template+: { spec+: { dnsPolicy: dnsPolicy } } } },
        withEnableServiceLinks(enableServiceLinks): { spec+: { template+: { spec+: { enableServiceLinks: enableServiceLinks } } } },
        withEphemeralContainers(ephemeralContainers): { spec+: { template+: { spec+: { ephemeralContainers: if std.isArray(v=ephemeralContainers) then ephemeralContainers else [ephemeralContainers] } } } },
        withEphemeralContainersMixin(ephemeralContainers): { spec+: { template+: { spec+: { ephemeralContainers+: if std.isArray(v=ephemeralContainers) then ephemeralContainers else [ephemeralContainers] } } } },
        withHostAliases(hostAliases): { spec+: { template+: { spec+: { hostAliases: if std.isArray(v=hostAliases) then hostAliases else [hostAliases] } } } },
        withHostAliasesMixin(hostAliases): { spec+: { template+: { spec+: { hostAliases+: if std.isArray(v=hostAliases) then hostAliases else [hostAliases] } } } },
        withHostIPC(hostIPC): { spec+: { template+: { spec+: { hostIPC: hostIPC } } } },
        withHostNetwork(hostNetwork): { spec+: { template+: { spec+: { hostNetwork: hostNetwork } } } },
        withHostPID(hostPID): { spec+: { template+: { spec+: { hostPID: hostPID } } } },
        withHostname(hostname): { spec+: { template+: { spec+: { hostname: hostname } } } },
        withImagePullSecrets(imagePullSecrets): { spec+: { template+: { spec+: { imagePullSecrets: if std.isArray(v=imagePullSecrets) then imagePullSecrets else [imagePullSecrets] } } } },
        withImagePullSecretsMixin(imagePullSecrets): { spec+: { template+: { spec+: { imagePullSecrets+: if std.isArray(v=imagePullSecrets) then imagePullSecrets else [imagePullSecrets] } } } },
        withInitContainers(initContainers): { spec+: { template+: { spec+: { initContainers: if std.isArray(v=initContainers) then initContainers else [initContainers] } } } },
        withInitContainersMixin(initContainers): { spec+: { template+: { spec+: { initContainers+: if std.isArray(v=initContainers) then initContainers else [initContainers] } } } },
        withNodeName(nodeName): { spec+: { template+: { spec+: { nodeName: nodeName } } } },
        withNodeSelector(nodeSelector): { spec+: { template+: { spec+: { nodeSelector: nodeSelector } } } },
        withNodeSelectorMixin(nodeSelector): { spec+: { template+: { spec+: { nodeSelector+: nodeSelector } } } },
        withOverhead(overhead): { spec+: { template+: { spec+: { overhead: overhead } } } },
        withOverheadMixin(overhead): { spec+: { template+: { spec+: { overhead+: overhead } } } },
        withPreemptionPolicy(preemptionPolicy): { spec+: { template+: { spec+: { preemptionPolicy: preemptionPolicy } } } },
        withPriority(priority): { spec+: { template+: { spec+: { priority: priority } } } },
        withPriorityClassName(priorityClassName): { spec+: { template+: { spec+: { priorityClassName: priorityClassName } } } },
        withReadinessGates(readinessGates): { spec+: { template+: { spec+: { readinessGates: if std.isArray(v=readinessGates) then readinessGates else [readinessGates] } } } },
        withReadinessGatesMixin(readinessGates): { spec+: { template+: { spec+: { readinessGates+: if std.isArray(v=readinessGates) then readinessGates else [readinessGates] } } } },
        withRestartPolicy(restartPolicy): { spec+: { template+: { spec+: { restartPolicy: restartPolicy } } } },
        withRuntimeClassName(runtimeClassName): { spec+: { template+: { spec+: { runtimeClassName: runtimeClassName } } } },
        withSchedulerName(schedulerName): { spec+: { template+: { spec+: { schedulerName: schedulerName } } } },
        withServiceAccount(serviceAccount): { spec+: { template+: { spec+: { serviceAccount: serviceAccount } } } },
        withServiceAccountName(serviceAccountName): { spec+: { template+: { spec+: { serviceAccountName: serviceAccountName } } } },
        withShareProcessNamespace(shareProcessNamespace): { spec+: { template+: { spec+: { shareProcessNamespace: shareProcessNamespace } } } },
        withSubdomain(subdomain): { spec+: { template+: { spec+: { subdomain: subdomain } } } },
        withTerminationGracePeriodSeconds(terminationGracePeriodSeconds): { spec+: { template+: { spec+: { terminationGracePeriodSeconds: terminationGracePeriodSeconds } } } },
        withTolerations(tolerations): { spec+: { template+: { spec+: { tolerations: if std.isArray(v=tolerations) then tolerations else [tolerations] } } } },
        withTolerationsMixin(tolerations): { spec+: { template+: { spec+: { tolerations+: if std.isArray(v=tolerations) then tolerations else [tolerations] } } } },
        withTopologySpreadConstraints(topologySpreadConstraints): { spec+: { template+: { spec+: { topologySpreadConstraints: if std.isArray(v=topologySpreadConstraints) then topologySpreadConstraints else [topologySpreadConstraints] } } } },
        withTopologySpreadConstraintsMixin(topologySpreadConstraints): { spec+: { template+: { spec+: { topologySpreadConstraints+: if std.isArray(v=topologySpreadConstraints) then topologySpreadConstraints else [topologySpreadConstraints] } } } },
        withVolumes(volumes): { spec+: { template+: { spec+: { volumes: if std.isArray(v=volumes) then volumes else [volumes] } } } },
        withVolumesMixin(volumes): { spec+: { template+: { spec+: { volumes+: if std.isArray(v=volumes) then volumes else [volumes] } } } }
      }
    },
    withMinReadySeconds(minReadySeconds): { spec+: { minReadySeconds: minReadySeconds } },
    withPaused(paused): { spec+: { paused: paused } },
    withProgressDeadlineSeconds(progressDeadlineSeconds): { spec+: { progressDeadlineSeconds: progressDeadlineSeconds } },
    withReplicas(replicas): { spec+: { replicas: replicas } },
    withRevisionHistoryLimit(revisionHistoryLimit): { spec+: { revisionHistoryLimit: revisionHistoryLimit } }
  },
  mixin: self
}