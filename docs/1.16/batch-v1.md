---
permalink: /1.16/batch/v1/
---

# package v1



## Subpackages

* [job](batch-v1-job.md)
* [jobCondition](batch-v1-jobCondition.md)
* [jobSpec](batch-v1-jobSpec.md)
* [jobStatus](batch-v1-jobStatus.md)

## Index

* [`obj cronJob`](#obj-cronjob)
  * [`fn mapContainers(f)`](#fn-cronjobmapcontainers)
  * [`fn mapContainersWithName(names, f)`](#fn-cronjobmapcontainerswithname)

## Fields

## obj cronJob



### fn cronJob.mapContainers

```ts
mapContainers(f)
```

`mapContainers` applies the function f to each container.
It works exactly as `std.map`, but on the containers of this object.

**Signature of `f`**:
```ts
f(container: Object) Object
```


### fn cronJob.mapContainersWithName

```ts
mapContainersWithName(names, f)
```

