---
permalink: /1.21/core/v1/portworxVolumeSource/
---

# package portworxVolumeSource

PortworxVolumeSource represents a Portworx volume resource.

## Index

* [`fn withFsType(fsType)`](#fn-withfstype)
* [`fn withReadOnly(readOnly)`](#fn-withreadonly)
* [`fn withVolumeID(volumeID)`](#fn-withvolumeid)

## Fields

### fn withFsType

```ts
withFsType(fsType)
```

FSType represents the filesystem type to mount Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs". Implicitly inferred to be "ext4" if unspecified.

### fn withReadOnly

```ts
withReadOnly(readOnly)
```

Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.

### fn withVolumeID

```ts
withVolumeID(volumeID)
```

VolumeID uniquely identifies a Portworx volume