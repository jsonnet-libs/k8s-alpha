---
permalink: /1.20/autoscaling/v2beta2/horizontalPodAutoscalerSpec/
---

# package horizontalPodAutoscalerSpec

HorizontalPodAutoscalerSpec describes the desired functionality of the HorizontalPodAutoscaler.

## Index

* [`fn withMaxReplicas(maxReplicas)`](#fn-withmaxreplicas)
* [`fn withMetrics(metrics)`](#fn-withmetrics)
* [`fn withMetricsMixin(metrics)`](#fn-withmetricsmixin)
* [`fn withMinReplicas(minReplicas)`](#fn-withminreplicas)
* [`obj behavior`](#obj-behavior)
  * [`obj behavior.scaleDown`](#obj-behaviorscaledown)
    * [`fn withPolicies(policies)`](#fn-behaviorscaledownwithpolicies)
    * [`fn withPoliciesMixin(policies)`](#fn-behaviorscaledownwithpoliciesmixin)
    * [`fn withSelectPolicy(selectPolicy)`](#fn-behaviorscaledownwithselectpolicy)
    * [`fn withStabilizationWindowSeconds(stabilizationWindowSeconds)`](#fn-behaviorscaledownwithstabilizationwindowseconds)
  * [`obj behavior.scaleUp`](#obj-behaviorscaleup)
    * [`fn withPolicies(policies)`](#fn-behaviorscaleupwithpolicies)
    * [`fn withPoliciesMixin(policies)`](#fn-behaviorscaleupwithpoliciesmixin)
    * [`fn withSelectPolicy(selectPolicy)`](#fn-behaviorscaleupwithselectpolicy)
    * [`fn withStabilizationWindowSeconds(stabilizationWindowSeconds)`](#fn-behaviorscaleupwithstabilizationwindowseconds)
* [`obj scaleTargetRef`](#obj-scaletargetref)
  * [`fn withKind(kind)`](#fn-scaletargetrefwithkind)
  * [`fn withName(name)`](#fn-scaletargetrefwithname)

## Fields

### fn withMaxReplicas

```ts
withMaxReplicas(maxReplicas)
```

maxReplicas is the upper limit for the number of replicas to which the autoscaler can scale up. It cannot be less that minReplicas.

### fn withMetrics

```ts
withMetrics(metrics)
```

metrics contains the specifications for which to use to calculate the desired replica count (the maximum replica count across all metrics will be used).  The desired replica count is calculated multiplying the ratio between the target value and the current value by the current number of pods.  Ergo, metrics used must decrease as the pod count is increased, and vice-versa.  See the individual metric source types for more information about how each type of metric must respond. If not set, the default metric will be set to 80% average CPU utilization.

### fn withMetricsMixin

```ts
withMetricsMixin(metrics)
```

metrics contains the specifications for which to use to calculate the desired replica count (the maximum replica count across all metrics will be used).  The desired replica count is calculated multiplying the ratio between the target value and the current value by the current number of pods.  Ergo, metrics used must decrease as the pod count is increased, and vice-versa.  See the individual metric source types for more information about how each type of metric must respond. If not set, the default metric will be set to 80% average CPU utilization.

**Note:** This function appends passed data to existing values

### fn withMinReplicas

```ts
withMinReplicas(minReplicas)
```

minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available.

## obj behavior

HorizontalPodAutoscalerBehavior configures the scaling behavior of the target in both Up and Down directions (scaleUp and scaleDown fields respectively).

## obj behavior.scaleDown



### fn behavior.scaleDown.withPolicies

```ts
withPolicies(policies)
```

policies is a list of potential scaling polices which can be used during scaling. At least one policy must be specified, otherwise the HPAScalingRules will be discarded as invalid

### fn behavior.scaleDown.withPoliciesMixin

```ts
withPoliciesMixin(policies)
```

policies is a list of potential scaling polices which can be used during scaling. At least one policy must be specified, otherwise the HPAScalingRules will be discarded as invalid

**Note:** This function appends passed data to existing values

### fn behavior.scaleDown.withSelectPolicy

```ts
withSelectPolicy(selectPolicy)
```

selectPolicy is used to specify which policy should be used. If not set, the default value MaxPolicySelect is used.

### fn behavior.scaleDown.withStabilizationWindowSeconds

```ts
withStabilizationWindowSeconds(stabilizationWindowSeconds)
```

StabilizationWindowSeconds is the number of seconds for which past recommendations should be considered while scaling up or scaling down. StabilizationWindowSeconds must be greater than or equal to zero and less than or equal to 3600 (one hour). If not set, use the default values: - For scale up: 0 (i.e. no stabilization is done). - For scale down: 300 (i.e. the stabilization window is 300 seconds long).

## obj behavior.scaleUp



### fn behavior.scaleUp.withPolicies

```ts
withPolicies(policies)
```

policies is a list of potential scaling polices which can be used during scaling. At least one policy must be specified, otherwise the HPAScalingRules will be discarded as invalid

### fn behavior.scaleUp.withPoliciesMixin

```ts
withPoliciesMixin(policies)
```

policies is a list of potential scaling polices which can be used during scaling. At least one policy must be specified, otherwise the HPAScalingRules will be discarded as invalid

**Note:** This function appends passed data to existing values

### fn behavior.scaleUp.withSelectPolicy

```ts
withSelectPolicy(selectPolicy)
```

selectPolicy is used to specify which policy should be used. If not set, the default value MaxPolicySelect is used.

### fn behavior.scaleUp.withStabilizationWindowSeconds

```ts
withStabilizationWindowSeconds(stabilizationWindowSeconds)
```

StabilizationWindowSeconds is the number of seconds for which past recommendations should be considered while scaling up or scaling down. StabilizationWindowSeconds must be greater than or equal to zero and less than or equal to 3600 (one hour). If not set, use the default values: - For scale up: 0 (i.e. no stabilization is done). - For scale down: 300 (i.e. the stabilization window is 300 seconds long).

## obj scaleTargetRef

CrossVersionObjectReference contains enough information to let you identify the referred resource.

### fn scaleTargetRef.withKind

```ts
withKind(kind)
```

Kind of the referent; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds"

### fn scaleTargetRef.withName

```ts
withName(name)
```

Name of the referent; More info: http://kubernetes.io/docs/user-guide/identifiers#names