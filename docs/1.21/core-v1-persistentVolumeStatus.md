---
permalink: /1.21/core/v1/persistentVolumeStatus/
---

# package persistentVolumeStatus

PersistentVolumeStatus is the current status of a persistent volume.

## Index

* [`fn withMessage(message)`](#fn-withmessage)
* [`fn withPhase(phase)`](#fn-withphase)
* [`fn withReason(reason)`](#fn-withreason)

## Fields

### fn withMessage

```ts
withMessage(message)
```

A human-readable message indicating details about why the volume is in this state.

### fn withPhase

```ts
withPhase(phase)
```

Phase indicates if a volume is available, bound to a claim, or released by a claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#phase

### fn withReason

```ts
withReason(reason)
```

Reason is a brief CamelCase string that describes any failure and is meant for machine parsing and tidy display in the CLI.