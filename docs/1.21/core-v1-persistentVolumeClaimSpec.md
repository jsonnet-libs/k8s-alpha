---
permalink: /1.21/core/v1/persistentVolumeClaimSpec/
---

# package persistentVolumeClaimSpec

PersistentVolumeClaimSpec describes the common attributes of storage devices and allows a Source for provider-specific attributes

## Index

* [`fn withAccessModes(accessModes)`](#fn-withaccessmodes)
* [`fn withAccessModesMixin(accessModes)`](#fn-withaccessmodesmixin)
* [`fn withStorageClassName(storageClassName)`](#fn-withstorageclassname)
* [`fn withVolumeMode(volumeMode)`](#fn-withvolumemode)
* [`fn withVolumeName(volumeName)`](#fn-withvolumename)
* [`obj dataSource`](#obj-datasource)
  * [`fn withApiGroup(apiGroup)`](#fn-datasourcewithapigroup)
  * [`fn withKind(kind)`](#fn-datasourcewithkind)
  * [`fn withName(name)`](#fn-datasourcewithname)
* [`obj resources`](#obj-resources)
  * [`fn withLimits(limits)`](#fn-resourceswithlimits)
  * [`fn withLimitsMixin(limits)`](#fn-resourceswithlimitsmixin)
  * [`fn withRequests(requests)`](#fn-resourceswithrequests)
  * [`fn withRequestsMixin(requests)`](#fn-resourceswithrequestsmixin)
* [`obj selector`](#obj-selector)
  * [`fn withMatchExpressions(matchExpressions)`](#fn-selectorwithmatchexpressions)
  * [`fn withMatchExpressionsMixin(matchExpressions)`](#fn-selectorwithmatchexpressionsmixin)
  * [`fn withMatchLabels(matchLabels)`](#fn-selectorwithmatchlabels)
  * [`fn withMatchLabelsMixin(matchLabels)`](#fn-selectorwithmatchlabelsmixin)

## Fields

### fn withAccessModes

```ts
withAccessModes(accessModes)
```

AccessModes contains the desired access modes the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1

### fn withAccessModesMixin

```ts
withAccessModesMixin(accessModes)
```

AccessModes contains the desired access modes the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1

**Note:** This function appends passed data to existing values

### fn withStorageClassName

```ts
withStorageClassName(storageClassName)
```

Name of the StorageClass required by the claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1

### fn withVolumeMode

```ts
withVolumeMode(volumeMode)
```

volumeMode defines what type of volume is required by the claim. Value of Filesystem is implied when not included in claim spec.

### fn withVolumeName

```ts
withVolumeName(volumeName)
```

VolumeName is the binding reference to the PersistentVolume backing this claim.

## obj dataSource

TypedLocalObjectReference contains enough information to let you locate the typed referenced object inside the same namespace.

### fn dataSource.withApiGroup

```ts
withApiGroup(apiGroup)
```

APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.

### fn dataSource.withKind

```ts
withKind(kind)
```

Kind is the type of resource being referenced

### fn dataSource.withName

```ts
withName(name)
```

Name is the name of resource being referenced

## obj resources

ResourceRequirements describes the compute resource requirements.

### fn resources.withLimits

```ts
withLimits(limits)
```

Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/

### fn resources.withLimitsMixin

```ts
withLimitsMixin(limits)
```

Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/

**Note:** This function appends passed data to existing values

### fn resources.withRequests

```ts
withRequests(requests)
```

Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/

### fn resources.withRequestsMixin

```ts
withRequestsMixin(requests)
```

Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/

**Note:** This function appends passed data to existing values

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