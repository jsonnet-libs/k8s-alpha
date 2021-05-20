---
permalink: /1.20/core/v1/podStatus/
---

# package podStatus

PodStatus represents information about the status of a pod. Status may trail the actual state of a system, especially if the node that hosts the pod cannot contact the control plane.

## Index

* [`fn withConditions(conditions)`](#fn-withconditions)
* [`fn withConditionsMixin(conditions)`](#fn-withconditionsmixin)
* [`fn withContainerStatuses(containerStatuses)`](#fn-withcontainerstatuses)
* [`fn withContainerStatusesMixin(containerStatuses)`](#fn-withcontainerstatusesmixin)
* [`fn withEphemeralContainerStatuses(ephemeralContainerStatuses)`](#fn-withephemeralcontainerstatuses)
* [`fn withEphemeralContainerStatusesMixin(ephemeralContainerStatuses)`](#fn-withephemeralcontainerstatusesmixin)
* [`fn withHostIP(hostIP)`](#fn-withhostip)
* [`fn withInitContainerStatuses(initContainerStatuses)`](#fn-withinitcontainerstatuses)
* [`fn withInitContainerStatusesMixin(initContainerStatuses)`](#fn-withinitcontainerstatusesmixin)
* [`fn withMessage(message)`](#fn-withmessage)
* [`fn withNominatedNodeName(nominatedNodeName)`](#fn-withnominatednodename)
* [`fn withPhase(phase)`](#fn-withphase)
* [`fn withPodIP(podIP)`](#fn-withpodip)
* [`fn withPodIPs(podIPs)`](#fn-withpodips)
* [`fn withPodIPsMixin(podIPs)`](#fn-withpodipsmixin)
* [`fn withQosClass(qosClass)`](#fn-withqosclass)
* [`fn withReason(reason)`](#fn-withreason)
* [`fn withStartTime(startTime)`](#fn-withstarttime)

## Fields

### fn withConditions

```ts
withConditions(conditions)
```

Current service state of pod. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions

### fn withConditionsMixin

```ts
withConditionsMixin(conditions)
```

Current service state of pod. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions

**Note:** This function appends passed data to existing values

### fn withContainerStatuses

```ts
withContainerStatuses(containerStatuses)
```

The list has one entry per container in the manifest. Each entry is currently the output of `docker inspect`. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status

### fn withContainerStatusesMixin

```ts
withContainerStatusesMixin(containerStatuses)
```

The list has one entry per container in the manifest. Each entry is currently the output of `docker inspect`. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status

**Note:** This function appends passed data to existing values

### fn withEphemeralContainerStatuses

```ts
withEphemeralContainerStatuses(ephemeralContainerStatuses)
```

Status for any ephemeral containers that have run in this pod. This field is alpha-level and is only populated by servers that enable the EphemeralContainers feature.

### fn withEphemeralContainerStatusesMixin

```ts
withEphemeralContainerStatusesMixin(ephemeralContainerStatuses)
```

Status for any ephemeral containers that have run in this pod. This field is alpha-level and is only populated by servers that enable the EphemeralContainers feature.

**Note:** This function appends passed data to existing values

### fn withHostIP

```ts
withHostIP(hostIP)
```

IP address of the host to which the pod is assigned. Empty if not yet scheduled.

### fn withInitContainerStatuses

```ts
withInitContainerStatuses(initContainerStatuses)
```

The list has one entry per init container in the manifest. The most recent successful init container will have ready = true, the most recently started container will have startTime set. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status

### fn withInitContainerStatusesMixin

```ts
withInitContainerStatusesMixin(initContainerStatuses)
```

The list has one entry per init container in the manifest. The most recent successful init container will have ready = true, the most recently started container will have startTime set. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status

**Note:** This function appends passed data to existing values

### fn withMessage

```ts
withMessage(message)
```

A human readable message indicating details about why the pod is in this condition.

### fn withNominatedNodeName

```ts
withNominatedNodeName(nominatedNodeName)
```

nominatedNodeName is set only when this pod preempts other pods on the node, but it cannot be scheduled right away as preemption victims receive their graceful termination periods. This field does not guarantee that the pod will be scheduled on this node. Scheduler may decide to place the pod elsewhere if other nodes become available sooner. Scheduler may also decide to give the resources on this node to a higher priority pod that is created after preemption. As a result, this field may be different than PodSpec.nodeName when the pod is scheduled.

### fn withPhase

```ts
withPhase(phase)
```

The phase of a Pod is a simple, high-level summary of where the Pod is in its lifecycle. The conditions array, the reason and message fields, and the individual container status arrays contain more detail about the pod's status. There are five possible phase values:

Pending: The pod has been accepted by the Kubernetes system, but one or more of the container images has not been created. This includes time before being scheduled as well as time spent downloading images over the network, which could take a while. Running: The pod has been bound to a node, and all of the containers have been created. At least one container is still running, or is in the process of starting or restarting. Succeeded: All containers in the pod have terminated in success, and will not be restarted. Failed: All containers in the pod have terminated, and at least one container has terminated in failure. The container either exited with non-zero status or was terminated by the system. Unknown: For some reason the state of the pod could not be obtained, typically due to an error in communicating with the host of the pod.

More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-phase

### fn withPodIP

```ts
withPodIP(podIP)
```

IP address allocated to the pod. Routable at least within the cluster. Empty if not yet allocated.

### fn withPodIPs

```ts
withPodIPs(podIPs)
```

podIPs holds the IP addresses allocated to the pod. If this field is specified, the 0th entry must match the podIP field. Pods may be allocated at most 1 value for each of IPv4 and IPv6. This list is empty if no IPs have been allocated yet.

### fn withPodIPsMixin

```ts
withPodIPsMixin(podIPs)
```

podIPs holds the IP addresses allocated to the pod. If this field is specified, the 0th entry must match the podIP field. Pods may be allocated at most 1 value for each of IPv4 and IPv6. This list is empty if no IPs have been allocated yet.

**Note:** This function appends passed data to existing values

### fn withQosClass

```ts
withQosClass(qosClass)
```

The Quality of Service (QOS) classification assigned to the pod based on resource requirements See PodQOSClass type for available QOS classes More info: https://git.k8s.io/community/contributors/design-proposals/node/resource-qos.md

### fn withReason

```ts
withReason(reason)
```

A brief CamelCase message indicating details about why the pod is in this state. e.g. 'Evicted'

### fn withStartTime

```ts
withStartTime(startTime)
```

Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.