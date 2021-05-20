---
permalink: /1.20/apiserverinternal/v1alpha1/serverStorageVersion/
---

# package serverStorageVersion

An API server instance reports the version it can decode and the version it encodes objects to when persisting objects in the backend.

## Index

* [`fn withApiServerID(apiServerID)`](#fn-withapiserverid)
* [`fn withDecodableVersions(decodableVersions)`](#fn-withdecodableversions)
* [`fn withDecodableVersionsMixin(decodableVersions)`](#fn-withdecodableversionsmixin)
* [`fn withEncodingVersion(encodingVersion)`](#fn-withencodingversion)

## Fields

### fn withApiServerID

```ts
withApiServerID(apiServerID)
```

The ID of the reporting API server.

### fn withDecodableVersions

```ts
withDecodableVersions(decodableVersions)
```

The API server can decode objects encoded in these versions. The encodingVersion must be included in the decodableVersions.

### fn withDecodableVersionsMixin

```ts
withDecodableVersionsMixin(decodableVersions)
```

The API server can decode objects encoded in these versions. The encodingVersion must be included in the decodableVersions.

**Note:** This function appends passed data to existing values

### fn withEncodingVersion

```ts
withEncodingVersion(encodingVersion)
```

The API server encodes the object to this version when persisting it in the backend (e.g., etcd).