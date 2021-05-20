---
permalink: /1.19/core/v1/persistentVolume/
---

# package persistentVolume

PersistentVolume (PV) is a storage resource provisioned by an administrator. It is analogous to a node. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes

## Index

* [`fn new(name)`](#fn-new)
* [`obj metadata`](#obj-metadata)
  * [`fn withAnnotations(annotations)`](#fn-metadatawithannotations)
  * [`fn withAnnotationsMixin(annotations)`](#fn-metadatawithannotationsmixin)
  * [`fn withClusterName(clusterName)`](#fn-metadatawithclustername)
  * [`fn withCreationTimestamp(creationTimestamp)`](#fn-metadatawithcreationtimestamp)
  * [`fn withDeletionGracePeriodSeconds(deletionGracePeriodSeconds)`](#fn-metadatawithdeletiongraceperiodseconds)
  * [`fn withDeletionTimestamp(deletionTimestamp)`](#fn-metadatawithdeletiontimestamp)
  * [`fn withFinalizers(finalizers)`](#fn-metadatawithfinalizers)
  * [`fn withFinalizersMixin(finalizers)`](#fn-metadatawithfinalizersmixin)
  * [`fn withGenerateName(generateName)`](#fn-metadatawithgeneratename)
  * [`fn withGeneration(generation)`](#fn-metadatawithgeneration)
  * [`fn withLabels(labels)`](#fn-metadatawithlabels)
  * [`fn withLabelsMixin(labels)`](#fn-metadatawithlabelsmixin)
  * [`fn withManagedFields(managedFields)`](#fn-metadatawithmanagedfields)
  * [`fn withManagedFieldsMixin(managedFields)`](#fn-metadatawithmanagedfieldsmixin)
  * [`fn withName(name)`](#fn-metadatawithname)
  * [`fn withNamespace(namespace)`](#fn-metadatawithnamespace)
  * [`fn withOwnerReferences(ownerReferences)`](#fn-metadatawithownerreferences)
  * [`fn withOwnerReferencesMixin(ownerReferences)`](#fn-metadatawithownerreferencesmixin)
  * [`fn withResourceVersion(resourceVersion)`](#fn-metadatawithresourceversion)
  * [`fn withSelfLink(selfLink)`](#fn-metadatawithselflink)
  * [`fn withUid(uid)`](#fn-metadatawithuid)
* [`obj spec`](#obj-spec)
  * [`fn withAccessModes(accessModes)`](#fn-specwithaccessmodes)
  * [`fn withAccessModesMixin(accessModes)`](#fn-specwithaccessmodesmixin)
  * [`fn withCapacity(capacity)`](#fn-specwithcapacity)
  * [`fn withCapacityMixin(capacity)`](#fn-specwithcapacitymixin)
  * [`fn withMountOptions(mountOptions)`](#fn-specwithmountoptions)
  * [`fn withMountOptionsMixin(mountOptions)`](#fn-specwithmountoptionsmixin)
  * [`fn withPersistentVolumeReclaimPolicy(persistentVolumeReclaimPolicy)`](#fn-specwithpersistentvolumereclaimpolicy)
  * [`fn withStorageClassName(storageClassName)`](#fn-specwithstorageclassname)
  * [`fn withVolumeMode(volumeMode)`](#fn-specwithvolumemode)
  * [`obj spec.awsElasticBlockStore`](#obj-specawselasticblockstore)
    * [`fn withFsType(fsType)`](#fn-specawselasticblockstorewithfstype)
    * [`fn withPartition(partition)`](#fn-specawselasticblockstorewithpartition)
    * [`fn withReadOnly(readOnly)`](#fn-specawselasticblockstorewithreadonly)
    * [`fn withVolumeID(volumeID)`](#fn-specawselasticblockstorewithvolumeid)
  * [`obj spec.azureDisk`](#obj-specazuredisk)
    * [`fn withCachingMode(cachingMode)`](#fn-specazurediskwithcachingmode)
    * [`fn withDiskName(diskName)`](#fn-specazurediskwithdiskname)
    * [`fn withDiskURI(diskURI)`](#fn-specazurediskwithdiskuri)
    * [`fn withFsType(fsType)`](#fn-specazurediskwithfstype)
    * [`fn withKind(kind)`](#fn-specazurediskwithkind)
    * [`fn withReadOnly(readOnly)`](#fn-specazurediskwithreadonly)
  * [`obj spec.azureFile`](#obj-specazurefile)
    * [`fn withReadOnly(readOnly)`](#fn-specazurefilewithreadonly)
    * [`fn withSecretName(secretName)`](#fn-specazurefilewithsecretname)
    * [`fn withSecretNamespace(secretNamespace)`](#fn-specazurefilewithsecretnamespace)
    * [`fn withShareName(shareName)`](#fn-specazurefilewithsharename)
  * [`obj spec.cephfs`](#obj-speccephfs)
    * [`fn withMonitors(monitors)`](#fn-speccephfswithmonitors)
    * [`fn withMonitorsMixin(monitors)`](#fn-speccephfswithmonitorsmixin)
    * [`fn withPath(path)`](#fn-speccephfswithpath)
    * [`fn withReadOnly(readOnly)`](#fn-speccephfswithreadonly)
    * [`fn withSecretFile(secretFile)`](#fn-speccephfswithsecretfile)
    * [`fn withUser(user)`](#fn-speccephfswithuser)
    * [`obj spec.cephfs.secretRef`](#obj-speccephfssecretref)
      * [`fn withName(name)`](#fn-speccephfssecretrefwithname)
      * [`fn withNamespace(namespace)`](#fn-speccephfssecretrefwithnamespace)
  * [`obj spec.cinder`](#obj-speccinder)
    * [`fn withFsType(fsType)`](#fn-speccinderwithfstype)
    * [`fn withReadOnly(readOnly)`](#fn-speccinderwithreadonly)
    * [`fn withVolumeID(volumeID)`](#fn-speccinderwithvolumeid)
    * [`obj spec.cinder.secretRef`](#obj-speccindersecretref)
      * [`fn withName(name)`](#fn-speccindersecretrefwithname)
      * [`fn withNamespace(namespace)`](#fn-speccindersecretrefwithnamespace)
  * [`obj spec.claimRef`](#obj-specclaimref)
    * [`fn withFieldPath(fieldPath)`](#fn-specclaimrefwithfieldpath)
    * [`fn withKind(kind)`](#fn-specclaimrefwithkind)
    * [`fn withName(name)`](#fn-specclaimrefwithname)
    * [`fn withNamespace(namespace)`](#fn-specclaimrefwithnamespace)
    * [`fn withResourceVersion(resourceVersion)`](#fn-specclaimrefwithresourceversion)
    * [`fn withUid(uid)`](#fn-specclaimrefwithuid)
  * [`obj spec.csi`](#obj-speccsi)
    * [`fn withDriver(driver)`](#fn-speccsiwithdriver)
    * [`fn withFsType(fsType)`](#fn-speccsiwithfstype)
    * [`fn withReadOnly(readOnly)`](#fn-speccsiwithreadonly)
    * [`fn withVolumeAttributes(volumeAttributes)`](#fn-speccsiwithvolumeattributes)
    * [`fn withVolumeAttributesMixin(volumeAttributes)`](#fn-speccsiwithvolumeattributesmixin)
    * [`fn withVolumeHandle(volumeHandle)`](#fn-speccsiwithvolumehandle)
    * [`obj spec.csi.controllerExpandSecretRef`](#obj-speccsicontrollerexpandsecretref)
      * [`fn withName(name)`](#fn-speccsicontrollerexpandsecretrefwithname)
      * [`fn withNamespace(namespace)`](#fn-speccsicontrollerexpandsecretrefwithnamespace)
    * [`obj spec.csi.controllerPublishSecretRef`](#obj-speccsicontrollerpublishsecretref)
      * [`fn withName(name)`](#fn-speccsicontrollerpublishsecretrefwithname)
      * [`fn withNamespace(namespace)`](#fn-speccsicontrollerpublishsecretrefwithnamespace)
    * [`obj spec.csi.nodePublishSecretRef`](#obj-speccsinodepublishsecretref)
      * [`fn withName(name)`](#fn-speccsinodepublishsecretrefwithname)
      * [`fn withNamespace(namespace)`](#fn-speccsinodepublishsecretrefwithnamespace)
    * [`obj spec.csi.nodeStageSecretRef`](#obj-speccsinodestagesecretref)
      * [`fn withName(name)`](#fn-speccsinodestagesecretrefwithname)
      * [`fn withNamespace(namespace)`](#fn-speccsinodestagesecretrefwithnamespace)
  * [`obj spec.fc`](#obj-specfc)
    * [`fn withFsType(fsType)`](#fn-specfcwithfstype)
    * [`fn withLun(lun)`](#fn-specfcwithlun)
    * [`fn withReadOnly(readOnly)`](#fn-specfcwithreadonly)
    * [`fn withTargetWWNs(targetWWNs)`](#fn-specfcwithtargetwwns)
    * [`fn withTargetWWNsMixin(targetWWNs)`](#fn-specfcwithtargetwwnsmixin)
    * [`fn withWwids(wwids)`](#fn-specfcwithwwids)
    * [`fn withWwidsMixin(wwids)`](#fn-specfcwithwwidsmixin)
  * [`obj spec.flexVolume`](#obj-specflexvolume)
    * [`fn withDriver(driver)`](#fn-specflexvolumewithdriver)
    * [`fn withFsType(fsType)`](#fn-specflexvolumewithfstype)
    * [`fn withOptions(options)`](#fn-specflexvolumewithoptions)
    * [`fn withOptionsMixin(options)`](#fn-specflexvolumewithoptionsmixin)
    * [`fn withReadOnly(readOnly)`](#fn-specflexvolumewithreadonly)
    * [`obj spec.flexVolume.secretRef`](#obj-specflexvolumesecretref)
      * [`fn withName(name)`](#fn-specflexvolumesecretrefwithname)
      * [`fn withNamespace(namespace)`](#fn-specflexvolumesecretrefwithnamespace)
  * [`obj spec.flocker`](#obj-specflocker)
    * [`fn withDatasetName(datasetName)`](#fn-specflockerwithdatasetname)
    * [`fn withDatasetUUID(datasetUUID)`](#fn-specflockerwithdatasetuuid)
  * [`obj spec.gcePersistentDisk`](#obj-specgcepersistentdisk)
    * [`fn withFsType(fsType)`](#fn-specgcepersistentdiskwithfstype)
    * [`fn withPartition(partition)`](#fn-specgcepersistentdiskwithpartition)
    * [`fn withPdName(pdName)`](#fn-specgcepersistentdiskwithpdname)
    * [`fn withReadOnly(readOnly)`](#fn-specgcepersistentdiskwithreadonly)
  * [`obj spec.glusterfs`](#obj-specglusterfs)
    * [`fn withEndpoints(endpoints)`](#fn-specglusterfswithendpoints)
    * [`fn withEndpointsNamespace(endpointsNamespace)`](#fn-specglusterfswithendpointsnamespace)
    * [`fn withPath(path)`](#fn-specglusterfswithpath)
    * [`fn withReadOnly(readOnly)`](#fn-specglusterfswithreadonly)
  * [`obj spec.hostPath`](#obj-spechostpath)
    * [`fn withPath(path)`](#fn-spechostpathwithpath)
    * [`fn withType(type)`](#fn-spechostpathwithtype)
  * [`obj spec.iscsi`](#obj-speciscsi)
    * [`fn withChapAuthDiscovery(chapAuthDiscovery)`](#fn-speciscsiwithchapauthdiscovery)
    * [`fn withChapAuthSession(chapAuthSession)`](#fn-speciscsiwithchapauthsession)
    * [`fn withFsType(fsType)`](#fn-speciscsiwithfstype)
    * [`fn withInitiatorName(initiatorName)`](#fn-speciscsiwithinitiatorname)
    * [`fn withIqn(iqn)`](#fn-speciscsiwithiqn)
    * [`fn withIscsiInterface(iscsiInterface)`](#fn-speciscsiwithiscsiinterface)
    * [`fn withLun(lun)`](#fn-speciscsiwithlun)
    * [`fn withPortals(portals)`](#fn-speciscsiwithportals)
    * [`fn withPortalsMixin(portals)`](#fn-speciscsiwithportalsmixin)
    * [`fn withReadOnly(readOnly)`](#fn-speciscsiwithreadonly)
    * [`fn withTargetPortal(targetPortal)`](#fn-speciscsiwithtargetportal)
    * [`obj spec.iscsi.secretRef`](#obj-speciscsisecretref)
      * [`fn withName(name)`](#fn-speciscsisecretrefwithname)
      * [`fn withNamespace(namespace)`](#fn-speciscsisecretrefwithnamespace)
  * [`obj spec.local`](#obj-speclocal)
    * [`fn withFsType(fsType)`](#fn-speclocalwithfstype)
    * [`fn withPath(path)`](#fn-speclocalwithpath)
  * [`obj spec.nfs`](#obj-specnfs)
    * [`fn withPath(path)`](#fn-specnfswithpath)
    * [`fn withReadOnly(readOnly)`](#fn-specnfswithreadonly)
    * [`fn withServer(server)`](#fn-specnfswithserver)
  * [`obj spec.nodeAffinity`](#obj-specnodeaffinity)
    * [`obj spec.nodeAffinity.required`](#obj-specnodeaffinityrequired)
      * [`fn withNodeSelectorTerms(nodeSelectorTerms)`](#fn-specnodeaffinityrequiredwithnodeselectorterms)
      * [`fn withNodeSelectorTermsMixin(nodeSelectorTerms)`](#fn-specnodeaffinityrequiredwithnodeselectortermsmixin)
  * [`obj spec.photonPersistentDisk`](#obj-specphotonpersistentdisk)
    * [`fn withFsType(fsType)`](#fn-specphotonpersistentdiskwithfstype)
    * [`fn withPdID(pdID)`](#fn-specphotonpersistentdiskwithpdid)
  * [`obj spec.portworxVolume`](#obj-specportworxvolume)
    * [`fn withFsType(fsType)`](#fn-specportworxvolumewithfstype)
    * [`fn withReadOnly(readOnly)`](#fn-specportworxvolumewithreadonly)
    * [`fn withVolumeID(volumeID)`](#fn-specportworxvolumewithvolumeid)
  * [`obj spec.quobyte`](#obj-specquobyte)
    * [`fn withGroup(group)`](#fn-specquobytewithgroup)
    * [`fn withReadOnly(readOnly)`](#fn-specquobytewithreadonly)
    * [`fn withRegistry(registry)`](#fn-specquobytewithregistry)
    * [`fn withTenant(tenant)`](#fn-specquobytewithtenant)
    * [`fn withUser(user)`](#fn-specquobytewithuser)
    * [`fn withVolume(volume)`](#fn-specquobytewithvolume)
  * [`obj spec.rbd`](#obj-specrbd)
    * [`fn withFsType(fsType)`](#fn-specrbdwithfstype)
    * [`fn withImage(image)`](#fn-specrbdwithimage)
    * [`fn withKeyring(keyring)`](#fn-specrbdwithkeyring)
    * [`fn withMonitors(monitors)`](#fn-specrbdwithmonitors)
    * [`fn withMonitorsMixin(monitors)`](#fn-specrbdwithmonitorsmixin)
    * [`fn withPool(pool)`](#fn-specrbdwithpool)
    * [`fn withReadOnly(readOnly)`](#fn-specrbdwithreadonly)
    * [`fn withUser(user)`](#fn-specrbdwithuser)
    * [`obj spec.rbd.secretRef`](#obj-specrbdsecretref)
      * [`fn withName(name)`](#fn-specrbdsecretrefwithname)
      * [`fn withNamespace(namespace)`](#fn-specrbdsecretrefwithnamespace)
  * [`obj spec.scaleIO`](#obj-specscaleio)
    * [`fn withFsType(fsType)`](#fn-specscaleiowithfstype)
    * [`fn withGateway(gateway)`](#fn-specscaleiowithgateway)
    * [`fn withProtectionDomain(protectionDomain)`](#fn-specscaleiowithprotectiondomain)
    * [`fn withReadOnly(readOnly)`](#fn-specscaleiowithreadonly)
    * [`fn withSslEnabled(sslEnabled)`](#fn-specscaleiowithsslenabled)
    * [`fn withStorageMode(storageMode)`](#fn-specscaleiowithstoragemode)
    * [`fn withStoragePool(storagePool)`](#fn-specscaleiowithstoragepool)
    * [`fn withSystem(system)`](#fn-specscaleiowithsystem)
    * [`fn withVolumeName(volumeName)`](#fn-specscaleiowithvolumename)
    * [`obj spec.scaleIO.secretRef`](#obj-specscaleiosecretref)
      * [`fn withName(name)`](#fn-specscaleiosecretrefwithname)
      * [`fn withNamespace(namespace)`](#fn-specscaleiosecretrefwithnamespace)
  * [`obj spec.storageos`](#obj-specstorageos)
    * [`fn withFsType(fsType)`](#fn-specstorageoswithfstype)
    * [`fn withReadOnly(readOnly)`](#fn-specstorageoswithreadonly)
    * [`fn withVolumeName(volumeName)`](#fn-specstorageoswithvolumename)
    * [`fn withVolumeNamespace(volumeNamespace)`](#fn-specstorageoswithvolumenamespace)
    * [`obj spec.storageos.secretRef`](#obj-specstorageossecretref)
      * [`fn withFieldPath(fieldPath)`](#fn-specstorageossecretrefwithfieldpath)
      * [`fn withKind(kind)`](#fn-specstorageossecretrefwithkind)
      * [`fn withName(name)`](#fn-specstorageossecretrefwithname)
      * [`fn withNamespace(namespace)`](#fn-specstorageossecretrefwithnamespace)
      * [`fn withResourceVersion(resourceVersion)`](#fn-specstorageossecretrefwithresourceversion)
      * [`fn withUid(uid)`](#fn-specstorageossecretrefwithuid)
  * [`obj spec.vsphereVolume`](#obj-specvspherevolume)
    * [`fn withFsType(fsType)`](#fn-specvspherevolumewithfstype)
    * [`fn withStoragePolicyID(storagePolicyID)`](#fn-specvspherevolumewithstoragepolicyid)
    * [`fn withStoragePolicyName(storagePolicyName)`](#fn-specvspherevolumewithstoragepolicyname)
    * [`fn withVolumePath(volumePath)`](#fn-specvspherevolumewithvolumepath)

## Fields

### fn new

```ts
new(name)
```

new returns an instance of Persistentvolume

## obj metadata

ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.

### fn metadata.withAnnotations

```ts
withAnnotations(annotations)
```

Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: http://kubernetes.io/docs/user-guide/annotations

### fn metadata.withAnnotationsMixin

```ts
withAnnotationsMixin(annotations)
```

Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: http://kubernetes.io/docs/user-guide/annotations

**Note:** This function appends passed data to existing values

### fn metadata.withClusterName

```ts
withClusterName(clusterName)
```

The name of the cluster which the object belongs to. This is used to distinguish resources with same name and namespace in different clusters. This field is not set anywhere right now and apiserver is going to ignore it if set in create or update request.

### fn metadata.withCreationTimestamp

```ts
withCreationTimestamp(creationTimestamp)
```

Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.

### fn metadata.withDeletionGracePeriodSeconds

```ts
withDeletionGracePeriodSeconds(deletionGracePeriodSeconds)
```

Number of seconds allowed for this object to gracefully terminate before it will be removed from the system. Only set when deletionTimestamp is also set. May only be shortened. Read-only.

### fn metadata.withDeletionTimestamp

```ts
withDeletionTimestamp(deletionTimestamp)
```

Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.

### fn metadata.withFinalizers

```ts
withFinalizers(finalizers)
```

Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed. Finalizers may be processed and removed in any order.  Order is NOT enforced because it introduces significant risk of stuck finalizers. finalizers is a shared field, any actor with permission can reorder it. If the finalizer list is processed in order, then this can lead to a situation in which the component responsible for the first finalizer in the list is waiting for a signal (field value, external system, or other) produced by a component responsible for a finalizer later in the list, resulting in a deadlock. Without enforced ordering finalizers are free to order amongst themselves and are not vulnerable to ordering changes in the list.

### fn metadata.withFinalizersMixin

```ts
withFinalizersMixin(finalizers)
```

Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed. Finalizers may be processed and removed in any order.  Order is NOT enforced because it introduces significant risk of stuck finalizers. finalizers is a shared field, any actor with permission can reorder it. If the finalizer list is processed in order, then this can lead to a situation in which the component responsible for the first finalizer in the list is waiting for a signal (field value, external system, or other) produced by a component responsible for a finalizer later in the list, resulting in a deadlock. Without enforced ordering finalizers are free to order amongst themselves and are not vulnerable to ordering changes in the list.

**Note:** This function appends passed data to existing values

### fn metadata.withGenerateName

```ts
withGenerateName(generateName)
```

GenerateName is an optional prefix, used by the server, to generate a unique name ONLY IF the Name field has not been provided. If this field is used, the name returned to the client will be different than the name passed. This value will also be combined with a unique suffix. The provided value has the same validation rules as the Name field, and may be truncated by the length of the suffix required to make the value unique on the server.

If this field is specified and the generated name exists, the server will NOT return a 409 - instead, it will either return 201 Created or 500 with Reason ServerTimeout indicating a unique name could not be found in the time allotted, and the client should retry (optionally after the time indicated in the Retry-After header).

Applied only if Name is not specified. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#idempotency

### fn metadata.withGeneration

```ts
withGeneration(generation)
```

A sequence number representing a specific generation of the desired state. Populated by the system. Read-only.

### fn metadata.withLabels

```ts
withLabels(labels)
```

Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: http://kubernetes.io/docs/user-guide/labels

### fn metadata.withLabelsMixin

```ts
withLabelsMixin(labels)
```

Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: http://kubernetes.io/docs/user-guide/labels

**Note:** This function appends passed data to existing values

### fn metadata.withManagedFields

```ts
withManagedFields(managedFields)
```

ManagedFields maps workflow-id and version to the set of fields that are managed by that workflow. This is mostly for internal housekeeping, and users typically shouldn't need to set or understand this field. A workflow can be the user's name, a controller's name, or the name of a specific apply path like 'ci-cd'. The set of fields is always in the version that the workflow used when modifying the object.

### fn metadata.withManagedFieldsMixin

```ts
withManagedFieldsMixin(managedFields)
```

ManagedFields maps workflow-id and version to the set of fields that are managed by that workflow. This is mostly for internal housekeeping, and users typically shouldn't need to set or understand this field. A workflow can be the user's name, a controller's name, or the name of a specific apply path like 'ci-cd'. The set of fields is always in the version that the workflow used when modifying the object.

**Note:** This function appends passed data to existing values

### fn metadata.withName

```ts
withName(name)
```

Name must be unique within a namespace. Is required when creating resources, although some resources may allow a client to request the generation of an appropriate name automatically. Name is primarily intended for creation idempotence and configuration definition. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/identifiers#names

### fn metadata.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which each name must be unique. An empty namespace is equivalent to the "default" namespace, but "default" is the canonical representation. Not all objects are required to be scoped to a namespace - the value of this field for those objects will be empty.

Must be a DNS_LABEL. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/namespaces

### fn metadata.withOwnerReferences

```ts
withOwnerReferences(ownerReferences)
```

List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller.

### fn metadata.withOwnerReferencesMixin

```ts
withOwnerReferencesMixin(ownerReferences)
```

List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller.

**Note:** This function appends passed data to existing values

### fn metadata.withResourceVersion

```ts
withResourceVersion(resourceVersion)
```

An opaque value that represents the internal version of this object that can be used by clients to determine when objects have changed. May be used for optimistic concurrency, change detection, and the watch operation on a resource or set of resources. Clients must treat these values as opaque and passed unmodified back to the server. They may only be valid for a particular resource or set of resources.

Populated by the system. Read-only. Value must be treated as opaque by clients and . More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency

### fn metadata.withSelfLink

```ts
withSelfLink(selfLink)
```

SelfLink is a URL representing this object. Populated by the system. Read-only.

DEPRECATED Kubernetes will stop propagating this field in 1.20 release and the field is planned to be removed in 1.21 release.

### fn metadata.withUid

```ts
withUid(uid)
```

UID is the unique in time and space value for this object. It is typically generated by the server on successful creation of a resource and is not allowed to change on PUT operations.

Populated by the system. Read-only. More info: http://kubernetes.io/docs/user-guide/identifiers#uids

## obj spec

PersistentVolumeSpec is the specification of a persistent volume.

### fn spec.withAccessModes

```ts
withAccessModes(accessModes)
```

AccessModes contains all ways the volume can be mounted. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes

### fn spec.withAccessModesMixin

```ts
withAccessModesMixin(accessModes)
```

AccessModes contains all ways the volume can be mounted. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes

**Note:** This function appends passed data to existing values

### fn spec.withCapacity

```ts
withCapacity(capacity)
```

A description of the persistent volume's resources and capacity. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity

### fn spec.withCapacityMixin

```ts
withCapacityMixin(capacity)
```

A description of the persistent volume's resources and capacity. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity

**Note:** This function appends passed data to existing values

### fn spec.withMountOptions

```ts
withMountOptions(mountOptions)
```

A list of mount options, e.g. ["ro", "soft"]. Not validated - mount will simply fail if one is invalid. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options

### fn spec.withMountOptionsMixin

```ts
withMountOptionsMixin(mountOptions)
```

A list of mount options, e.g. ["ro", "soft"]. Not validated - mount will simply fail if one is invalid. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options

**Note:** This function appends passed data to existing values

### fn spec.withPersistentVolumeReclaimPolicy

```ts
withPersistentVolumeReclaimPolicy(persistentVolumeReclaimPolicy)
```

What happens to a persistent volume when released from its claim. Valid options are Retain (default for manually created PersistentVolumes), Delete (default for dynamically provisioned PersistentVolumes), and Recycle (deprecated). Recycle must be supported by the volume plugin underlying this PersistentVolume. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming

### fn spec.withStorageClassName

```ts
withStorageClassName(storageClassName)
```

Name of StorageClass to which this persistent volume belongs. Empty value means that this volume does not belong to any StorageClass.

### fn spec.withVolumeMode

```ts
withVolumeMode(volumeMode)
```

volumeMode defines if a volume is intended to be used with a formatted filesystem or to remain in raw block state. Value of Filesystem is implied when not included in spec.

## obj spec.awsElasticBlockStore

Represents a Persistent Disk resource in AWS.

An AWS EBS disk must exist before mounting to a container. The disk must also be in the same AWS zone as the kubelet. An AWS EBS disk can only be mounted as read/write once. AWS EBS volumes support ownership management and SELinux relabeling.

### fn spec.awsElasticBlockStore.withFsType

```ts
withFsType(fsType)
```

Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore

### fn spec.awsElasticBlockStore.withPartition

```ts
withPartition(partition)
```

The partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as "1". Similarly, the volume partition for /dev/sda is "0" (or you can leave the property empty).

### fn spec.awsElasticBlockStore.withReadOnly

```ts
withReadOnly(readOnly)
```

Specify "true" to force and set the ReadOnly property in VolumeMounts to "true". If omitted, the default is "false". More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore

### fn spec.awsElasticBlockStore.withVolumeID

```ts
withVolumeID(volumeID)
```

Unique ID of the persistent disk resource in AWS (Amazon EBS volume). More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore

## obj spec.azureDisk

AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.

### fn spec.azureDisk.withCachingMode

```ts
withCachingMode(cachingMode)
```

Host Caching mode: None, Read Only, Read Write.

### fn spec.azureDisk.withDiskName

```ts
withDiskName(diskName)
```

The Name of the data disk in the blob storage

### fn spec.azureDisk.withDiskURI

```ts
withDiskURI(diskURI)
```

The URI the data disk in the blob storage

### fn spec.azureDisk.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.

### fn spec.azureDisk.withKind

```ts
withKind(kind)
```

Expected values Shared: multiple blob disks per storage account  Dedicated: single blob disk per storage account  Managed: azure managed data disk (only in managed availability set). defaults to shared

### fn spec.azureDisk.withReadOnly

```ts
withReadOnly(readOnly)
```

Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.

## obj spec.azureFile

AzureFile represents an Azure File Service mount on the host and bind mount to the pod.

### fn spec.azureFile.withReadOnly

```ts
withReadOnly(readOnly)
```

Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.

### fn spec.azureFile.withSecretName

```ts
withSecretName(secretName)
```

the name of secret that contains Azure Storage Account Name and Key

### fn spec.azureFile.withSecretNamespace

```ts
withSecretNamespace(secretNamespace)
```

the namespace of the secret that contains Azure Storage Account Name and Key default is the same as the Pod

### fn spec.azureFile.withShareName

```ts
withShareName(shareName)
```

Share Name

## obj spec.cephfs



### fn spec.cephfs.withMonitors

```ts
withMonitors(monitors)
```

Required: Monitors is a collection of Ceph monitors More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it

### fn spec.cephfs.withMonitorsMixin

```ts
withMonitorsMixin(monitors)
```

Required: Monitors is a collection of Ceph monitors More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it

**Note:** This function appends passed data to existing values

### fn spec.cephfs.withPath

```ts
withPath(path)
```

Optional: Used as the mounted root, rather than the full Ceph tree, default is /

### fn spec.cephfs.withReadOnly

```ts
withReadOnly(readOnly)
```

Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it

### fn spec.cephfs.withSecretFile

```ts
withSecretFile(secretFile)
```

Optional: SecretFile is the path to key ring for User, default is /etc/ceph/user.secret More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it

### fn spec.cephfs.withUser

```ts
withUser(user)
```

Optional: User is the rados user name, default is admin More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it

## obj spec.cephfs.secretRef

SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace

### fn spec.cephfs.secretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn spec.cephfs.secretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj spec.cinder

Represents a cinder volume resource in Openstack. A Cinder volume must exist before mounting to a container. The volume must also be in the same region as the kubelet. Cinder volumes support ownership management and SELinux relabeling.

### fn spec.cinder.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://examples.k8s.io/mysql-cinder-pd/README.md

### fn spec.cinder.withReadOnly

```ts
withReadOnly(readOnly)
```

Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/mysql-cinder-pd/README.md

### fn spec.cinder.withVolumeID

```ts
withVolumeID(volumeID)
```

volume id used to identify the volume in cinder. More info: https://examples.k8s.io/mysql-cinder-pd/README.md

## obj spec.cinder.secretRef



### fn spec.cinder.secretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn spec.cinder.secretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj spec.claimRef

ObjectReference contains enough information to let you inspect or modify the referred object.

### fn spec.claimRef.withFieldPath

```ts
withFieldPath(fieldPath)
```

If referring to a piece of an object instead of an entire object, this string should contain a valid JSON/Go field access statement, such as desiredState.manifest.containers[2]. For example, if the object reference is to a container within a pod, this would take on a value like: "spec.containers{name}" (where "name" refers to the name of the container that triggered the event) or if no container name is specified "spec.containers[2]" (container with index 2 in this pod). This syntax is chosen only to have some well-defined way of referencing a part of an object.

### fn spec.claimRef.withKind

```ts
withKind(kind)
```

Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds

### fn spec.claimRef.withName

```ts
withName(name)
```

Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names

### fn spec.claimRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/

### fn spec.claimRef.withResourceVersion

```ts
withResourceVersion(resourceVersion)
```

Specific resourceVersion to which this reference is made, if any. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency

### fn spec.claimRef.withUid

```ts
withUid(uid)
```

UID of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids

## obj spec.csi

Represents storage that is managed by an external CSI volume driver (Beta feature)

### fn spec.csi.withDriver

```ts
withDriver(driver)
```

Driver is the name of the driver to use for this volume. Required.

### fn spec.csi.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs".

### fn spec.csi.withReadOnly

```ts
withReadOnly(readOnly)
```

Optional: The value to pass to ControllerPublishVolumeRequest. Defaults to false (read/write).

### fn spec.csi.withVolumeAttributes

```ts
withVolumeAttributes(volumeAttributes)
```

Attributes of the volume to publish.

### fn spec.csi.withVolumeAttributesMixin

```ts
withVolumeAttributesMixin(volumeAttributes)
```

Attributes of the volume to publish.

**Note:** This function appends passed data to existing values

### fn spec.csi.withVolumeHandle

```ts
withVolumeHandle(volumeHandle)
```

VolumeHandle is the unique volume name returned by the CSI volume plugin’s CreateVolume to refer to the volume on all subsequent calls. Required.

## obj spec.csi.controllerExpandSecretRef



### fn spec.csi.controllerExpandSecretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn spec.csi.controllerExpandSecretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj spec.csi.controllerPublishSecretRef

SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace

### fn spec.csi.controllerPublishSecretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn spec.csi.controllerPublishSecretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj spec.csi.nodePublishSecretRef



### fn spec.csi.nodePublishSecretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn spec.csi.nodePublishSecretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj spec.csi.nodeStageSecretRef

SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace

### fn spec.csi.nodeStageSecretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn spec.csi.nodeStageSecretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj spec.fc

Represents a Fibre Channel volume. Fibre Channel volumes can only be mounted as read/write once. Fibre Channel volumes support ownership management and SELinux relabeling.

### fn spec.fc.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.

### fn spec.fc.withLun

```ts
withLun(lun)
```

Optional: FC target lun number

### fn spec.fc.withReadOnly

```ts
withReadOnly(readOnly)
```

Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.

### fn spec.fc.withTargetWWNs

```ts
withTargetWWNs(targetWWNs)
```

Optional: FC target worldwide names (WWNs)

### fn spec.fc.withTargetWWNsMixin

```ts
withTargetWWNsMixin(targetWWNs)
```

Optional: FC target worldwide names (WWNs)

**Note:** This function appends passed data to existing values

### fn spec.fc.withWwids

```ts
withWwids(wwids)
```

Optional: FC volume world wide identifiers (wwids) Either wwids or combination of targetWWNs and lun must be set, but not both simultaneously.

### fn spec.fc.withWwidsMixin

```ts
withWwidsMixin(wwids)
```

Optional: FC volume world wide identifiers (wwids) Either wwids or combination of targetWWNs and lun must be set, but not both simultaneously.

**Note:** This function appends passed data to existing values

## obj spec.flexVolume



### fn spec.flexVolume.withDriver

```ts
withDriver(driver)
```

Driver is the name of the driver to use for this volume.

### fn spec.flexVolume.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". The default filesystem depends on FlexVolume script.

### fn spec.flexVolume.withOptions

```ts
withOptions(options)
```

Optional: Extra command options if any.

### fn spec.flexVolume.withOptionsMixin

```ts
withOptionsMixin(options)
```

Optional: Extra command options if any.

**Note:** This function appends passed data to existing values

### fn spec.flexVolume.withReadOnly

```ts
withReadOnly(readOnly)
```

Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.

## obj spec.flexVolume.secretRef

SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace

### fn spec.flexVolume.secretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn spec.flexVolume.secretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj spec.flocker



### fn spec.flocker.withDatasetName

```ts
withDatasetName(datasetName)
```

Name of the dataset stored as metadata -> name on the dataset for Flocker should be considered as deprecated

### fn spec.flocker.withDatasetUUID

```ts
withDatasetUUID(datasetUUID)
```

UUID of the dataset. This is unique identifier of a Flocker dataset

## obj spec.gcePersistentDisk



### fn spec.gcePersistentDisk.withFsType

```ts
withFsType(fsType)
```

Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk

### fn spec.gcePersistentDisk.withPartition

```ts
withPartition(partition)
```

The partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as "1". Similarly, the volume partition for /dev/sda is "0" (or you can leave the property empty). More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk

### fn spec.gcePersistentDisk.withPdName

```ts
withPdName(pdName)
```

Unique name of the PD resource in GCE. Used to identify the disk in GCE. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk

### fn spec.gcePersistentDisk.withReadOnly

```ts
withReadOnly(readOnly)
```

ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk

## obj spec.glusterfs



### fn spec.glusterfs.withEndpoints

```ts
withEndpoints(endpoints)
```

EndpointsName is the endpoint name that details Glusterfs topology. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod

### fn spec.glusterfs.withEndpointsNamespace

```ts
withEndpointsNamespace(endpointsNamespace)
```

EndpointsNamespace is the namespace that contains Glusterfs endpoint. If this field is empty, the EndpointNamespace defaults to the same namespace as the bound PVC. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod

### fn spec.glusterfs.withPath

```ts
withPath(path)
```

Path is the Glusterfs volume path. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod

### fn spec.glusterfs.withReadOnly

```ts
withReadOnly(readOnly)
```

ReadOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod

## obj spec.hostPath

Represents a host path mapped into a pod. Host path volumes do not support ownership management or SELinux relabeling.

### fn spec.hostPath.withPath

```ts
withPath(path)
```

Path of the directory on the host. If the path is a symlink, it will follow the link to the real path. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath

### fn spec.hostPath.withType

```ts
withType(type)
```

Type for HostPath Volume Defaults to "" More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath

## obj spec.iscsi

ISCSIPersistentVolumeSource represents an ISCSI disk. ISCSI volumes can only be mounted as read/write once. ISCSI volumes support ownership management and SELinux relabeling.

### fn spec.iscsi.withChapAuthDiscovery

```ts
withChapAuthDiscovery(chapAuthDiscovery)
```

whether support iSCSI Discovery CHAP authentication

### fn spec.iscsi.withChapAuthSession

```ts
withChapAuthSession(chapAuthSession)
```

whether support iSCSI Session CHAP authentication

### fn spec.iscsi.withFsType

```ts
withFsType(fsType)
```

Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#iscsi

### fn spec.iscsi.withInitiatorName

```ts
withInitiatorName(initiatorName)
```

Custom iSCSI Initiator Name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be created for the connection.

### fn spec.iscsi.withIqn

```ts
withIqn(iqn)
```

Target iSCSI Qualified Name.

### fn spec.iscsi.withIscsiInterface

```ts
withIscsiInterface(iscsiInterface)
```

iSCSI Interface Name that uses an iSCSI transport. Defaults to 'default' (tcp).

### fn spec.iscsi.withLun

```ts
withLun(lun)
```

iSCSI Target Lun number.

### fn spec.iscsi.withPortals

```ts
withPortals(portals)
```

iSCSI Target Portal List. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).

### fn spec.iscsi.withPortalsMixin

```ts
withPortalsMixin(portals)
```

iSCSI Target Portal List. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).

**Note:** This function appends passed data to existing values

### fn spec.iscsi.withReadOnly

```ts
withReadOnly(readOnly)
```

ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false.

### fn spec.iscsi.withTargetPortal

```ts
withTargetPortal(targetPortal)
```

iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).

## obj spec.iscsi.secretRef

SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace

### fn spec.iscsi.secretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn spec.iscsi.secretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj spec.local



### fn spec.local.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. It applies only when the Path is a block device. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". The default value is to auto-select a fileystem if unspecified.

### fn spec.local.withPath

```ts
withPath(path)
```

The full path to the volume on the node. It can be either a directory or block device (disk, partition, ...).

## obj spec.nfs

Represents an NFS mount that lasts the lifetime of a pod. NFS volumes do not support ownership management or SELinux relabeling.

### fn spec.nfs.withPath

```ts
withPath(path)
```

Path that is exported by the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs

### fn spec.nfs.withReadOnly

```ts
withReadOnly(readOnly)
```

ReadOnly here will force the NFS export to be mounted with read-only permissions. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs

### fn spec.nfs.withServer

```ts
withServer(server)
```

Server is the hostname or IP address of the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs

## obj spec.nodeAffinity

VolumeNodeAffinity defines constraints that limit what nodes this volume can be accessed from.

## obj spec.nodeAffinity.required



### fn spec.nodeAffinity.required.withNodeSelectorTerms

```ts
withNodeSelectorTerms(nodeSelectorTerms)
```

Required. A list of node selector terms. The terms are ORed.

### fn spec.nodeAffinity.required.withNodeSelectorTermsMixin

```ts
withNodeSelectorTermsMixin(nodeSelectorTerms)
```

Required. A list of node selector terms. The terms are ORed.

**Note:** This function appends passed data to existing values

## obj spec.photonPersistentDisk



### fn spec.photonPersistentDisk.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.

### fn spec.photonPersistentDisk.withPdID

```ts
withPdID(pdID)
```

ID that identifies Photon Controller persistent disk

## obj spec.portworxVolume



### fn spec.portworxVolume.withFsType

```ts
withFsType(fsType)
```

FSType represents the filesystem type to mount Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs". Implicitly inferred to be "ext4" if unspecified.

### fn spec.portworxVolume.withReadOnly

```ts
withReadOnly(readOnly)
```

Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.

### fn spec.portworxVolume.withVolumeID

```ts
withVolumeID(volumeID)
```

VolumeID uniquely identifies a Portworx volume

## obj spec.quobyte



### fn spec.quobyte.withGroup

```ts
withGroup(group)
```

Group to map volume access to Default is no group

### fn spec.quobyte.withReadOnly

```ts
withReadOnly(readOnly)
```

ReadOnly here will force the Quobyte volume to be mounted with read-only permissions. Defaults to false.

### fn spec.quobyte.withRegistry

```ts
withRegistry(registry)
```

Registry represents a single or multiple Quobyte Registry services specified as a string as host:port pair (multiple entries are separated with commas) which acts as the central registry for volumes

### fn spec.quobyte.withTenant

```ts
withTenant(tenant)
```

Tenant owning the given Quobyte volume in the Backend Used with dynamically provisioned Quobyte volumes, value is set by the plugin

### fn spec.quobyte.withUser

```ts
withUser(user)
```

User to map volume access to Defaults to serivceaccount user

### fn spec.quobyte.withVolume

```ts
withVolume(volume)
```

Volume is a string that references an already created Quobyte volume by name.

## obj spec.rbd



### fn spec.rbd.withFsType

```ts
withFsType(fsType)
```

Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#rbd

### fn spec.rbd.withImage

```ts
withImage(image)
```

The rados image name. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it

### fn spec.rbd.withKeyring

```ts
withKeyring(keyring)
```

Keyring is the path to key ring for RBDUser. Default is /etc/ceph/keyring. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it

### fn spec.rbd.withMonitors

```ts
withMonitors(monitors)
```

A collection of Ceph monitors. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it

### fn spec.rbd.withMonitorsMixin

```ts
withMonitorsMixin(monitors)
```

A collection of Ceph monitors. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it

**Note:** This function appends passed data to existing values

### fn spec.rbd.withPool

```ts
withPool(pool)
```

The rados pool name. Default is rbd. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it

### fn spec.rbd.withReadOnly

```ts
withReadOnly(readOnly)
```

ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it

### fn spec.rbd.withUser

```ts
withUser(user)
```

The rados user name. Default is admin. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it

## obj spec.rbd.secretRef

SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace

### fn spec.rbd.secretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn spec.rbd.secretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj spec.scaleIO



### fn spec.scaleIO.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Default is "xfs"

### fn spec.scaleIO.withGateway

```ts
withGateway(gateway)
```

The host address of the ScaleIO API Gateway.

### fn spec.scaleIO.withProtectionDomain

```ts
withProtectionDomain(protectionDomain)
```

The name of the ScaleIO Protection Domain for the configured storage.

### fn spec.scaleIO.withReadOnly

```ts
withReadOnly(readOnly)
```

Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.

### fn spec.scaleIO.withSslEnabled

```ts
withSslEnabled(sslEnabled)
```

Flag to enable/disable SSL communication with Gateway, default false

### fn spec.scaleIO.withStorageMode

```ts
withStorageMode(storageMode)
```

Indicates whether the storage for a volume should be ThickProvisioned or ThinProvisioned. Default is ThinProvisioned.

### fn spec.scaleIO.withStoragePool

```ts
withStoragePool(storagePool)
```

The ScaleIO Storage Pool associated with the protection domain.

### fn spec.scaleIO.withSystem

```ts
withSystem(system)
```

The name of the storage system as configured in ScaleIO.

### fn spec.scaleIO.withVolumeName

```ts
withVolumeName(volumeName)
```

The name of a volume already created in the ScaleIO system that is associated with this volume source.

## obj spec.scaleIO.secretRef

SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace

### fn spec.scaleIO.secretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn spec.scaleIO.secretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj spec.storageos

Represents a StorageOS persistent volume resource.

### fn spec.storageos.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.

### fn spec.storageos.withReadOnly

```ts
withReadOnly(readOnly)
```

Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.

### fn spec.storageos.withVolumeName

```ts
withVolumeName(volumeName)
```

VolumeName is the human-readable name of the StorageOS volume.  Volume names are only unique within a namespace.

### fn spec.storageos.withVolumeNamespace

```ts
withVolumeNamespace(volumeNamespace)
```

VolumeNamespace specifies the scope of the volume within StorageOS.  If no namespace is specified then the Pod's namespace will be used.  This allows the Kubernetes name scoping to be mirrored within StorageOS for tighter integration. Set VolumeName to any name to override the default behaviour. Set to 'default' if you are not using namespaces within StorageOS. Namespaces that do not pre-exist within StorageOS will be created.

## obj spec.storageos.secretRef



### fn spec.storageos.secretRef.withFieldPath

```ts
withFieldPath(fieldPath)
```

If referring to a piece of an object instead of an entire object, this string should contain a valid JSON/Go field access statement, such as desiredState.manifest.containers[2]. For example, if the object reference is to a container within a pod, this would take on a value like: "spec.containers{name}" (where "name" refers to the name of the container that triggered the event) or if no container name is specified "spec.containers[2]" (container with index 2 in this pod). This syntax is chosen only to have some well-defined way of referencing a part of an object.

### fn spec.storageos.secretRef.withKind

```ts
withKind(kind)
```

Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds

### fn spec.storageos.secretRef.withName

```ts
withName(name)
```

Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names

### fn spec.storageos.secretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/

### fn spec.storageos.secretRef.withResourceVersion

```ts
withResourceVersion(resourceVersion)
```

Specific resourceVersion to which this reference is made, if any. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency

### fn spec.storageos.secretRef.withUid

```ts
withUid(uid)
```

UID of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids

## obj spec.vsphereVolume



### fn spec.vsphereVolume.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.

### fn spec.vsphereVolume.withStoragePolicyID

```ts
withStoragePolicyID(storagePolicyID)
```

Storage Policy Based Management (SPBM) profile ID associated with the StoragePolicyName.

### fn spec.vsphereVolume.withStoragePolicyName

```ts
withStoragePolicyName(storagePolicyName)
```

Storage Policy Based Management (SPBM) profile name.

### fn spec.vsphereVolume.withVolumePath

```ts
withVolumePath(volumePath)
```

Path that identifies vSphere volume vmdk