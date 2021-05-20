---
permalink: /1.21/core/v1/scaleIOPersistentVolumeSource/
---

# package scaleIOPersistentVolumeSource

ScaleIOPersistentVolumeSource represents a persistent ScaleIO volume

## Index

* [`fn withFsType(fsType)`](#fn-withfstype)
* [`fn withGateway(gateway)`](#fn-withgateway)
* [`fn withProtectionDomain(protectionDomain)`](#fn-withprotectiondomain)
* [`fn withReadOnly(readOnly)`](#fn-withreadonly)
* [`fn withSslEnabled(sslEnabled)`](#fn-withsslenabled)
* [`fn withStorageMode(storageMode)`](#fn-withstoragemode)
* [`fn withStoragePool(storagePool)`](#fn-withstoragepool)
* [`fn withSystem(system)`](#fn-withsystem)
* [`fn withVolumeName(volumeName)`](#fn-withvolumename)
* [`obj secretRef`](#obj-secretref)
  * [`fn withName(name)`](#fn-secretrefwithname)
  * [`fn withNamespace(namespace)`](#fn-secretrefwithnamespace)

## Fields

### fn withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Default is "xfs"

### fn withGateway

```ts
withGateway(gateway)
```

The host address of the ScaleIO API Gateway.

### fn withProtectionDomain

```ts
withProtectionDomain(protectionDomain)
```

The name of the ScaleIO Protection Domain for the configured storage.

### fn withReadOnly

```ts
withReadOnly(readOnly)
```

Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.

### fn withSslEnabled

```ts
withSslEnabled(sslEnabled)
```

Flag to enable/disable SSL communication with Gateway, default false

### fn withStorageMode

```ts
withStorageMode(storageMode)
```

Indicates whether the storage for a volume should be ThickProvisioned or ThinProvisioned. Default is ThinProvisioned.

### fn withStoragePool

```ts
withStoragePool(storagePool)
```

The ScaleIO Storage Pool associated with the protection domain.

### fn withSystem

```ts
withSystem(system)
```

The name of the storage system as configured in ScaleIO.

### fn withVolumeName

```ts
withVolumeName(volumeName)
```

The name of a volume already created in the ScaleIO system that is associated with this volume source.

## obj secretRef

SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace

### fn secretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn secretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.