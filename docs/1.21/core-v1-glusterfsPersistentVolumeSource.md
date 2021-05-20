---
permalink: /1.21/core/v1/glusterfsPersistentVolumeSource/
---

# package glusterfsPersistentVolumeSource

Represents a Glusterfs mount that lasts the lifetime of a pod. Glusterfs volumes do not support ownership management or SELinux relabeling.

## Index

* [`fn withEndpoints(endpoints)`](#fn-withendpoints)
* [`fn withEndpointsNamespace(endpointsNamespace)`](#fn-withendpointsnamespace)
* [`fn withPath(path)`](#fn-withpath)
* [`fn withReadOnly(readOnly)`](#fn-withreadonly)

## Fields

### fn withEndpoints

```ts
withEndpoints(endpoints)
```

EndpointsName is the endpoint name that details Glusterfs topology. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod

### fn withEndpointsNamespace

```ts
withEndpointsNamespace(endpointsNamespace)
```

EndpointsNamespace is the namespace that contains Glusterfs endpoint. If this field is empty, the EndpointNamespace defaults to the same namespace as the bound PVC. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod

### fn withPath

```ts
withPath(path)
```

Path is the Glusterfs volume path. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod

### fn withReadOnly

```ts
withReadOnly(readOnly)
```

ReadOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod