---
permalink: /1.18/batch/v1/jobSpec/
---

# package jobSpec

JobSpec describes how the job execution will look like.

## Index

* [`fn withActiveDeadlineSeconds(activeDeadlineSeconds)`](#fn-withactivedeadlineseconds)
* [`fn withBackoffLimit(backoffLimit)`](#fn-withbackofflimit)
* [`fn withCompletions(completions)`](#fn-withcompletions)
* [`fn withManualSelector(manualSelector)`](#fn-withmanualselector)
* [`fn withParallelism(parallelism)`](#fn-withparallelism)
* [`fn withTtlSecondsAfterFinished(ttlSecondsAfterFinished)`](#fn-withttlsecondsafterfinished)
* [`obj selector`](#obj-selector)
  * [`fn withMatchExpressions(matchExpressions)`](#fn-selectorwithmatchexpressions)
  * [`fn withMatchExpressionsMixin(matchExpressions)`](#fn-selectorwithmatchexpressionsmixin)
  * [`fn withMatchLabels(matchLabels)`](#fn-selectorwithmatchlabels)
  * [`fn withMatchLabelsMixin(matchLabels)`](#fn-selectorwithmatchlabelsmixin)
* [`obj template`](#obj-template)
  * [`obj template.metadata`](#obj-templatemetadata)
    * [`fn withAnnotations(annotations)`](#fn-templatemetadatawithannotations)
    * [`fn withAnnotationsMixin(annotations)`](#fn-templatemetadatawithannotationsmixin)
    * [`fn withClusterName(clusterName)`](#fn-templatemetadatawithclustername)
    * [`fn withCreationTimestamp(creationTimestamp)`](#fn-templatemetadatawithcreationtimestamp)
    * [`fn withDeletionGracePeriodSeconds(deletionGracePeriodSeconds)`](#fn-templatemetadatawithdeletiongraceperiodseconds)
    * [`fn withDeletionTimestamp(deletionTimestamp)`](#fn-templatemetadatawithdeletiontimestamp)
    * [`fn withFinalizers(finalizers)`](#fn-templatemetadatawithfinalizers)
    * [`fn withFinalizersMixin(finalizers)`](#fn-templatemetadatawithfinalizersmixin)
    * [`fn withGenerateName(generateName)`](#fn-templatemetadatawithgeneratename)
    * [`fn withGeneration(generation)`](#fn-templatemetadatawithgeneration)
    * [`fn withLabels(labels)`](#fn-templatemetadatawithlabels)
    * [`fn withLabelsMixin(labels)`](#fn-templatemetadatawithlabelsmixin)
    * [`fn withManagedFields(managedFields)`](#fn-templatemetadatawithmanagedfields)
    * [`fn withManagedFieldsMixin(managedFields)`](#fn-templatemetadatawithmanagedfieldsmixin)
    * [`fn withName(name)`](#fn-templatemetadatawithname)
    * [`fn withNamespace(namespace)`](#fn-templatemetadatawithnamespace)
    * [`fn withOwnerReferences(ownerReferences)`](#fn-templatemetadatawithownerreferences)
    * [`fn withOwnerReferencesMixin(ownerReferences)`](#fn-templatemetadatawithownerreferencesmixin)
    * [`fn withResourceVersion(resourceVersion)`](#fn-templatemetadatawithresourceversion)
    * [`fn withSelfLink(selfLink)`](#fn-templatemetadatawithselflink)
    * [`fn withUid(uid)`](#fn-templatemetadatawithuid)
  * [`obj template.spec`](#obj-templatespec)
    * [`fn withActiveDeadlineSeconds(activeDeadlineSeconds)`](#fn-templatespecwithactivedeadlineseconds)
    * [`fn withAutomountServiceAccountToken(automountServiceAccountToken)`](#fn-templatespecwithautomountserviceaccounttoken)
    * [`fn withContainers(containers)`](#fn-templatespecwithcontainers)
    * [`fn withContainersMixin(containers)`](#fn-templatespecwithcontainersmixin)
    * [`fn withDnsPolicy(dnsPolicy)`](#fn-templatespecwithdnspolicy)
    * [`fn withEnableServiceLinks(enableServiceLinks)`](#fn-templatespecwithenableservicelinks)
    * [`fn withEphemeralContainers(ephemeralContainers)`](#fn-templatespecwithephemeralcontainers)
    * [`fn withEphemeralContainersMixin(ephemeralContainers)`](#fn-templatespecwithephemeralcontainersmixin)
    * [`fn withHostAliases(hostAliases)`](#fn-templatespecwithhostaliases)
    * [`fn withHostAliasesMixin(hostAliases)`](#fn-templatespecwithhostaliasesmixin)
    * [`fn withHostIPC(hostIPC)`](#fn-templatespecwithhostipc)
    * [`fn withHostNetwork(hostNetwork)`](#fn-templatespecwithhostnetwork)
    * [`fn withHostPID(hostPID)`](#fn-templatespecwithhostpid)
    * [`fn withHostname(hostname)`](#fn-templatespecwithhostname)
    * [`fn withImagePullSecrets(imagePullSecrets)`](#fn-templatespecwithimagepullsecrets)
    * [`fn withImagePullSecretsMixin(imagePullSecrets)`](#fn-templatespecwithimagepullsecretsmixin)
    * [`fn withInitContainers(initContainers)`](#fn-templatespecwithinitcontainers)
    * [`fn withInitContainersMixin(initContainers)`](#fn-templatespecwithinitcontainersmixin)
    * [`fn withNodeName(nodeName)`](#fn-templatespecwithnodename)
    * [`fn withNodeSelector(nodeSelector)`](#fn-templatespecwithnodeselector)
    * [`fn withNodeSelectorMixin(nodeSelector)`](#fn-templatespecwithnodeselectormixin)
    * [`fn withOverhead(overhead)`](#fn-templatespecwithoverhead)
    * [`fn withOverheadMixin(overhead)`](#fn-templatespecwithoverheadmixin)
    * [`fn withPreemptionPolicy(preemptionPolicy)`](#fn-templatespecwithpreemptionpolicy)
    * [`fn withPriority(priority)`](#fn-templatespecwithpriority)
    * [`fn withPriorityClassName(priorityClassName)`](#fn-templatespecwithpriorityclassname)
    * [`fn withReadinessGates(readinessGates)`](#fn-templatespecwithreadinessgates)
    * [`fn withReadinessGatesMixin(readinessGates)`](#fn-templatespecwithreadinessgatesmixin)
    * [`fn withRestartPolicy(restartPolicy)`](#fn-templatespecwithrestartpolicy)
    * [`fn withRuntimeClassName(runtimeClassName)`](#fn-templatespecwithruntimeclassname)
    * [`fn withSchedulerName(schedulerName)`](#fn-templatespecwithschedulername)
    * [`fn withServiceAccount(serviceAccount)`](#fn-templatespecwithserviceaccount)
    * [`fn withServiceAccountName(serviceAccountName)`](#fn-templatespecwithserviceaccountname)
    * [`fn withShareProcessNamespace(shareProcessNamespace)`](#fn-templatespecwithshareprocessnamespace)
    * [`fn withSubdomain(subdomain)`](#fn-templatespecwithsubdomain)
    * [`fn withTerminationGracePeriodSeconds(terminationGracePeriodSeconds)`](#fn-templatespecwithterminationgraceperiodseconds)
    * [`fn withTolerations(tolerations)`](#fn-templatespecwithtolerations)
    * [`fn withTolerationsMixin(tolerations)`](#fn-templatespecwithtolerationsmixin)
    * [`fn withTopologySpreadConstraints(topologySpreadConstraints)`](#fn-templatespecwithtopologyspreadconstraints)
    * [`fn withTopologySpreadConstraintsMixin(topologySpreadConstraints)`](#fn-templatespecwithtopologyspreadconstraintsmixin)
    * [`fn withVolumes(volumes)`](#fn-templatespecwithvolumes)
    * [`fn withVolumesMixin(volumes)`](#fn-templatespecwithvolumesmixin)
    * [`obj template.spec.affinity`](#obj-templatespecaffinity)
      * [`obj template.spec.affinity.nodeAffinity`](#obj-templatespecaffinitynodeaffinity)
        * [`fn withPreferredDuringSchedulingIgnoredDuringExecution(preferredDuringSchedulingIgnoredDuringExecution)`](#fn-templatespecaffinitynodeaffinitywithpreferredduringschedulingignoredduringexecution)
        * [`fn withPreferredDuringSchedulingIgnoredDuringExecutionMixin(preferredDuringSchedulingIgnoredDuringExecution)`](#fn-templatespecaffinitynodeaffinitywithpreferredduringschedulingignoredduringexecutionmixin)
        * [`obj template.spec.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution`](#obj-templatespecaffinitynodeaffinityrequiredduringschedulingignoredduringexecution)
          * [`fn withNodeSelectorTerms(nodeSelectorTerms)`](#fn-templatespecaffinitynodeaffinityrequiredduringschedulingignoredduringexecutionwithnodeselectorterms)
          * [`fn withNodeSelectorTermsMixin(nodeSelectorTerms)`](#fn-templatespecaffinitynodeaffinityrequiredduringschedulingignoredduringexecutionwithnodeselectortermsmixin)
      * [`obj template.spec.affinity.podAffinity`](#obj-templatespecaffinitypodaffinity)
        * [`fn withPreferredDuringSchedulingIgnoredDuringExecution(preferredDuringSchedulingIgnoredDuringExecution)`](#fn-templatespecaffinitypodaffinitywithpreferredduringschedulingignoredduringexecution)
        * [`fn withPreferredDuringSchedulingIgnoredDuringExecutionMixin(preferredDuringSchedulingIgnoredDuringExecution)`](#fn-templatespecaffinitypodaffinitywithpreferredduringschedulingignoredduringexecutionmixin)
        * [`fn withRequiredDuringSchedulingIgnoredDuringExecution(requiredDuringSchedulingIgnoredDuringExecution)`](#fn-templatespecaffinitypodaffinitywithrequiredduringschedulingignoredduringexecution)
        * [`fn withRequiredDuringSchedulingIgnoredDuringExecutionMixin(requiredDuringSchedulingIgnoredDuringExecution)`](#fn-templatespecaffinitypodaffinitywithrequiredduringschedulingignoredduringexecutionmixin)
      * [`obj template.spec.affinity.podAntiAffinity`](#obj-templatespecaffinitypodantiaffinity)
        * [`fn withPreferredDuringSchedulingIgnoredDuringExecution(preferredDuringSchedulingIgnoredDuringExecution)`](#fn-templatespecaffinitypodantiaffinitywithpreferredduringschedulingignoredduringexecution)
        * [`fn withPreferredDuringSchedulingIgnoredDuringExecutionMixin(preferredDuringSchedulingIgnoredDuringExecution)`](#fn-templatespecaffinitypodantiaffinitywithpreferredduringschedulingignoredduringexecutionmixin)
        * [`fn withRequiredDuringSchedulingIgnoredDuringExecution(requiredDuringSchedulingIgnoredDuringExecution)`](#fn-templatespecaffinitypodantiaffinitywithrequiredduringschedulingignoredduringexecution)
        * [`fn withRequiredDuringSchedulingIgnoredDuringExecutionMixin(requiredDuringSchedulingIgnoredDuringExecution)`](#fn-templatespecaffinitypodantiaffinitywithrequiredduringschedulingignoredduringexecutionmixin)
    * [`obj template.spec.dnsConfig`](#obj-templatespecdnsconfig)
      * [`fn withNameservers(nameservers)`](#fn-templatespecdnsconfigwithnameservers)
      * [`fn withNameserversMixin(nameservers)`](#fn-templatespecdnsconfigwithnameserversmixin)
      * [`fn withOptions(options)`](#fn-templatespecdnsconfigwithoptions)
      * [`fn withOptionsMixin(options)`](#fn-templatespecdnsconfigwithoptionsmixin)
      * [`fn withSearches(searches)`](#fn-templatespecdnsconfigwithsearches)
      * [`fn withSearchesMixin(searches)`](#fn-templatespecdnsconfigwithsearchesmixin)
    * [`obj template.spec.securityContext`](#obj-templatespecsecuritycontext)
      * [`fn withFsGroup(fsGroup)`](#fn-templatespecsecuritycontextwithfsgroup)
      * [`fn withFsGroupChangePolicy(fsGroupChangePolicy)`](#fn-templatespecsecuritycontextwithfsgroupchangepolicy)
      * [`fn withRunAsGroup(runAsGroup)`](#fn-templatespecsecuritycontextwithrunasgroup)
      * [`fn withRunAsNonRoot(runAsNonRoot)`](#fn-templatespecsecuritycontextwithrunasnonroot)
      * [`fn withRunAsUser(runAsUser)`](#fn-templatespecsecuritycontextwithrunasuser)
      * [`fn withSupplementalGroups(supplementalGroups)`](#fn-templatespecsecuritycontextwithsupplementalgroups)
      * [`fn withSupplementalGroupsMixin(supplementalGroups)`](#fn-templatespecsecuritycontextwithsupplementalgroupsmixin)
      * [`fn withSysctls(sysctls)`](#fn-templatespecsecuritycontextwithsysctls)
      * [`fn withSysctlsMixin(sysctls)`](#fn-templatespecsecuritycontextwithsysctlsmixin)
      * [`obj template.spec.securityContext.seLinuxOptions`](#obj-templatespecsecuritycontextselinuxoptions)
        * [`fn withLevel(level)`](#fn-templatespecsecuritycontextselinuxoptionswithlevel)
        * [`fn withRole(role)`](#fn-templatespecsecuritycontextselinuxoptionswithrole)
        * [`fn withType(type)`](#fn-templatespecsecuritycontextselinuxoptionswithtype)
        * [`fn withUser(user)`](#fn-templatespecsecuritycontextselinuxoptionswithuser)
      * [`obj template.spec.securityContext.windowsOptions`](#obj-templatespecsecuritycontextwindowsoptions)
        * [`fn withGmsaCredentialSpec(gmsaCredentialSpec)`](#fn-templatespecsecuritycontextwindowsoptionswithgmsacredentialspec)
        * [`fn withGmsaCredentialSpecName(gmsaCredentialSpecName)`](#fn-templatespecsecuritycontextwindowsoptionswithgmsacredentialspecname)
        * [`fn withRunAsUserName(runAsUserName)`](#fn-templatespecsecuritycontextwindowsoptionswithrunasusername)

## Fields

### fn withActiveDeadlineSeconds

```ts
withActiveDeadlineSeconds(activeDeadlineSeconds)
```

Specifies the duration in seconds relative to the startTime that the job may be active before the system tries to terminate it; value must be positive integer

### fn withBackoffLimit

```ts
withBackoffLimit(backoffLimit)
```

Specifies the number of retries before marking this job failed. Defaults to 6

### fn withCompletions

```ts
withCompletions(completions)
```

Specifies the desired number of successfully finished pods the job should be run with.  Setting to nil means that the success of any pod signals the success of all pods, and allows parallelism to have any positive value.  Setting to 1 means that parallelism is limited to 1 and the success of that pod signals the success of the job. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/

### fn withManualSelector

```ts
withManualSelector(manualSelector)
```

manualSelector controls generation of pod labels and pod selectors. Leave `manualSelector` unset unless you are certain what you are doing. When false or unset, the system pick labels unique to this job and appends those labels to the pod template.  When true, the user is responsible for picking unique labels and specifying the selector.  Failure to pick a unique label may cause this and other jobs to not function correctly.  However, You may see `manualSelector=true` in jobs that were created with the old `extensions/v1beta1` API. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/#specifying-your-own-pod-selector

### fn withParallelism

```ts
withParallelism(parallelism)
```

Specifies the maximum desired number of pods the job should run at any given time. The actual number of pods running in steady state will be less than this number when ((.spec.completions - .status.successful) < .spec.parallelism), i.e. when the work left to do is less than max parallelism. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/

### fn withTtlSecondsAfterFinished

```ts
withTtlSecondsAfterFinished(ttlSecondsAfterFinished)
```

ttlSecondsAfterFinished limits the lifetime of a Job that has finished execution (either Complete or Failed). If this field is set, ttlSecondsAfterFinished after the Job finishes, it is eligible to be automatically deleted. When the Job is being deleted, its lifecycle guarantees (e.g. finalizers) will be honored. If this field is unset, the Job won't be automatically deleted. If this field is set to zero, the Job becomes eligible to be deleted immediately after it finishes. This field is alpha-level and is only honored by servers that enable the TTLAfterFinished feature.

## obj selector

A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.

### fn selector.withMatchExpressions

```ts
withMatchExpressions(matchExpressions)
```

matchExpressions is a list of label selector requirements. The requirements are ANDed.

### fn selector.withMatchExpressionsMixin

```ts
withMatchExpressionsMixin(matchExpressions)
```

matchExpressions is a list of label selector requirements. The requirements are ANDed.

**Note:** This function appends passed data to existing values

### fn selector.withMatchLabels

```ts
withMatchLabels(matchLabels)
```

matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is "key", the operator is "In", and the values array contains only "value". The requirements are ANDed.

### fn selector.withMatchLabelsMixin

```ts
withMatchLabelsMixin(matchLabels)
```

matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is "key", the operator is "In", and the values array contains only "value". The requirements are ANDed.

**Note:** This function appends passed data to existing values

## obj template

PodTemplateSpec describes the data a pod should have when created from a template

## obj template.metadata

ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.

### fn template.metadata.withAnnotations

```ts
withAnnotations(annotations)
```

Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: http://kubernetes.io/docs/user-guide/annotations

### fn template.metadata.withAnnotationsMixin

```ts
withAnnotationsMixin(annotations)
```

Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: http://kubernetes.io/docs/user-guide/annotations

**Note:** This function appends passed data to existing values

### fn template.metadata.withClusterName

```ts
withClusterName(clusterName)
```

The name of the cluster which the object belongs to. This is used to distinguish resources with same name and namespace in different clusters. This field is not set anywhere right now and apiserver is going to ignore it if set in create or update request.

### fn template.metadata.withCreationTimestamp

```ts
withCreationTimestamp(creationTimestamp)
```

Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.

### fn template.metadata.withDeletionGracePeriodSeconds

```ts
withDeletionGracePeriodSeconds(deletionGracePeriodSeconds)
```

Number of seconds allowed for this object to gracefully terminate before it will be removed from the system. Only set when deletionTimestamp is also set. May only be shortened. Read-only.

### fn template.metadata.withDeletionTimestamp

```ts
withDeletionTimestamp(deletionTimestamp)
```

Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.

### fn template.metadata.withFinalizers

```ts
withFinalizers(finalizers)
```

Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed. Finalizers may be processed and removed in any order.  Order is NOT enforced because it introduces significant risk of stuck finalizers. finalizers is a shared field, any actor with permission can reorder it. If the finalizer list is processed in order, then this can lead to a situation in which the component responsible for the first finalizer in the list is waiting for a signal (field value, external system, or other) produced by a component responsible for a finalizer later in the list, resulting in a deadlock. Without enforced ordering finalizers are free to order amongst themselves and are not vulnerable to ordering changes in the list.

### fn template.metadata.withFinalizersMixin

```ts
withFinalizersMixin(finalizers)
```

Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed. Finalizers may be processed and removed in any order.  Order is NOT enforced because it introduces significant risk of stuck finalizers. finalizers is a shared field, any actor with permission can reorder it. If the finalizer list is processed in order, then this can lead to a situation in which the component responsible for the first finalizer in the list is waiting for a signal (field value, external system, or other) produced by a component responsible for a finalizer later in the list, resulting in a deadlock. Without enforced ordering finalizers are free to order amongst themselves and are not vulnerable to ordering changes in the list.

**Note:** This function appends passed data to existing values

### fn template.metadata.withGenerateName

```ts
withGenerateName(generateName)
```

GenerateName is an optional prefix, used by the server, to generate a unique name ONLY IF the Name field has not been provided. If this field is used, the name returned to the client will be different than the name passed. This value will also be combined with a unique suffix. The provided value has the same validation rules as the Name field, and may be truncated by the length of the suffix required to make the value unique on the server.

If this field is specified and the generated name exists, the server will NOT return a 409 - instead, it will either return 201 Created or 500 with Reason ServerTimeout indicating a unique name could not be found in the time allotted, and the client should retry (optionally after the time indicated in the Retry-After header).

Applied only if Name is not specified. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#idempotency

### fn template.metadata.withGeneration

```ts
withGeneration(generation)
```

A sequence number representing a specific generation of the desired state. Populated by the system. Read-only.

### fn template.metadata.withLabels

```ts
withLabels(labels)
```

Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: http://kubernetes.io/docs/user-guide/labels

### fn template.metadata.withLabelsMixin

```ts
withLabelsMixin(labels)
```

Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: http://kubernetes.io/docs/user-guide/labels

**Note:** This function appends passed data to existing values

### fn template.metadata.withManagedFields

```ts
withManagedFields(managedFields)
```

ManagedFields maps workflow-id and version to the set of fields that are managed by that workflow. This is mostly for internal housekeeping, and users typically shouldn't need to set or understand this field. A workflow can be the user's name, a controller's name, or the name of a specific apply path like 'ci-cd'. The set of fields is always in the version that the workflow used when modifying the object.

### fn template.metadata.withManagedFieldsMixin

```ts
withManagedFieldsMixin(managedFields)
```

ManagedFields maps workflow-id and version to the set of fields that are managed by that workflow. This is mostly for internal housekeeping, and users typically shouldn't need to set or understand this field. A workflow can be the user's name, a controller's name, or the name of a specific apply path like 'ci-cd'. The set of fields is always in the version that the workflow used when modifying the object.

**Note:** This function appends passed data to existing values

### fn template.metadata.withName

```ts
withName(name)
```

Name must be unique within a namespace. Is required when creating resources, although some resources may allow a client to request the generation of an appropriate name automatically. Name is primarily intended for creation idempotence and configuration definition. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/identifiers#names

### fn template.metadata.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within each name must be unique. An empty namespace is equivalent to the "default" namespace, but "default" is the canonical representation. Not all objects are required to be scoped to a namespace - the value of this field for those objects will be empty.

Must be a DNS_LABEL. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/namespaces

### fn template.metadata.withOwnerReferences

```ts
withOwnerReferences(ownerReferences)
```

List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller.

### fn template.metadata.withOwnerReferencesMixin

```ts
withOwnerReferencesMixin(ownerReferences)
```

List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller.

**Note:** This function appends passed data to existing values

### fn template.metadata.withResourceVersion

```ts
withResourceVersion(resourceVersion)
```

An opaque value that represents the internal version of this object that can be used by clients to determine when objects have changed. May be used for optimistic concurrency, change detection, and the watch operation on a resource or set of resources. Clients must treat these values as opaque and passed unmodified back to the server. They may only be valid for a particular resource or set of resources.

Populated by the system. Read-only. Value must be treated as opaque by clients and . More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency

### fn template.metadata.withSelfLink

```ts
withSelfLink(selfLink)
```

SelfLink is a URL representing this object. Populated by the system. Read-only.

DEPRECATED Kubernetes will stop propagating this field in 1.20 release and the field is planned to be removed in 1.21 release.

### fn template.metadata.withUid

```ts
withUid(uid)
```

UID is the unique in time and space value for this object. It is typically generated by the server on successful creation of a resource and is not allowed to change on PUT operations.

Populated by the system. Read-only. More info: http://kubernetes.io/docs/user-guide/identifiers#uids

## obj template.spec

PodSpec is a description of a pod.

### fn template.spec.withActiveDeadlineSeconds

```ts
withActiveDeadlineSeconds(activeDeadlineSeconds)
```

Optional duration in seconds the pod may be active on the node relative to StartTime before the system will actively try to mark it failed and kill associated containers. Value must be a positive integer.

### fn template.spec.withAutomountServiceAccountToken

```ts
withAutomountServiceAccountToken(automountServiceAccountToken)
```

AutomountServiceAccountToken indicates whether a service account token should be automatically mounted.

### fn template.spec.withContainers

```ts
withContainers(containers)
```

List of containers belonging to the pod. Containers cannot currently be added or removed. There must be at least one container in a Pod. Cannot be updated.

### fn template.spec.withContainersMixin

```ts
withContainersMixin(containers)
```

List of containers belonging to the pod. Containers cannot currently be added or removed. There must be at least one container in a Pod. Cannot be updated.

**Note:** This function appends passed data to existing values

### fn template.spec.withDnsPolicy

```ts
withDnsPolicy(dnsPolicy)
```

Set DNS policy for the pod. Defaults to 'ClusterFirst'. Valid values are 'ClusterFirstWithHostNet', 'ClusterFirst', 'Default' or 'None'. DNS parameters given in DNSConfig will be merged with the policy selected with DNSPolicy. To have DNS options set along with hostNetwork, you have to specify DNS policy explicitly to 'ClusterFirstWithHostNet'.

### fn template.spec.withEnableServiceLinks

```ts
withEnableServiceLinks(enableServiceLinks)
```

EnableServiceLinks indicates whether information about services should be injected into pod's environment variables, matching the syntax of Docker links. Optional: Defaults to true.

### fn template.spec.withEphemeralContainers

```ts
withEphemeralContainers(ephemeralContainers)
```

List of ephemeral containers run in this pod. Ephemeral containers may be run in an existing pod to perform user-initiated actions such as debugging. This list cannot be specified when creating a pod, and it cannot be modified by updating the pod spec. In order to add an ephemeral container to an existing pod, use the pod's ephemeralcontainers subresource. This field is alpha-level and is only honored by servers that enable the EphemeralContainers feature.

### fn template.spec.withEphemeralContainersMixin

```ts
withEphemeralContainersMixin(ephemeralContainers)
```

List of ephemeral containers run in this pod. Ephemeral containers may be run in an existing pod to perform user-initiated actions such as debugging. This list cannot be specified when creating a pod, and it cannot be modified by updating the pod spec. In order to add an ephemeral container to an existing pod, use the pod's ephemeralcontainers subresource. This field is alpha-level and is only honored by servers that enable the EphemeralContainers feature.

**Note:** This function appends passed data to existing values

### fn template.spec.withHostAliases

```ts
withHostAliases(hostAliases)
```

HostAliases is an optional list of hosts and IPs that will be injected into the pod's hosts file if specified. This is only valid for non-hostNetwork pods.

### fn template.spec.withHostAliasesMixin

```ts
withHostAliasesMixin(hostAliases)
```

HostAliases is an optional list of hosts and IPs that will be injected into the pod's hosts file if specified. This is only valid for non-hostNetwork pods.

**Note:** This function appends passed data to existing values

### fn template.spec.withHostIPC

```ts
withHostIPC(hostIPC)
```

Use the host's ipc namespace. Optional: Default to false.

### fn template.spec.withHostNetwork

```ts
withHostNetwork(hostNetwork)
```

Host networking requested for this pod. Use the host's network namespace. If this option is set, the ports that will be used must be specified. Default to false.

### fn template.spec.withHostPID

```ts
withHostPID(hostPID)
```

Use the host's pid namespace. Optional: Default to false.

### fn template.spec.withHostname

```ts
withHostname(hostname)
```

Specifies the hostname of the Pod If not specified, the pod's hostname will be set to a system-defined value.

### fn template.spec.withImagePullSecrets

```ts
withImagePullSecrets(imagePullSecrets)
```

ImagePullSecrets is an optional list of references to secrets in the same namespace to use for pulling any of the images used by this PodSpec. If specified, these secrets will be passed to individual puller implementations for them to use. For example, in the case of docker, only DockerConfig type secrets are honored. More info: https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod

### fn template.spec.withImagePullSecretsMixin

```ts
withImagePullSecretsMixin(imagePullSecrets)
```

ImagePullSecrets is an optional list of references to secrets in the same namespace to use for pulling any of the images used by this PodSpec. If specified, these secrets will be passed to individual puller implementations for them to use. For example, in the case of docker, only DockerConfig type secrets are honored. More info: https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod

**Note:** This function appends passed data to existing values

### fn template.spec.withInitContainers

```ts
withInitContainers(initContainers)
```

List of initialization containers belonging to the pod. Init containers are executed in order prior to containers being started. If any init container fails, the pod is considered to have failed and is handled according to its restartPolicy. The name for an init container or normal container must be unique among all containers. Init containers may not have Lifecycle actions, Readiness probes, Liveness probes, or Startup probes. The resourceRequirements of an init container are taken into account during scheduling by finding the highest request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/

### fn template.spec.withInitContainersMixin

```ts
withInitContainersMixin(initContainers)
```

List of initialization containers belonging to the pod. Init containers are executed in order prior to containers being started. If any init container fails, the pod is considered to have failed and is handled according to its restartPolicy. The name for an init container or normal container must be unique among all containers. Init containers may not have Lifecycle actions, Readiness probes, Liveness probes, or Startup probes. The resourceRequirements of an init container are taken into account during scheduling by finding the highest request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/

**Note:** This function appends passed data to existing values

### fn template.spec.withNodeName

```ts
withNodeName(nodeName)
```

NodeName is a request to schedule this pod onto a specific node. If it is non-empty, the scheduler simply schedules this pod onto that node, assuming that it fits resource requirements.

### fn template.spec.withNodeSelector

```ts
withNodeSelector(nodeSelector)
```

NodeSelector is a selector which must be true for the pod to fit on a node. Selector which must match a node's labels for the pod to be scheduled on that node. More info: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/

### fn template.spec.withNodeSelectorMixin

```ts
withNodeSelectorMixin(nodeSelector)
```

NodeSelector is a selector which must be true for the pod to fit on a node. Selector which must match a node's labels for the pod to be scheduled on that node. More info: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/

**Note:** This function appends passed data to existing values

### fn template.spec.withOverhead

```ts
withOverhead(overhead)
```

Overhead represents the resource overhead associated with running a pod for a given RuntimeClass. This field will be autopopulated at admission time by the RuntimeClass admission controller. If the RuntimeClass admission controller is enabled, overhead must not be set in Pod create requests. The RuntimeClass admission controller will reject Pod create requests which have the overhead already set. If RuntimeClass is configured and selected in the PodSpec, Overhead will be set to the value defined in the corresponding RuntimeClass, otherwise it will remain unset and treated as zero. More info: https://git.k8s.io/enhancements/keps/sig-node/20190226-pod-overhead.md This field is alpha-level as of Kubernetes v1.16, and is only honored by servers that enable the PodOverhead feature.

### fn template.spec.withOverheadMixin

```ts
withOverheadMixin(overhead)
```

Overhead represents the resource overhead associated with running a pod for a given RuntimeClass. This field will be autopopulated at admission time by the RuntimeClass admission controller. If the RuntimeClass admission controller is enabled, overhead must not be set in Pod create requests. The RuntimeClass admission controller will reject Pod create requests which have the overhead already set. If RuntimeClass is configured and selected in the PodSpec, Overhead will be set to the value defined in the corresponding RuntimeClass, otherwise it will remain unset and treated as zero. More info: https://git.k8s.io/enhancements/keps/sig-node/20190226-pod-overhead.md This field is alpha-level as of Kubernetes v1.16, and is only honored by servers that enable the PodOverhead feature.

**Note:** This function appends passed data to existing values

### fn template.spec.withPreemptionPolicy

```ts
withPreemptionPolicy(preemptionPolicy)
```

PreemptionPolicy is the Policy for preempting pods with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset. This field is alpha-level and is only honored by servers that enable the NonPreemptingPriority feature.

### fn template.spec.withPriority

```ts
withPriority(priority)
```

The priority value. Various system components use this field to find the priority of the pod. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. The higher the value, the higher the priority.

### fn template.spec.withPriorityClassName

```ts
withPriorityClassName(priorityClassName)
```

If specified, indicates the pod's priority. 'system-node-critical' and 'system-cluster-critical' are two special keywords which indicate the highest priorities with the former being the highest priority. Any other name must be defined by creating a PriorityClass object with that name. If not specified, the pod priority will be default or zero if there is no default.

### fn template.spec.withReadinessGates

```ts
withReadinessGates(readinessGates)
```

If specified, all readiness gates will be evaluated for pod readiness. A pod is ready when all its containers are ready AND all conditions specified in the readiness gates have status equal to "True" More info: https://git.k8s.io/enhancements/keps/sig-network/0007-pod-ready%2B%2B.md

### fn template.spec.withReadinessGatesMixin

```ts
withReadinessGatesMixin(readinessGates)
```

If specified, all readiness gates will be evaluated for pod readiness. A pod is ready when all its containers are ready AND all conditions specified in the readiness gates have status equal to "True" More info: https://git.k8s.io/enhancements/keps/sig-network/0007-pod-ready%2B%2B.md

**Note:** This function appends passed data to existing values

### fn template.spec.withRestartPolicy

```ts
withRestartPolicy(restartPolicy)
```

Restart policy for all containers within the pod. One of Always, OnFailure, Never. Default to Always. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy

### fn template.spec.withRuntimeClassName

```ts
withRuntimeClassName(runtimeClassName)
```

RuntimeClassName refers to a RuntimeClass object in the node.k8s.io group, which should be used to run this pod.  If no RuntimeClass resource matches the named class, the pod will not be run. If unset or empty, the "legacy" RuntimeClass will be used, which is an implicit class with an empty definition that uses the default runtime handler. More info: https://git.k8s.io/enhancements/keps/sig-node/runtime-class.md This is a beta feature as of Kubernetes v1.14.

### fn template.spec.withSchedulerName

```ts
withSchedulerName(schedulerName)
```

If specified, the pod will be dispatched by specified scheduler. If not specified, the pod will be dispatched by default scheduler.

### fn template.spec.withServiceAccount

```ts
withServiceAccount(serviceAccount)
```

DeprecatedServiceAccount is a depreciated alias for ServiceAccountName. Deprecated: Use serviceAccountName instead.

### fn template.spec.withServiceAccountName

```ts
withServiceAccountName(serviceAccountName)
```

ServiceAccountName is the name of the ServiceAccount to use to run this pod. More info: https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/

### fn template.spec.withShareProcessNamespace

```ts
withShareProcessNamespace(shareProcessNamespace)
```

Share a single process namespace between all of the containers in a pod. When this is set containers will be able to view and signal processes from other containers in the same pod, and the first process in each container will not be assigned PID 1. HostPID and ShareProcessNamespace cannot both be set. Optional: Default to false.

### fn template.spec.withSubdomain

```ts
withSubdomain(subdomain)
```

If specified, the fully qualified Pod hostname will be "<hostname>.<subdomain>.<pod namespace>.svc.<cluster domain>". If not specified, the pod will not have a domainname at all.

### fn template.spec.withTerminationGracePeriodSeconds

```ts
withTerminationGracePeriodSeconds(terminationGracePeriodSeconds)
```

Optional duration in seconds the pod needs to terminate gracefully. May be decreased in delete request. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period will be used instead. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. Defaults to 30 seconds.

### fn template.spec.withTolerations

```ts
withTolerations(tolerations)
```

If specified, the pod's tolerations.

### fn template.spec.withTolerationsMixin

```ts
withTolerationsMixin(tolerations)
```

If specified, the pod's tolerations.

**Note:** This function appends passed data to existing values

### fn template.spec.withTopologySpreadConstraints

```ts
withTopologySpreadConstraints(topologySpreadConstraints)
```

TopologySpreadConstraints describes how a group of pods ought to spread across topology domains. Scheduler will schedule pods in a way which abides by the constraints. This field is only honored by clusters that enable the EvenPodsSpread feature. All topologySpreadConstraints are ANDed.

### fn template.spec.withTopologySpreadConstraintsMixin

```ts
withTopologySpreadConstraintsMixin(topologySpreadConstraints)
```

TopologySpreadConstraints describes how a group of pods ought to spread across topology domains. Scheduler will schedule pods in a way which abides by the constraints. This field is only honored by clusters that enable the EvenPodsSpread feature. All topologySpreadConstraints are ANDed.

**Note:** This function appends passed data to existing values

### fn template.spec.withVolumes

```ts
withVolumes(volumes)
```

List of volumes that can be mounted by containers belonging to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes

### fn template.spec.withVolumesMixin

```ts
withVolumesMixin(volumes)
```

List of volumes that can be mounted by containers belonging to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes

**Note:** This function appends passed data to existing values

## obj template.spec.affinity



## obj template.spec.affinity.nodeAffinity



### fn template.spec.affinity.nodeAffinity.withPreferredDuringSchedulingIgnoredDuringExecution

```ts
withPreferredDuringSchedulingIgnoredDuringExecution(preferredDuringSchedulingIgnoredDuringExecution)
```

The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding "weight" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred.

### fn template.spec.affinity.nodeAffinity.withPreferredDuringSchedulingIgnoredDuringExecutionMixin

```ts
withPreferredDuringSchedulingIgnoredDuringExecutionMixin(preferredDuringSchedulingIgnoredDuringExecution)
```

The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding "weight" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred.

**Note:** This function appends passed data to existing values

## obj template.spec.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution



### fn template.spec.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.withNodeSelectorTerms

```ts
withNodeSelectorTerms(nodeSelectorTerms)
```

Required. A list of node selector terms. The terms are ORed.

### fn template.spec.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.withNodeSelectorTermsMixin

```ts
withNodeSelectorTermsMixin(nodeSelectorTerms)
```

Required. A list of node selector terms. The terms are ORed.

**Note:** This function appends passed data to existing values

## obj template.spec.affinity.podAffinity



### fn template.spec.affinity.podAffinity.withPreferredDuringSchedulingIgnoredDuringExecution

```ts
withPreferredDuringSchedulingIgnoredDuringExecution(preferredDuringSchedulingIgnoredDuringExecution)
```

The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding "weight" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.

### fn template.spec.affinity.podAffinity.withPreferredDuringSchedulingIgnoredDuringExecutionMixin

```ts
withPreferredDuringSchedulingIgnoredDuringExecutionMixin(preferredDuringSchedulingIgnoredDuringExecution)
```

The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding "weight" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.

**Note:** This function appends passed data to existing values

### fn template.spec.affinity.podAffinity.withRequiredDuringSchedulingIgnoredDuringExecution

```ts
withRequiredDuringSchedulingIgnoredDuringExecution(requiredDuringSchedulingIgnoredDuringExecution)
```

If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.

### fn template.spec.affinity.podAffinity.withRequiredDuringSchedulingIgnoredDuringExecutionMixin

```ts
withRequiredDuringSchedulingIgnoredDuringExecutionMixin(requiredDuringSchedulingIgnoredDuringExecution)
```

If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.

**Note:** This function appends passed data to existing values

## obj template.spec.affinity.podAntiAffinity



### fn template.spec.affinity.podAntiAffinity.withPreferredDuringSchedulingIgnoredDuringExecution

```ts
withPreferredDuringSchedulingIgnoredDuringExecution(preferredDuringSchedulingIgnoredDuringExecution)
```

The scheduler will prefer to schedule pods to nodes that satisfy the anti-affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling anti-affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding "weight" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.

### fn template.spec.affinity.podAntiAffinity.withPreferredDuringSchedulingIgnoredDuringExecutionMixin

```ts
withPreferredDuringSchedulingIgnoredDuringExecutionMixin(preferredDuringSchedulingIgnoredDuringExecution)
```

The scheduler will prefer to schedule pods to nodes that satisfy the anti-affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling anti-affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding "weight" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.

**Note:** This function appends passed data to existing values

### fn template.spec.affinity.podAntiAffinity.withRequiredDuringSchedulingIgnoredDuringExecution

```ts
withRequiredDuringSchedulingIgnoredDuringExecution(requiredDuringSchedulingIgnoredDuringExecution)
```

If the anti-affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the anti-affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.

### fn template.spec.affinity.podAntiAffinity.withRequiredDuringSchedulingIgnoredDuringExecutionMixin

```ts
withRequiredDuringSchedulingIgnoredDuringExecutionMixin(requiredDuringSchedulingIgnoredDuringExecution)
```

If the anti-affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the anti-affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.

**Note:** This function appends passed data to existing values

## obj template.spec.dnsConfig



### fn template.spec.dnsConfig.withNameservers

```ts
withNameservers(nameservers)
```

A list of DNS name server IP addresses. This will be appended to the base nameservers generated from DNSPolicy. Duplicated nameservers will be removed.

### fn template.spec.dnsConfig.withNameserversMixin

```ts
withNameserversMixin(nameservers)
```

A list of DNS name server IP addresses. This will be appended to the base nameservers generated from DNSPolicy. Duplicated nameservers will be removed.

**Note:** This function appends passed data to existing values

### fn template.spec.dnsConfig.withOptions

```ts
withOptions(options)
```

A list of DNS resolver options. This will be merged with the base options generated from DNSPolicy. Duplicated entries will be removed. Resolution options given in Options will override those that appear in the base DNSPolicy.

### fn template.spec.dnsConfig.withOptionsMixin

```ts
withOptionsMixin(options)
```

A list of DNS resolver options. This will be merged with the base options generated from DNSPolicy. Duplicated entries will be removed. Resolution options given in Options will override those that appear in the base DNSPolicy.

**Note:** This function appends passed data to existing values

### fn template.spec.dnsConfig.withSearches

```ts
withSearches(searches)
```

A list of DNS search domains for host-name lookup. This will be appended to the base search paths generated from DNSPolicy. Duplicated search paths will be removed.

### fn template.spec.dnsConfig.withSearchesMixin

```ts
withSearchesMixin(searches)
```

A list of DNS search domains for host-name lookup. This will be appended to the base search paths generated from DNSPolicy. Duplicated search paths will be removed.

**Note:** This function appends passed data to existing values

## obj template.spec.securityContext

PodSecurityContext holds pod-level security attributes and common container settings. Some fields are also present in container.securityContext.  Field values of container.securityContext take precedence over field values of PodSecurityContext.

### fn template.spec.securityContext.withFsGroup

```ts
withFsGroup(fsGroup)
```

A special supplemental group that applies to all containers in a pod. Some volume types allow the Kubelet to change the ownership of that volume to be owned by the pod:

1. The owning GID will be the FSGroup 2. The setgid bit is set (new files created in the volume will be owned by FSGroup) 3. The permission bits are OR'd with rw-rw----

If unset, the Kubelet will not modify the ownership and permissions of any volume.

### fn template.spec.securityContext.withFsGroupChangePolicy

```ts
withFsGroupChangePolicy(fsGroupChangePolicy)
```

fsGroupChangePolicy defines behavior of changing ownership and permission of the volume before being exposed inside Pod. This field will only apply to volume types which support fsGroup based ownership(and permissions). It will have no effect on ephemeral volume types such as: secret, configmaps and emptydir. Valid values are "OnRootMismatch" and "Always". If not specified defaults to "Always".

### fn template.spec.securityContext.withRunAsGroup

```ts
withRunAsGroup(runAsGroup)
```

The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container.

### fn template.spec.securityContext.withRunAsNonRoot

```ts
withRunAsNonRoot(runAsNonRoot)
```

Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.

### fn template.spec.securityContext.withRunAsUser

```ts
withRunAsUser(runAsUser)
```

The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container.

### fn template.spec.securityContext.withSupplementalGroups

```ts
withSupplementalGroups(supplementalGroups)
```

A list of groups applied to the first process run in each container, in addition to the container's primary GID.  If unspecified, no groups will be added to any container.

### fn template.spec.securityContext.withSupplementalGroupsMixin

```ts
withSupplementalGroupsMixin(supplementalGroups)
```

A list of groups applied to the first process run in each container, in addition to the container's primary GID.  If unspecified, no groups will be added to any container.

**Note:** This function appends passed data to existing values

### fn template.spec.securityContext.withSysctls

```ts
withSysctls(sysctls)
```

Sysctls hold a list of namespaced sysctls used for the pod. Pods with unsupported sysctls (by the container runtime) might fail to launch.

### fn template.spec.securityContext.withSysctlsMixin

```ts
withSysctlsMixin(sysctls)
```

Sysctls hold a list of namespaced sysctls used for the pod. Pods with unsupported sysctls (by the container runtime) might fail to launch.

**Note:** This function appends passed data to existing values

## obj template.spec.securityContext.seLinuxOptions

SELinuxOptions are the labels to be applied to the container

### fn template.spec.securityContext.seLinuxOptions.withLevel

```ts
withLevel(level)
```

Level is SELinux level label that applies to the container.

### fn template.spec.securityContext.seLinuxOptions.withRole

```ts
withRole(role)
```

Role is a SELinux role label that applies to the container.

### fn template.spec.securityContext.seLinuxOptions.withType

```ts
withType(type)
```

Type is a SELinux type label that applies to the container.

### fn template.spec.securityContext.seLinuxOptions.withUser

```ts
withUser(user)
```

User is a SELinux user label that applies to the container.

## obj template.spec.securityContext.windowsOptions



### fn template.spec.securityContext.windowsOptions.withGmsaCredentialSpec

```ts
withGmsaCredentialSpec(gmsaCredentialSpec)
```

GMSACredentialSpec is where the GMSA admission webhook (https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field.

### fn template.spec.securityContext.windowsOptions.withGmsaCredentialSpecName

```ts
withGmsaCredentialSpecName(gmsaCredentialSpecName)
```

GMSACredentialSpecName is the name of the GMSA credential spec to use.

### fn template.spec.securityContext.windowsOptions.withRunAsUserName

```ts
withRunAsUserName(runAsUserName)
```

The UserName in Windows to run the entrypoint of the container process. Defaults to the user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.