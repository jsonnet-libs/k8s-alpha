---
permalink: /1.21/core/v1/configMapNodeConfigSource/
---

# package configMapNodeConfigSource

ConfigMapNodeConfigSource contains the information to reference a ConfigMap as a config source for the Node.

## Index

* [`fn withKubeletConfigKey(kubeletConfigKey)`](#fn-withkubeletconfigkey)
* [`fn withName(name)`](#fn-withname)
* [`fn withNamespace(namespace)`](#fn-withnamespace)
* [`fn withResourceVersion(resourceVersion)`](#fn-withresourceversion)
* [`fn withUid(uid)`](#fn-withuid)

## Fields

### fn withKubeletConfigKey

```ts
withKubeletConfigKey(kubeletConfigKey)
```

KubeletConfigKey declares which key of the referenced ConfigMap corresponds to the KubeletConfiguration structure This field is required in all cases.

### fn withName

```ts
withName(name)
```

Name is the metadata.name of the referenced ConfigMap. This field is required in all cases.

### fn withNamespace

```ts
withNamespace(namespace)
```

Namespace is the metadata.namespace of the referenced ConfigMap. This field is required in all cases.

### fn withResourceVersion

```ts
withResourceVersion(resourceVersion)
```

ResourceVersion is the metadata.ResourceVersion of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.

### fn withUid

```ts
withUid(uid)
```

UID is the metadata.UID of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.