---
permalink: /1.20/apps/v1/daemonSetUpdateStrategy/
---

# package daemonSetUpdateStrategy

DaemonSetUpdateStrategy is a struct used to control the update strategy for a DaemonSet.

## Index

* [`fn withType(type)`](#fn-withtype)
* [`obj rollingUpdate`](#obj-rollingupdate)
  * [`fn withMaxUnavailable(maxUnavailable)`](#fn-rollingupdatewithmaxunavailable)

## Fields

### fn withType

```ts
withType(type)
```

Type of daemon set update. Can be "RollingUpdate" or "OnDelete". Default is RollingUpdate.

## obj rollingUpdate

Spec to control the desired behavior of daemon set rolling update.

### fn rollingUpdate.withMaxUnavailable

```ts
withMaxUnavailable(maxUnavailable)
```

IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.