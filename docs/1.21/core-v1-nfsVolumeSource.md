---
permalink: /1.21/core/v1/nfsVolumeSource/
---

# package nfsVolumeSource

Represents an NFS mount that lasts the lifetime of a pod. NFS volumes do not support ownership management or SELinux relabeling.

## Index

* [`fn withPath(path)`](#fn-withpath)
* [`fn withReadOnly(readOnly)`](#fn-withreadonly)
* [`fn withServer(server)`](#fn-withserver)

## Fields

### fn withPath

```ts
withPath(path)
```

Path that is exported by the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs

### fn withReadOnly

```ts
withReadOnly(readOnly)
```

ReadOnly here will force the NFS export to be mounted with read-only permissions. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs

### fn withServer

```ts
withServer(server)
```

Server is the hostname or IP address of the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs