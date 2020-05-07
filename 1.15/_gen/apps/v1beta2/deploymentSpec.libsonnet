{
  // A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
  selector: {
    withMatchExpressions(matchExpressions): { selector+: { matchExpressions: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } },
    withMatchExpressionsMixin(matchExpressions): { selector+: { matchExpressions+: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } },
    withMatchLabels(matchLabels): { selector+: { matchLabels: matchLabels } },
    withMatchLabelsMixin(matchLabels): { selector+: { matchLabels+: matchLabels } }
  },
  // DeploymentStrategy describes how to replace existing pods with new ones.
  strategy: {
    // Spec to control the desired behavior of rolling update.
    rollingUpdate: {
      withMaxSurge(maxSurge): { strategy+: { rollingUpdate+: { maxSurge: maxSurge } } },
      withMaxUnavailable(maxUnavailable): { strategy+: { rollingUpdate+: { maxUnavailable: maxUnavailable } } }
    },
    withType(type): { strategy+: { type: type } }
  },
  // PodTemplateSpec describes the data a pod should have when created from a template
  template: {
    // ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.
    metadata: {
      // Initializers tracks the progress of initialization.
      initializers: {
        // Status is a return value for calls that don't return other objects.
        result: {
          // StatusDetails is a set of additional properties that MAY be set by the server to provide additional information about a response. The Reason field of a Status object defines what attributes will be set. Clients must ignore fields that do not match the defined type of each attribute, and should assume that any attribute may be empty, invalid, or under defined.
          details: {
            withCauses(causes): { template+: { metadata+: { initializers+: { result+: { details+: { causes: if std.isArray(v=causes) then causes else [causes] } } } } } },
            withCausesMixin(causes): { template+: { metadata+: { initializers+: { result+: { details+: { causes+: if std.isArray(v=causes) then causes else [causes] } } } } } },
            withGroup(group): { template+: { metadata+: { initializers+: { result+: { details+: { group: group } } } } } },
            withKind(kind): { template+: { metadata+: { initializers+: { result+: { details+: { kind: kind } } } } } },
            withName(name): { template+: { metadata+: { initializers+: { result+: { details+: { name: name } } } } } },
            withRetryAfterSeconds(retryAfterSeconds): { template+: { metadata+: { initializers+: { result+: { details+: { retryAfterSeconds: retryAfterSeconds } } } } } },
            withUid(uid): { template+: { metadata+: { initializers+: { result+: { details+: { uid: uid } } } } } }
          },
          withCode(code): { template+: { metadata+: { initializers+: { result+: { code: code } } } } },
          withKind(kind): { template+: { metadata+: { initializers+: { result+: { kind: kind } } } } },
          withMessage(message): { template+: { metadata+: { initializers+: { result+: { message: message } } } } },
          withMetadata(metadata): { template+: { metadata+: { initializers+: { result+: { metadata: metadata } } } } },
          withReason(reason): { template+: { metadata+: { initializers+: { result+: { reason: reason } } } } }
        },
        withPending(pending): { template+: { metadata+: { initializers+: { pending: if std.isArray(v=pending) then pending else [pending] } } } },
        withPendingMixin(pending): { template+: { metadata+: { initializers+: { pending+: if std.isArray(v=pending) then pending else [pending] } } } }
      },
      withAnnotations(annotations): { template+: { metadata+: { annotations: annotations } } },
      withAnnotationsMixin(annotations): { template+: { metadata+: { annotations+: annotations } } },
      withClusterName(clusterName): { template+: { metadata+: { clusterName: clusterName } } },
      withCreationTimestamp(creationTimestamp): { template+: { metadata+: { creationTimestamp: creationTimestamp } } },
      withDeletionGracePeriodSeconds(deletionGracePeriodSeconds): { template+: { metadata+: { deletionGracePeriodSeconds: deletionGracePeriodSeconds } } },
      withDeletionTimestamp(deletionTimestamp): { template+: { metadata+: { deletionTimestamp: deletionTimestamp } } },
      withFinalizers(finalizers): { template+: { metadata+: { finalizers: if std.isArray(v=finalizers) then finalizers else [finalizers] } } },
      withFinalizersMixin(finalizers): { template+: { metadata+: { finalizers+: if std.isArray(v=finalizers) then finalizers else [finalizers] } } },
      withGenerateName(generateName): { template+: { metadata+: { generateName: generateName } } },
      withGeneration(generation): { template+: { metadata+: { generation: generation } } },
      withLabels(labels): { template+: { metadata+: { labels: labels } } },
      withLabelsMixin(labels): { template+: { metadata+: { labels+: labels } } },
      withManagedFields(managedFields): { template+: { metadata+: { managedFields: if std.isArray(v=managedFields) then managedFields else [managedFields] } } },
      withManagedFieldsMixin(managedFields): { template+: { metadata+: { managedFields+: if std.isArray(v=managedFields) then managedFields else [managedFields] } } },
      withName(name): { template+: { metadata+: { name: name } } },
      withNamespace(namespace): { template+: { metadata+: { namespace: namespace } } },
      withOwnerReferences(ownerReferences): { template+: { metadata+: { ownerReferences: if std.isArray(v=ownerReferences) then ownerReferences else [ownerReferences] } } },
      withOwnerReferencesMixin(ownerReferences): { template+: { metadata+: { ownerReferences+: if std.isArray(v=ownerReferences) then ownerReferences else [ownerReferences] } } },
      withResourceVersion(resourceVersion): { template+: { metadata+: { resourceVersion: resourceVersion } } },
      withSelfLink(selfLink): { template+: { metadata+: { selfLink: selfLink } } },
      withUid(uid): { template+: { metadata+: { uid: uid } } }
    },
    // PodSpec is a description of a pod.
    spec: {
      // Affinity is a group of affinity scheduling rules.
      affinity: {
        // Node affinity is a group of node affinity scheduling rules.
        nodeAffinity: {
          // A node selector represents the union of the results of one or more label queries over a set of nodes; that is, it represents the OR of the selectors represented by the node selector terms.
          requiredDuringSchedulingIgnoredDuringExecution: {
            withNodeSelectorTerms(nodeSelectorTerms): { template+: { spec+: { affinity+: { nodeAffinity+: { requiredDuringSchedulingIgnoredDuringExecution+: { nodeSelectorTerms: if std.isArray(v=nodeSelectorTerms) then nodeSelectorTerms else [nodeSelectorTerms] } } } } } },
            withNodeSelectorTermsMixin(nodeSelectorTerms): { template+: { spec+: { affinity+: { nodeAffinity+: { requiredDuringSchedulingIgnoredDuringExecution+: { nodeSelectorTerms+: if std.isArray(v=nodeSelectorTerms) then nodeSelectorTerms else [nodeSelectorTerms] } } } } } }
          },
          withPreferredDuringSchedulingIgnoredDuringExecution(preferredDuringSchedulingIgnoredDuringExecution): { template+: { spec+: { affinity+: { nodeAffinity+: { preferredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } } } },
          withPreferredDuringSchedulingIgnoredDuringExecutionMixin(preferredDuringSchedulingIgnoredDuringExecution): { template+: { spec+: { affinity+: { nodeAffinity+: { preferredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } } } }
        },
        // Pod affinity is a group of inter pod affinity scheduling rules.
        podAffinity: {
          withPreferredDuringSchedulingIgnoredDuringExecution(preferredDuringSchedulingIgnoredDuringExecution): { template+: { spec+: { affinity+: { podAffinity+: { preferredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } } } },
          withPreferredDuringSchedulingIgnoredDuringExecutionMixin(preferredDuringSchedulingIgnoredDuringExecution): { template+: { spec+: { affinity+: { podAffinity+: { preferredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } } } },
          withRequiredDuringSchedulingIgnoredDuringExecution(requiredDuringSchedulingIgnoredDuringExecution): { template+: { spec+: { affinity+: { podAffinity+: { requiredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=requiredDuringSchedulingIgnoredDuringExecution) then requiredDuringSchedulingIgnoredDuringExecution else [requiredDuringSchedulingIgnoredDuringExecution] } } } } },
          withRequiredDuringSchedulingIgnoredDuringExecutionMixin(requiredDuringSchedulingIgnoredDuringExecution): { template+: { spec+: { affinity+: { podAffinity+: { requiredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=requiredDuringSchedulingIgnoredDuringExecution) then requiredDuringSchedulingIgnoredDuringExecution else [requiredDuringSchedulingIgnoredDuringExecution] } } } } }
        },
        // Pod anti affinity is a group of inter pod anti affinity scheduling rules.
        podAntiAffinity: {
          withPreferredDuringSchedulingIgnoredDuringExecution(preferredDuringSchedulingIgnoredDuringExecution): { template+: { spec+: { affinity+: { podAntiAffinity+: { preferredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } } } },
          withPreferredDuringSchedulingIgnoredDuringExecutionMixin(preferredDuringSchedulingIgnoredDuringExecution): { template+: { spec+: { affinity+: { podAntiAffinity+: { preferredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } } } },
          withRequiredDuringSchedulingIgnoredDuringExecution(requiredDuringSchedulingIgnoredDuringExecution): { template+: { spec+: { affinity+: { podAntiAffinity+: { requiredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=requiredDuringSchedulingIgnoredDuringExecution) then requiredDuringSchedulingIgnoredDuringExecution else [requiredDuringSchedulingIgnoredDuringExecution] } } } } },
          withRequiredDuringSchedulingIgnoredDuringExecutionMixin(requiredDuringSchedulingIgnoredDuringExecution): { template+: { spec+: { affinity+: { podAntiAffinity+: { requiredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=requiredDuringSchedulingIgnoredDuringExecution) then requiredDuringSchedulingIgnoredDuringExecution else [requiredDuringSchedulingIgnoredDuringExecution] } } } } }
        }
      },
      // PodDNSConfig defines the DNS parameters of a pod in addition to those generated from DNSPolicy.
      dnsConfig: {
        withNameservers(nameservers): { template+: { spec+: { dnsConfig+: { nameservers: if std.isArray(v=nameservers) then nameservers else [nameservers] } } } },
        withNameserversMixin(nameservers): { template+: { spec+: { dnsConfig+: { nameservers+: if std.isArray(v=nameservers) then nameservers else [nameservers] } } } },
        withOptions(options): { template+: { spec+: { dnsConfig+: { options: if std.isArray(v=options) then options else [options] } } } },
        withOptionsMixin(options): { template+: { spec+: { dnsConfig+: { options+: if std.isArray(v=options) then options else [options] } } } },
        withSearches(searches): { template+: { spec+: { dnsConfig+: { searches: if std.isArray(v=searches) then searches else [searches] } } } },
        withSearchesMixin(searches): { template+: { spec+: { dnsConfig+: { searches+: if std.isArray(v=searches) then searches else [searches] } } } }
      },
      // PodSecurityContext holds pod-level security attributes and common container settings. Some fields are also present in container.securityContext.  Field values of container.securityContext take precedence over field values of PodSecurityContext.
      securityContext: {
        // SELinuxOptions are the labels to be applied to the container
        seLinuxOptions: {
          withLevel(level): { template+: { spec+: { securityContext+: { seLinuxOptions+: { level: level } } } } },
          withRole(role): { template+: { spec+: { securityContext+: { seLinuxOptions+: { role: role } } } } },
          withType(type): { template+: { spec+: { securityContext+: { seLinuxOptions+: { type: type } } } } },
          withUser(user): { template+: { spec+: { securityContext+: { seLinuxOptions+: { user: user } } } } }
        },
        // WindowsSecurityContextOptions contain Windows-specific options and credentials.
        windowsOptions: {
          withGmsaCredentialSpec(gmsaCredentialSpec): { template+: { spec+: { securityContext+: { windowsOptions+: { gmsaCredentialSpec: gmsaCredentialSpec } } } } },
          withGmsaCredentialSpecName(gmsaCredentialSpecName): { template+: { spec+: { securityContext+: { windowsOptions+: { gmsaCredentialSpecName: gmsaCredentialSpecName } } } } }
        },
        withFsGroup(fsGroup): { template+: { spec+: { securityContext+: { fsGroup: fsGroup } } } },
        withRunAsGroup(runAsGroup): { template+: { spec+: { securityContext+: { runAsGroup: runAsGroup } } } },
        withRunAsNonRoot(runAsNonRoot): { template+: { spec+: { securityContext+: { runAsNonRoot: runAsNonRoot } } } },
        withRunAsUser(runAsUser): { template+: { spec+: { securityContext+: { runAsUser: runAsUser } } } },
        withSupplementalGroups(supplementalGroups): { template+: { spec+: { securityContext+: { supplementalGroups: if std.isArray(v=supplementalGroups) then supplementalGroups else [supplementalGroups] } } } },
        withSupplementalGroupsMixin(supplementalGroups): { template+: { spec+: { securityContext+: { supplementalGroups+: if std.isArray(v=supplementalGroups) then supplementalGroups else [supplementalGroups] } } } },
        withSysctls(sysctls): { template+: { spec+: { securityContext+: { sysctls: if std.isArray(v=sysctls) then sysctls else [sysctls] } } } },
        withSysctlsMixin(sysctls): { template+: { spec+: { securityContext+: { sysctls+: if std.isArray(v=sysctls) then sysctls else [sysctls] } } } }
      },
      withActiveDeadlineSeconds(activeDeadlineSeconds): { template+: { spec+: { activeDeadlineSeconds: activeDeadlineSeconds } } },
      withAutomountServiceAccountToken(automountServiceAccountToken): { template+: { spec+: { automountServiceAccountToken: automountServiceAccountToken } } },
      withContainers(containers): { template+: { spec+: { containers: if std.isArray(v=containers) then containers else [containers] } } },
      withContainersMixin(containers): { template+: { spec+: { containers+: if std.isArray(v=containers) then containers else [containers] } } },
      withDnsPolicy(dnsPolicy): { template+: { spec+: { dnsPolicy: dnsPolicy } } },
      withEnableServiceLinks(enableServiceLinks): { template+: { spec+: { enableServiceLinks: enableServiceLinks } } },
      withHostAliases(hostAliases): { template+: { spec+: { hostAliases: if std.isArray(v=hostAliases) then hostAliases else [hostAliases] } } },
      withHostAliasesMixin(hostAliases): { template+: { spec+: { hostAliases+: if std.isArray(v=hostAliases) then hostAliases else [hostAliases] } } },
      withHostIPC(hostIPC): { template+: { spec+: { hostIPC: hostIPC } } },
      withHostNetwork(hostNetwork): { template+: { spec+: { hostNetwork: hostNetwork } } },
      withHostPID(hostPID): { template+: { spec+: { hostPID: hostPID } } },
      withHostname(hostname): { template+: { spec+: { hostname: hostname } } },
      withImagePullSecrets(imagePullSecrets): { template+: { spec+: { imagePullSecrets: if std.isArray(v=imagePullSecrets) then imagePullSecrets else [imagePullSecrets] } } },
      withImagePullSecretsMixin(imagePullSecrets): { template+: { spec+: { imagePullSecrets+: if std.isArray(v=imagePullSecrets) then imagePullSecrets else [imagePullSecrets] } } },
      withInitContainers(initContainers): { template+: { spec+: { initContainers: if std.isArray(v=initContainers) then initContainers else [initContainers] } } },
      withInitContainersMixin(initContainers): { template+: { spec+: { initContainers+: if std.isArray(v=initContainers) then initContainers else [initContainers] } } },
      withNodeName(nodeName): { template+: { spec+: { nodeName: nodeName } } },
      withNodeSelector(nodeSelector): { template+: { spec+: { nodeSelector: nodeSelector } } },
      withNodeSelectorMixin(nodeSelector): { template+: { spec+: { nodeSelector+: nodeSelector } } },
      withPreemptionPolicy(preemptionPolicy): { template+: { spec+: { preemptionPolicy: preemptionPolicy } } },
      withPriority(priority): { template+: { spec+: { priority: priority } } },
      withPriorityClassName(priorityClassName): { template+: { spec+: { priorityClassName: priorityClassName } } },
      withReadinessGates(readinessGates): { template+: { spec+: { readinessGates: if std.isArray(v=readinessGates) then readinessGates else [readinessGates] } } },
      withReadinessGatesMixin(readinessGates): { template+: { spec+: { readinessGates+: if std.isArray(v=readinessGates) then readinessGates else [readinessGates] } } },
      withRestartPolicy(restartPolicy): { template+: { spec+: { restartPolicy: restartPolicy } } },
      withRuntimeClassName(runtimeClassName): { template+: { spec+: { runtimeClassName: runtimeClassName } } },
      withSchedulerName(schedulerName): { template+: { spec+: { schedulerName: schedulerName } } },
      withServiceAccount(serviceAccount): { template+: { spec+: { serviceAccount: serviceAccount } } },
      withServiceAccountName(serviceAccountName): { template+: { spec+: { serviceAccountName: serviceAccountName } } },
      withShareProcessNamespace(shareProcessNamespace): { template+: { spec+: { shareProcessNamespace: shareProcessNamespace } } },
      withSubdomain(subdomain): { template+: { spec+: { subdomain: subdomain } } },
      withTerminationGracePeriodSeconds(terminationGracePeriodSeconds): { template+: { spec+: { terminationGracePeriodSeconds: terminationGracePeriodSeconds } } },
      withTolerations(tolerations): { template+: { spec+: { tolerations: if std.isArray(v=tolerations) then tolerations else [tolerations] } } },
      withTolerationsMixin(tolerations): { template+: { spec+: { tolerations+: if std.isArray(v=tolerations) then tolerations else [tolerations] } } },
      withVolumes(volumes): { template+: { spec+: { volumes: if std.isArray(v=volumes) then volumes else [volumes] } } },
      withVolumesMixin(volumes): { template+: { spec+: { volumes+: if std.isArray(v=volumes) then volumes else [volumes] } } }
    }
  },
  withMinReadySeconds(minReadySeconds): { minReadySeconds: minReadySeconds },
  withPaused(paused): { paused: paused },
  withProgressDeadlineSeconds(progressDeadlineSeconds): { progressDeadlineSeconds: progressDeadlineSeconds },
  withReplicas(replicas): { replicas: replicas },
  withRevisionHistoryLimit(revisionHistoryLimit): { revisionHistoryLimit: revisionHistoryLimit },
  mixin: self
}