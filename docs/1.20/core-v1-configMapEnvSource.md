---
permalink: /1.20/core/v1/configMapEnvSource/
---

# package configMapEnvSource

ConfigMapEnvSource selects a ConfigMap to populate the environment variables with.

The contents of the target ConfigMap's Data field will represent the key-value pairs as environment variables.

## Index

* [`fn withName(name)`](#fn-withname)
* [`fn withOptional(optional)`](#fn-withoptional)

## Fields

### fn withName

```ts
withName(name)
```

Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names

### fn withOptional

```ts
withOptional(optional)
```

Specify whether the ConfigMap must be defined