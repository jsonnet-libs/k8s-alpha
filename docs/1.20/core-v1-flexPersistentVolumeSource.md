---
permalink: /1.20/core/v1/flexPersistentVolumeSource/
---

# package flexPersistentVolumeSource

FlexPersistentVolumeSource represents a generic persistent volume resource that is provisioned/attached using an exec based plugin.

## Index

* [`fn withDriver(driver)`](#fn-withdriver)
* [`fn withFsType(fsType)`](#fn-withfstype)
* [`fn withOptions(options)`](#fn-withoptions)
* [`fn withOptionsMixin(options)`](#fn-withoptionsmixin)
* [`fn withReadOnly(readOnly)`](#fn-withreadonly)
* [`obj secretRef`](#obj-secretref)
  * [`fn withName(name)`](#fn-secretrefwithname)
  * [`fn withNamespace(namespace)`](#fn-secretrefwithnamespace)

## Fields

### fn withDriver

```ts
withDriver(driver)
```

Driver is the name of the driver to use for this volume.

### fn withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". The default filesystem depends on FlexVolume script.

### fn withOptions

```ts
withOptions(options)
```

Optional: Extra command options if any.

### fn withOptionsMixin

```ts
withOptionsMixin(options)
```

Optional: Extra command options if any.

**Note:** This function appends passed data to existing values

### fn withReadOnly

```ts
withReadOnly(readOnly)
```

Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.

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