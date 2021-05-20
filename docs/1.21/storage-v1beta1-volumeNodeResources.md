---
permalink: /1.21/storage/v1beta1/volumeNodeResources/
---

# package volumeNodeResources

VolumeNodeResources is a set of resource limits for scheduling of volumes.

## Index

* [`fn withCount(count)`](#fn-withcount)

## Fields

### fn withCount

```ts
withCount(count)
```

Maximum number of unique volumes managed by the CSI driver that can be used on a node. A volume that is both attached and mounted on a node is considered to be used once, not twice. The same rule applies for a unique volume that is shared among multiple pods on the same node. If this field is nil, then the supported number of volumes on this node is unbounded.