---
permalink: /1.18/storage/v1/volumeAttachment/
---

# package volumeAttachment

VolumeAttachment captures the intent to attach or detach the specified volume to/from the specified node.

VolumeAttachment objects are non-namespaced.

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
  * [`fn withAttacher(attacher)`](#fn-specwithattacher)
  * [`fn withNodeName(nodeName)`](#fn-specwithnodename)
  * [`obj spec.source`](#obj-specsource)
    * [`fn withPersistentVolumeName(persistentVolumeName)`](#fn-specsourcewithpersistentvolumename)
    * [`obj spec.source.inlineVolumeSpec`](#obj-specsourceinlinevolumespec)
      * [`fn withAccessModes(accessModes)`](#fn-specsourceinlinevolumespecwithaccessmodes)
      * [`fn withAccessModesMixin(accessModes)`](#fn-specsourceinlinevolumespecwithaccessmodesmixin)
      * [`fn withCapacity(capacity)`](#fn-specsourceinlinevolumespecwithcapacity)
      * [`fn withCapacityMixin(capacity)`](#fn-specsourceinlinevolumespecwithcapacitymixin)
      * [`fn withMountOptions(mountOptions)`](#fn-specsourceinlinevolumespecwithmountoptions)
      * [`fn withMountOptionsMixin(mountOptions)`](#fn-specsourceinlinevolumespecwithmountoptionsmixin)
      * [`fn withPersistentVolumeReclaimPolicy(persistentVolumeReclaimPolicy)`](#fn-specsourceinlinevolumespecwithpersistentvolumereclaimpolicy)
      * [`fn withStorageClassName(storageClassName)`](#fn-specsourceinlinevolumespecwithstorageclassname)
      * [`fn withVolumeMode(volumeMode)`](#fn-specsourceinlinevolumespecwithvolumemode)
      * [`obj spec.source.inlineVolumeSpec.awsElasticBlockStore`](#obj-specsourceinlinevolumespecawselasticblockstore)
        * [`fn withFsType(fsType)`](#fn-specsourceinlinevolumespecawselasticblockstorewithfstype)
        * [`fn withPartition(partition)`](#fn-specsourceinlinevolumespecawselasticblockstorewithpartition)
        * [`fn withReadOnly(readOnly)`](#fn-specsourceinlinevolumespecawselasticblockstorewithreadonly)
        * [`fn withVolumeID(volumeID)`](#fn-specsourceinlinevolumespecawselasticblockstorewithvolumeid)
      * [`obj spec.source.inlineVolumeSpec.azureDisk`](#obj-specsourceinlinevolumespecazuredisk)
        * [`fn withCachingMode(cachingMode)`](#fn-specsourceinlinevolumespecazurediskwithcachingmode)
        * [`fn withDiskName(diskName)`](#fn-specsourceinlinevolumespecazurediskwithdiskname)
        * [`fn withDiskURI(diskURI)`](#fn-specsourceinlinevolumespecazurediskwithdiskuri)
        * [`fn withFsType(fsType)`](#fn-specsourceinlinevolumespecazurediskwithfstype)
        * [`fn withKind(kind)`](#fn-specsourceinlinevolumespecazurediskwithkind)
        * [`fn withReadOnly(readOnly)`](#fn-specsourceinlinevolumespecazurediskwithreadonly)
      * [`obj spec.source.inlineVolumeSpec.azureFile`](#obj-specsourceinlinevolumespecazurefile)
        * [`fn withReadOnly(readOnly)`](#fn-specsourceinlinevolumespecazurefilewithreadonly)
        * [`fn withSecretName(secretName)`](#fn-specsourceinlinevolumespecazurefilewithsecretname)
        * [`fn withSecretNamespace(secretNamespace)`](#fn-specsourceinlinevolumespecazurefilewithsecretnamespace)
        * [`fn withShareName(shareName)`](#fn-specsourceinlinevolumespecazurefilewithsharename)
      * [`obj spec.source.inlineVolumeSpec.cephfs`](#obj-specsourceinlinevolumespeccephfs)
        * [`fn withMonitors(monitors)`](#fn-specsourceinlinevolumespeccephfswithmonitors)
        * [`fn withMonitorsMixin(monitors)`](#fn-specsourceinlinevolumespeccephfswithmonitorsmixin)
        * [`fn withPath(path)`](#fn-specsourceinlinevolumespeccephfswithpath)
        * [`fn withReadOnly(readOnly)`](#fn-specsourceinlinevolumespeccephfswithreadonly)
        * [`fn withSecretFile(secretFile)`](#fn-specsourceinlinevolumespeccephfswithsecretfile)
        * [`fn withUser(user)`](#fn-specsourceinlinevolumespeccephfswithuser)
        * [`obj spec.source.inlineVolumeSpec.cephfs.secretRef`](#obj-specsourceinlinevolumespeccephfssecretref)
          * [`fn withName(name)`](#fn-specsourceinlinevolumespeccephfssecretrefwithname)
          * [`fn withNamespace(namespace)`](#fn-specsourceinlinevolumespeccephfssecretrefwithnamespace)
      * [`obj spec.source.inlineVolumeSpec.cinder`](#obj-specsourceinlinevolumespeccinder)
        * [`fn withFsType(fsType)`](#fn-specsourceinlinevolumespeccinderwithfstype)
        * [`fn withReadOnly(readOnly)`](#fn-specsourceinlinevolumespeccinderwithreadonly)
        * [`fn withVolumeID(volumeID)`](#fn-specsourceinlinevolumespeccinderwithvolumeid)
        * [`obj spec.source.inlineVolumeSpec.cinder.secretRef`](#obj-specsourceinlinevolumespeccindersecretref)
          * [`fn withName(name)`](#fn-specsourceinlinevolumespeccindersecretrefwithname)
          * [`fn withNamespace(namespace)`](#fn-specsourceinlinevolumespeccindersecretrefwithnamespace)
      * [`obj spec.source.inlineVolumeSpec.claimRef`](#obj-specsourceinlinevolumespecclaimref)
        * [`fn withFieldPath(fieldPath)`](#fn-specsourceinlinevolumespecclaimrefwithfieldpath)
        * [`fn withKind(kind)`](#fn-specsourceinlinevolumespecclaimrefwithkind)
        * [`fn withName(name)`](#fn-specsourceinlinevolumespecclaimrefwithname)
        * [`fn withNamespace(namespace)`](#fn-specsourceinlinevolumespecclaimrefwithnamespace)
        * [`fn withResourceVersion(resourceVersion)`](#fn-specsourceinlinevolumespecclaimrefwithresourceversion)
        * [`fn withUid(uid)`](#fn-specsourceinlinevolumespecclaimrefwithuid)
      * [`obj spec.source.inlineVolumeSpec.csi`](#obj-specsourceinlinevolumespeccsi)
        * [`fn withDriver(driver)`](#fn-specsourceinlinevolumespeccsiwithdriver)
        * [`fn withFsType(fsType)`](#fn-specsourceinlinevolumespeccsiwithfstype)
        * [`fn withReadOnly(readOnly)`](#fn-specsourceinlinevolumespeccsiwithreadonly)
        * [`fn withVolumeAttributes(volumeAttributes)`](#fn-specsourceinlinevolumespeccsiwithvolumeattributes)
        * [`fn withVolumeAttributesMixin(volumeAttributes)`](#fn-specsourceinlinevolumespeccsiwithvolumeattributesmixin)
        * [`fn withVolumeHandle(volumeHandle)`](#fn-specsourceinlinevolumespeccsiwithvolumehandle)
        * [`obj spec.source.inlineVolumeSpec.csi.controllerExpandSecretRef`](#obj-specsourceinlinevolumespeccsicontrollerexpandsecretref)
          * [`fn withName(name)`](#fn-specsourceinlinevolumespeccsicontrollerexpandsecretrefwithname)
          * [`fn withNamespace(namespace)`](#fn-specsourceinlinevolumespeccsicontrollerexpandsecretrefwithnamespace)
        * [`obj spec.source.inlineVolumeSpec.csi.controllerPublishSecretRef`](#obj-specsourceinlinevolumespeccsicontrollerpublishsecretref)
          * [`fn withName(name)`](#fn-specsourceinlinevolumespeccsicontrollerpublishsecretrefwithname)
          * [`fn withNamespace(namespace)`](#fn-specsourceinlinevolumespeccsicontrollerpublishsecretrefwithnamespace)
        * [`obj spec.source.inlineVolumeSpec.csi.nodePublishSecretRef`](#obj-specsourceinlinevolumespeccsinodepublishsecretref)
          * [`fn withName(name)`](#fn-specsourceinlinevolumespeccsinodepublishsecretrefwithname)
          * [`fn withNamespace(namespace)`](#fn-specsourceinlinevolumespeccsinodepublishsecretrefwithnamespace)
        * [`obj spec.source.inlineVolumeSpec.csi.nodeStageSecretRef`](#obj-specsourceinlinevolumespeccsinodestagesecretref)
          * [`fn withName(name)`](#fn-specsourceinlinevolumespeccsinodestagesecretrefwithname)
          * [`fn withNamespace(namespace)`](#fn-specsourceinlinevolumespeccsinodestagesecretrefwithnamespace)
      * [`obj spec.source.inlineVolumeSpec.fc`](#obj-specsourceinlinevolumespecfc)
        * [`fn withFsType(fsType)`](#fn-specsourceinlinevolumespecfcwithfstype)
        * [`fn withLun(lun)`](#fn-specsourceinlinevolumespecfcwithlun)
        * [`fn withReadOnly(readOnly)`](#fn-specsourceinlinevolumespecfcwithreadonly)
        * [`fn withTargetWWNs(targetWWNs)`](#fn-specsourceinlinevolumespecfcwithtargetwwns)
        * [`fn withTargetWWNsMixin(targetWWNs)`](#fn-specsourceinlinevolumespecfcwithtargetwwnsmixin)
        * [`fn withWwids(wwids)`](#fn-specsourceinlinevolumespecfcwithwwids)
        * [`fn withWwidsMixin(wwids)`](#fn-specsourceinlinevolumespecfcwithwwidsmixin)
      * [`obj spec.source.inlineVolumeSpec.flexVolume`](#obj-specsourceinlinevolumespecflexvolume)
        * [`fn withDriver(driver)`](#fn-specsourceinlinevolumespecflexvolumewithdriver)
        * [`fn withFsType(fsType)`](#fn-specsourceinlinevolumespecflexvolumewithfstype)
        * [`fn withOptions(options)`](#fn-specsourceinlinevolumespecflexvolumewithoptions)
        * [`fn withOptionsMixin(options)`](#fn-specsourceinlinevolumespecflexvolumewithoptionsmixin)
        * [`fn withReadOnly(readOnly)`](#fn-specsourceinlinevolumespecflexvolumewithreadonly)
        * [`obj spec.source.inlineVolumeSpec.flexVolume.secretRef`](#obj-specsourceinlinevolumespecflexvolumesecretref)
          * [`fn withName(name)`](#fn-specsourceinlinevolumespecflexvolumesecretrefwithname)
          * [`fn withNamespace(namespace)`](#fn-specsourceinlinevolumespecflexvolumesecretrefwithnamespace)
      * [`obj spec.source.inlineVolumeSpec.flocker`](#obj-specsourceinlinevolumespecflocker)
        * [`fn withDatasetName(datasetName)`](#fn-specsourceinlinevolumespecflockerwithdatasetname)
        * [`fn withDatasetUUID(datasetUUID)`](#fn-specsourceinlinevolumespecflockerwithdatasetuuid)
      * [`obj spec.source.inlineVolumeSpec.gcePersistentDisk`](#obj-specsourceinlinevolumespecgcepersistentdisk)
        * [`fn withFsType(fsType)`](#fn-specsourceinlinevolumespecgcepersistentdiskwithfstype)
        * [`fn withPartition(partition)`](#fn-specsourceinlinevolumespecgcepersistentdiskwithpartition)
        * [`fn withPdName(pdName)`](#fn-specsourceinlinevolumespecgcepersistentdiskwithpdname)
        * [`fn withReadOnly(readOnly)`](#fn-specsourceinlinevolumespecgcepersistentdiskwithreadonly)
      * [`obj spec.source.inlineVolumeSpec.glusterfs`](#obj-specsourceinlinevolumespecglusterfs)
        * [`fn withEndpoints(endpoints)`](#fn-specsourceinlinevolumespecglusterfswithendpoints)
        * [`fn withEndpointsNamespace(endpointsNamespace)`](#fn-specsourceinlinevolumespecglusterfswithendpointsnamespace)
        * [`fn withPath(path)`](#fn-specsourceinlinevolumespecglusterfswithpath)
        * [`fn withReadOnly(readOnly)`](#fn-specsourceinlinevolumespecglusterfswithreadonly)
      * [`obj spec.source.inlineVolumeSpec.hostPath`](#obj-specsourceinlinevolumespechostpath)
        * [`fn withPath(path)`](#fn-specsourceinlinevolumespechostpathwithpath)
        * [`fn withType(type)`](#fn-specsourceinlinevolumespechostpathwithtype)
      * [`obj spec.source.inlineVolumeSpec.iscsi`](#obj-specsourceinlinevolumespeciscsi)
        * [`fn withChapAuthDiscovery(chapAuthDiscovery)`](#fn-specsourceinlinevolumespeciscsiwithchapauthdiscovery)
        * [`fn withChapAuthSession(chapAuthSession)`](#fn-specsourceinlinevolumespeciscsiwithchapauthsession)
        * [`fn withFsType(fsType)`](#fn-specsourceinlinevolumespeciscsiwithfstype)
        * [`fn withInitiatorName(initiatorName)`](#fn-specsourceinlinevolumespeciscsiwithinitiatorname)
        * [`fn withIqn(iqn)`](#fn-specsourceinlinevolumespeciscsiwithiqn)
        * [`fn withIscsiInterface(iscsiInterface)`](#fn-specsourceinlinevolumespeciscsiwithiscsiinterface)
        * [`fn withLun(lun)`](#fn-specsourceinlinevolumespeciscsiwithlun)
        * [`fn withPortals(portals)`](#fn-specsourceinlinevolumespeciscsiwithportals)
        * [`fn withPortalsMixin(portals)`](#fn-specsourceinlinevolumespeciscsiwithportalsmixin)
        * [`fn withReadOnly(readOnly)`](#fn-specsourceinlinevolumespeciscsiwithreadonly)
        * [`fn withTargetPortal(targetPortal)`](#fn-specsourceinlinevolumespeciscsiwithtargetportal)
        * [`obj spec.source.inlineVolumeSpec.iscsi.secretRef`](#obj-specsourceinlinevolumespeciscsisecretref)
          * [`fn withName(name)`](#fn-specsourceinlinevolumespeciscsisecretrefwithname)
          * [`fn withNamespace(namespace)`](#fn-specsourceinlinevolumespeciscsisecretrefwithnamespace)
      * [`obj spec.source.inlineVolumeSpec.local`](#obj-specsourceinlinevolumespeclocal)
        * [`fn withFsType(fsType)`](#fn-specsourceinlinevolumespeclocalwithfstype)
        * [`fn withPath(path)`](#fn-specsourceinlinevolumespeclocalwithpath)
      * [`obj spec.source.inlineVolumeSpec.nfs`](#obj-specsourceinlinevolumespecnfs)
        * [`fn withPath(path)`](#fn-specsourceinlinevolumespecnfswithpath)
        * [`fn withReadOnly(readOnly)`](#fn-specsourceinlinevolumespecnfswithreadonly)
        * [`fn withServer(server)`](#fn-specsourceinlinevolumespecnfswithserver)
      * [`obj spec.source.inlineVolumeSpec.nodeAffinity`](#obj-specsourceinlinevolumespecnodeaffinity)
        * [`obj spec.source.inlineVolumeSpec.nodeAffinity.required`](#obj-specsourceinlinevolumespecnodeaffinityrequired)
          * [`fn withNodeSelectorTerms(nodeSelectorTerms)`](#fn-specsourceinlinevolumespecnodeaffinityrequiredwithnodeselectorterms)
          * [`fn withNodeSelectorTermsMixin(nodeSelectorTerms)`](#fn-specsourceinlinevolumespecnodeaffinityrequiredwithnodeselectortermsmixin)
      * [`obj spec.source.inlineVolumeSpec.photonPersistentDisk`](#obj-specsourceinlinevolumespecphotonpersistentdisk)
        * [`fn withFsType(fsType)`](#fn-specsourceinlinevolumespecphotonpersistentdiskwithfstype)
        * [`fn withPdID(pdID)`](#fn-specsourceinlinevolumespecphotonpersistentdiskwithpdid)
      * [`obj spec.source.inlineVolumeSpec.portworxVolume`](#obj-specsourceinlinevolumespecportworxvolume)
        * [`fn withFsType(fsType)`](#fn-specsourceinlinevolumespecportworxvolumewithfstype)
        * [`fn withReadOnly(readOnly)`](#fn-specsourceinlinevolumespecportworxvolumewithreadonly)
        * [`fn withVolumeID(volumeID)`](#fn-specsourceinlinevolumespecportworxvolumewithvolumeid)
      * [`obj spec.source.inlineVolumeSpec.quobyte`](#obj-specsourceinlinevolumespecquobyte)
        * [`fn withGroup(group)`](#fn-specsourceinlinevolumespecquobytewithgroup)
        * [`fn withReadOnly(readOnly)`](#fn-specsourceinlinevolumespecquobytewithreadonly)
        * [`fn withRegistry(registry)`](#fn-specsourceinlinevolumespecquobytewithregistry)
        * [`fn withTenant(tenant)`](#fn-specsourceinlinevolumespecquobytewithtenant)
        * [`fn withUser(user)`](#fn-specsourceinlinevolumespecquobytewithuser)
        * [`fn withVolume(volume)`](#fn-specsourceinlinevolumespecquobytewithvolume)
      * [`obj spec.source.inlineVolumeSpec.rbd`](#obj-specsourceinlinevolumespecrbd)
        * [`fn withFsType(fsType)`](#fn-specsourceinlinevolumespecrbdwithfstype)
        * [`fn withImage(image)`](#fn-specsourceinlinevolumespecrbdwithimage)
        * [`fn withKeyring(keyring)`](#fn-specsourceinlinevolumespecrbdwithkeyring)
        * [`fn withMonitors(monitors)`](#fn-specsourceinlinevolumespecrbdwithmonitors)
        * [`fn withMonitorsMixin(monitors)`](#fn-specsourceinlinevolumespecrbdwithmonitorsmixin)
        * [`fn withPool(pool)`](#fn-specsourceinlinevolumespecrbdwithpool)
        * [`fn withReadOnly(readOnly)`](#fn-specsourceinlinevolumespecrbdwithreadonly)
        * [`fn withUser(user)`](#fn-specsourceinlinevolumespecrbdwithuser)
        * [`obj spec.source.inlineVolumeSpec.rbd.secretRef`](#obj-specsourceinlinevolumespecrbdsecretref)
          * [`fn withName(name)`](#fn-specsourceinlinevolumespecrbdsecretrefwithname)
          * [`fn withNamespace(namespace)`](#fn-specsourceinlinevolumespecrbdsecretrefwithnamespace)
      * [`obj spec.source.inlineVolumeSpec.scaleIO`](#obj-specsourceinlinevolumespecscaleio)
        * [`fn withFsType(fsType)`](#fn-specsourceinlinevolumespecscaleiowithfstype)
        * [`fn withGateway(gateway)`](#fn-specsourceinlinevolumespecscaleiowithgateway)
        * [`fn withProtectionDomain(protectionDomain)`](#fn-specsourceinlinevolumespecscaleiowithprotectiondomain)
        * [`fn withReadOnly(readOnly)`](#fn-specsourceinlinevolumespecscaleiowithreadonly)
        * [`fn withSslEnabled(sslEnabled)`](#fn-specsourceinlinevolumespecscaleiowithsslenabled)
        * [`fn withStorageMode(storageMode)`](#fn-specsourceinlinevolumespecscaleiowithstoragemode)
        * [`fn withStoragePool(storagePool)`](#fn-specsourceinlinevolumespecscaleiowithstoragepool)
        * [`fn withSystem(system)`](#fn-specsourceinlinevolumespecscaleiowithsystem)
        * [`fn withVolumeName(volumeName)`](#fn-specsourceinlinevolumespecscaleiowithvolumename)
        * [`obj spec.source.inlineVolumeSpec.scaleIO.secretRef`](#obj-specsourceinlinevolumespecscaleiosecretref)
          * [`fn withName(name)`](#fn-specsourceinlinevolumespecscaleiosecretrefwithname)
          * [`fn withNamespace(namespace)`](#fn-specsourceinlinevolumespecscaleiosecretrefwithnamespace)
      * [`obj spec.source.inlineVolumeSpec.storageos`](#obj-specsourceinlinevolumespecstorageos)
        * [`fn withFsType(fsType)`](#fn-specsourceinlinevolumespecstorageoswithfstype)
        * [`fn withReadOnly(readOnly)`](#fn-specsourceinlinevolumespecstorageoswithreadonly)
        * [`fn withVolumeName(volumeName)`](#fn-specsourceinlinevolumespecstorageoswithvolumename)
        * [`fn withVolumeNamespace(volumeNamespace)`](#fn-specsourceinlinevolumespecstorageoswithvolumenamespace)
        * [`obj spec.source.inlineVolumeSpec.storageos.secretRef`](#obj-specsourceinlinevolumespecstorageossecretref)
          * [`fn withFieldPath(fieldPath)`](#fn-specsourceinlinevolumespecstorageossecretrefwithfieldpath)
          * [`fn withKind(kind)`](#fn-specsourceinlinevolumespecstorageossecretrefwithkind)
          * [`fn withName(name)`](#fn-specsourceinlinevolumespecstorageossecretrefwithname)
          * [`fn withNamespace(namespace)`](#fn-specsourceinlinevolumespecstorageossecretrefwithnamespace)
          * [`fn withResourceVersion(resourceVersion)`](#fn-specsourceinlinevolumespecstorageossecretrefwithresourceversion)
          * [`fn withUid(uid)`](#fn-specsourceinlinevolumespecstorageossecretrefwithuid)
      * [`obj spec.source.inlineVolumeSpec.vsphereVolume`](#obj-specsourceinlinevolumespecvspherevolume)
        * [`fn withFsType(fsType)`](#fn-specsourceinlinevolumespecvspherevolumewithfstype)
        * [`fn withStoragePolicyID(storagePolicyID)`](#fn-specsourceinlinevolumespecvspherevolumewithstoragepolicyid)
        * [`fn withStoragePolicyName(storagePolicyName)`](#fn-specsourceinlinevolumespecvspherevolumewithstoragepolicyname)
        * [`fn withVolumePath(volumePath)`](#fn-specsourceinlinevolumespecvspherevolumewithvolumepath)

## Fields

### fn new

```ts
new(name)
```

new returns an instance of Volumeattachment

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

Namespace defines the space within each name must be unique. An empty namespace is equivalent to the "default" namespace, but "default" is the canonical representation. Not all objects are required to be scoped to a namespace - the value of this field for those objects will be empty.

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

VolumeAttachmentSpec is the specification of a VolumeAttachment request.

### fn spec.withAttacher

```ts
withAttacher(attacher)
```

Attacher indicates the name of the volume driver that MUST handle this request. This is the name returned by GetPluginName().

### fn spec.withNodeName

```ts
withNodeName(nodeName)
```

The node that the volume should be attached to.

## obj spec.source

VolumeAttachmentSource represents a volume that should be attached. Right now only PersistenVolumes can be attached via external attacher, in future we may allow also inline volumes in pods. Exactly one member can be set.

### fn spec.source.withPersistentVolumeName

```ts
withPersistentVolumeName(persistentVolumeName)
```

Name of the persistent volume to attach.

## obj spec.source.inlineVolumeSpec

PersistentVolumeSpec is the specification of a persistent volume.

### fn spec.source.inlineVolumeSpec.withAccessModes

```ts
withAccessModes(accessModes)
```

AccessModes contains all ways the volume can be mounted. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes

### fn spec.source.inlineVolumeSpec.withAccessModesMixin

```ts
withAccessModesMixin(accessModes)
```

AccessModes contains all ways the volume can be mounted. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes

**Note:** This function appends passed data to existing values

### fn spec.source.inlineVolumeSpec.withCapacity

```ts
withCapacity(capacity)
```

A description of the persistent volume's resources and capacity. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity

### fn spec.source.inlineVolumeSpec.withCapacityMixin

```ts
withCapacityMixin(capacity)
```

A description of the persistent volume's resources and capacity. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity

**Note:** This function appends passed data to existing values

### fn spec.source.inlineVolumeSpec.withMountOptions

```ts
withMountOptions(mountOptions)
```

A list of mount options, e.g. ["ro", "soft"]. Not validated - mount will simply fail if one is invalid. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options

### fn spec.source.inlineVolumeSpec.withMountOptionsMixin

```ts
withMountOptionsMixin(mountOptions)
```

A list of mount options, e.g. ["ro", "soft"]. Not validated - mount will simply fail if one is invalid. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options

**Note:** This function appends passed data to existing values

### fn spec.source.inlineVolumeSpec.withPersistentVolumeReclaimPolicy

```ts
withPersistentVolumeReclaimPolicy(persistentVolumeReclaimPolicy)
```

What happens to a persistent volume when released from its claim. Valid options are Retain (default for manually created PersistentVolumes), Delete (default for dynamically provisioned PersistentVolumes), and Recycle (deprecated). Recycle must be supported by the volume plugin underlying this PersistentVolume. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming

### fn spec.source.inlineVolumeSpec.withStorageClassName

```ts
withStorageClassName(storageClassName)
```

Name of StorageClass to which this persistent volume belongs. Empty value means that this volume does not belong to any StorageClass.

### fn spec.source.inlineVolumeSpec.withVolumeMode

```ts
withVolumeMode(volumeMode)
```

volumeMode defines if a volume is intended to be used with a formatted filesystem or to remain in raw block state. Value of Filesystem is implied when not included in spec.

## obj spec.source.inlineVolumeSpec.awsElasticBlockStore



### fn spec.source.inlineVolumeSpec.awsElasticBlockStore.withFsType

```ts
withFsType(fsType)
```

Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore

### fn spec.source.inlineVolumeSpec.awsElasticBlockStore.withPartition

```ts
withPartition(partition)
```

The partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as "1". Similarly, the volume partition for /dev/sda is "0" (or you can leave the property empty).

### fn spec.source.inlineVolumeSpec.awsElasticBlockStore.withReadOnly

```ts
withReadOnly(readOnly)
```

Specify "true" to force and set the ReadOnly property in VolumeMounts to "true". If omitted, the default is "false". More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore

### fn spec.source.inlineVolumeSpec.awsElasticBlockStore.withVolumeID

```ts
withVolumeID(volumeID)
```

Unique ID of the persistent disk resource in AWS (Amazon EBS volume). More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore

## obj spec.source.inlineVolumeSpec.azureDisk



### fn spec.source.inlineVolumeSpec.azureDisk.withCachingMode

```ts
withCachingMode(cachingMode)
```

Host Caching mode: None, Read Only, Read Write.

### fn spec.source.inlineVolumeSpec.azureDisk.withDiskName

```ts
withDiskName(diskName)
```

The Name of the data disk in the blob storage

### fn spec.source.inlineVolumeSpec.azureDisk.withDiskURI

```ts
withDiskURI(diskURI)
```

The URI the data disk in the blob storage

### fn spec.source.inlineVolumeSpec.azureDisk.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.

### fn spec.source.inlineVolumeSpec.azureDisk.withKind

```ts
withKind(kind)
```

Expected values Shared: multiple blob disks per storage account  Dedicated: single blob disk per storage account  Managed: azure managed data disk (only in managed availability set). defaults to shared

### fn spec.source.inlineVolumeSpec.azureDisk.withReadOnly

```ts
withReadOnly(readOnly)
```

Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.

## obj spec.source.inlineVolumeSpec.azureFile



### fn spec.source.inlineVolumeSpec.azureFile.withReadOnly

```ts
withReadOnly(readOnly)
```

Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.

### fn spec.source.inlineVolumeSpec.azureFile.withSecretName

```ts
withSecretName(secretName)
```

the name of secret that contains Azure Storage Account Name and Key

### fn spec.source.inlineVolumeSpec.azureFile.withSecretNamespace

```ts
withSecretNamespace(secretNamespace)
```

the namespace of the secret that contains Azure Storage Account Name and Key default is the same as the Pod

### fn spec.source.inlineVolumeSpec.azureFile.withShareName

```ts
withShareName(shareName)
```

Share Name

## obj spec.source.inlineVolumeSpec.cephfs

Represents a Ceph Filesystem mount that lasts the lifetime of a pod Cephfs volumes do not support ownership management or SELinux relabeling.

### fn spec.source.inlineVolumeSpec.cephfs.withMonitors

```ts
withMonitors(monitors)
```

Required: Monitors is a collection of Ceph monitors More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it

### fn spec.source.inlineVolumeSpec.cephfs.withMonitorsMixin

```ts
withMonitorsMixin(monitors)
```

Required: Monitors is a collection of Ceph monitors More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it

**Note:** This function appends passed data to existing values

### fn spec.source.inlineVolumeSpec.cephfs.withPath

```ts
withPath(path)
```

Optional: Used as the mounted root, rather than the full Ceph tree, default is /

### fn spec.source.inlineVolumeSpec.cephfs.withReadOnly

```ts
withReadOnly(readOnly)
```

Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it

### fn spec.source.inlineVolumeSpec.cephfs.withSecretFile

```ts
withSecretFile(secretFile)
```

Optional: SecretFile is the path to key ring for User, default is /etc/ceph/user.secret More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it

### fn spec.source.inlineVolumeSpec.cephfs.withUser

```ts
withUser(user)
```

Optional: User is the rados user name, default is admin More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it

## obj spec.source.inlineVolumeSpec.cephfs.secretRef

SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace

### fn spec.source.inlineVolumeSpec.cephfs.secretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn spec.source.inlineVolumeSpec.cephfs.secretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj spec.source.inlineVolumeSpec.cinder

Represents a cinder volume resource in Openstack. A Cinder volume must exist before mounting to a container. The volume must also be in the same region as the kubelet. Cinder volumes support ownership management and SELinux relabeling.

### fn spec.source.inlineVolumeSpec.cinder.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://examples.k8s.io/mysql-cinder-pd/README.md

### fn spec.source.inlineVolumeSpec.cinder.withReadOnly

```ts
withReadOnly(readOnly)
```

Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/mysql-cinder-pd/README.md

### fn spec.source.inlineVolumeSpec.cinder.withVolumeID

```ts
withVolumeID(volumeID)
```

volume id used to identify the volume in cinder. More info: https://examples.k8s.io/mysql-cinder-pd/README.md

## obj spec.source.inlineVolumeSpec.cinder.secretRef

SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace

### fn spec.source.inlineVolumeSpec.cinder.secretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn spec.source.inlineVolumeSpec.cinder.secretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj spec.source.inlineVolumeSpec.claimRef



### fn spec.source.inlineVolumeSpec.claimRef.withFieldPath

```ts
withFieldPath(fieldPath)
```

If referring to a piece of an object instead of an entire object, this string should contain a valid JSON/Go field access statement, such as desiredState.manifest.containers[2]. For example, if the object reference is to a container within a pod, this would take on a value like: "spec.containers{name}" (where "name" refers to the name of the container that triggered the event) or if no container name is specified "spec.containers[2]" (container with index 2 in this pod). This syntax is chosen only to have some well-defined way of referencing a part of an object.

### fn spec.source.inlineVolumeSpec.claimRef.withKind

```ts
withKind(kind)
```

Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds

### fn spec.source.inlineVolumeSpec.claimRef.withName

```ts
withName(name)
```

Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names

### fn spec.source.inlineVolumeSpec.claimRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/

### fn spec.source.inlineVolumeSpec.claimRef.withResourceVersion

```ts
withResourceVersion(resourceVersion)
```

Specific resourceVersion to which this reference is made, if any. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency

### fn spec.source.inlineVolumeSpec.claimRef.withUid

```ts
withUid(uid)
```

UID of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids

## obj spec.source.inlineVolumeSpec.csi

Represents storage that is managed by an external CSI volume driver (Beta feature)

### fn spec.source.inlineVolumeSpec.csi.withDriver

```ts
withDriver(driver)
```

Driver is the name of the driver to use for this volume. Required.

### fn spec.source.inlineVolumeSpec.csi.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs".

### fn spec.source.inlineVolumeSpec.csi.withReadOnly

```ts
withReadOnly(readOnly)
```

Optional: The value to pass to ControllerPublishVolumeRequest. Defaults to false (read/write).

### fn spec.source.inlineVolumeSpec.csi.withVolumeAttributes

```ts
withVolumeAttributes(volumeAttributes)
```

Attributes of the volume to publish.

### fn spec.source.inlineVolumeSpec.csi.withVolumeAttributesMixin

```ts
withVolumeAttributesMixin(volumeAttributes)
```

Attributes of the volume to publish.

**Note:** This function appends passed data to existing values

### fn spec.source.inlineVolumeSpec.csi.withVolumeHandle

```ts
withVolumeHandle(volumeHandle)
```

VolumeHandle is the unique volume name returned by the CSI volume plugin’s CreateVolume to refer to the volume on all subsequent calls. Required.

## obj spec.source.inlineVolumeSpec.csi.controllerExpandSecretRef



### fn spec.source.inlineVolumeSpec.csi.controllerExpandSecretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn spec.source.inlineVolumeSpec.csi.controllerExpandSecretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj spec.source.inlineVolumeSpec.csi.controllerPublishSecretRef

SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace

### fn spec.source.inlineVolumeSpec.csi.controllerPublishSecretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn spec.source.inlineVolumeSpec.csi.controllerPublishSecretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj spec.source.inlineVolumeSpec.csi.nodePublishSecretRef



### fn spec.source.inlineVolumeSpec.csi.nodePublishSecretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn spec.source.inlineVolumeSpec.csi.nodePublishSecretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj spec.source.inlineVolumeSpec.csi.nodeStageSecretRef



### fn spec.source.inlineVolumeSpec.csi.nodeStageSecretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn spec.source.inlineVolumeSpec.csi.nodeStageSecretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj spec.source.inlineVolumeSpec.fc

Represents a Fibre Channel volume. Fibre Channel volumes can only be mounted as read/write once. Fibre Channel volumes support ownership management and SELinux relabeling.

### fn spec.source.inlineVolumeSpec.fc.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.

### fn spec.source.inlineVolumeSpec.fc.withLun

```ts
withLun(lun)
```

Optional: FC target lun number

### fn spec.source.inlineVolumeSpec.fc.withReadOnly

```ts
withReadOnly(readOnly)
```

Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.

### fn spec.source.inlineVolumeSpec.fc.withTargetWWNs

```ts
withTargetWWNs(targetWWNs)
```

Optional: FC target worldwide names (WWNs)

### fn spec.source.inlineVolumeSpec.fc.withTargetWWNsMixin

```ts
withTargetWWNsMixin(targetWWNs)
```

Optional: FC target worldwide names (WWNs)

**Note:** This function appends passed data to existing values

### fn spec.source.inlineVolumeSpec.fc.withWwids

```ts
withWwids(wwids)
```

Optional: FC volume world wide identifiers (wwids) Either wwids or combination of targetWWNs and lun must be set, but not both simultaneously.

### fn spec.source.inlineVolumeSpec.fc.withWwidsMixin

```ts
withWwidsMixin(wwids)
```

Optional: FC volume world wide identifiers (wwids) Either wwids or combination of targetWWNs and lun must be set, but not both simultaneously.

**Note:** This function appends passed data to existing values

## obj spec.source.inlineVolumeSpec.flexVolume



### fn spec.source.inlineVolumeSpec.flexVolume.withDriver

```ts
withDriver(driver)
```

Driver is the name of the driver to use for this volume.

### fn spec.source.inlineVolumeSpec.flexVolume.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". The default filesystem depends on FlexVolume script.

### fn spec.source.inlineVolumeSpec.flexVolume.withOptions

```ts
withOptions(options)
```

Optional: Extra command options if any.

### fn spec.source.inlineVolumeSpec.flexVolume.withOptionsMixin

```ts
withOptionsMixin(options)
```

Optional: Extra command options if any.

**Note:** This function appends passed data to existing values

### fn spec.source.inlineVolumeSpec.flexVolume.withReadOnly

```ts
withReadOnly(readOnly)
```

Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.

## obj spec.source.inlineVolumeSpec.flexVolume.secretRef

SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace

### fn spec.source.inlineVolumeSpec.flexVolume.secretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn spec.source.inlineVolumeSpec.flexVolume.secretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj spec.source.inlineVolumeSpec.flocker



### fn spec.source.inlineVolumeSpec.flocker.withDatasetName

```ts
withDatasetName(datasetName)
```

Name of the dataset stored as metadata -> name on the dataset for Flocker should be considered as deprecated

### fn spec.source.inlineVolumeSpec.flocker.withDatasetUUID

```ts
withDatasetUUID(datasetUUID)
```

UUID of the dataset. This is unique identifier of a Flocker dataset

## obj spec.source.inlineVolumeSpec.gcePersistentDisk

Represents a Persistent Disk resource in Google Compute Engine.

A GCE PD must exist before mounting to a container. The disk must also be in the same GCE project and zone as the kubelet. A GCE PD can only be mounted as read/write once or read-only many times. GCE PDs support ownership management and SELinux relabeling.

### fn spec.source.inlineVolumeSpec.gcePersistentDisk.withFsType

```ts
withFsType(fsType)
```

Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk

### fn spec.source.inlineVolumeSpec.gcePersistentDisk.withPartition

```ts
withPartition(partition)
```

The partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as "1". Similarly, the volume partition for /dev/sda is "0" (or you can leave the property empty). More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk

### fn spec.source.inlineVolumeSpec.gcePersistentDisk.withPdName

```ts
withPdName(pdName)
```

Unique name of the PD resource in GCE. Used to identify the disk in GCE. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk

### fn spec.source.inlineVolumeSpec.gcePersistentDisk.withReadOnly

```ts
withReadOnly(readOnly)
```

ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk

## obj spec.source.inlineVolumeSpec.glusterfs

Represents a Glusterfs mount that lasts the lifetime of a pod. Glusterfs volumes do not support ownership management or SELinux relabeling.

### fn spec.source.inlineVolumeSpec.glusterfs.withEndpoints

```ts
withEndpoints(endpoints)
```

EndpointsName is the endpoint name that details Glusterfs topology. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod

### fn spec.source.inlineVolumeSpec.glusterfs.withEndpointsNamespace

```ts
withEndpointsNamespace(endpointsNamespace)
```

EndpointsNamespace is the namespace that contains Glusterfs endpoint. If this field is empty, the EndpointNamespace defaults to the same namespace as the bound PVC. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod

### fn spec.source.inlineVolumeSpec.glusterfs.withPath

```ts
withPath(path)
```

Path is the Glusterfs volume path. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod

### fn spec.source.inlineVolumeSpec.glusterfs.withReadOnly

```ts
withReadOnly(readOnly)
```

ReadOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod

## obj spec.source.inlineVolumeSpec.hostPath

Represents a host path mapped into a pod. Host path volumes do not support ownership management or SELinux relabeling.

### fn spec.source.inlineVolumeSpec.hostPath.withPath

```ts
withPath(path)
```

Path of the directory on the host. If the path is a symlink, it will follow the link to the real path. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath

### fn spec.source.inlineVolumeSpec.hostPath.withType

```ts
withType(type)
```

Type for HostPath Volume Defaults to "" More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath

## obj spec.source.inlineVolumeSpec.iscsi



### fn spec.source.inlineVolumeSpec.iscsi.withChapAuthDiscovery

```ts
withChapAuthDiscovery(chapAuthDiscovery)
```

whether support iSCSI Discovery CHAP authentication

### fn spec.source.inlineVolumeSpec.iscsi.withChapAuthSession

```ts
withChapAuthSession(chapAuthSession)
```

whether support iSCSI Session CHAP authentication

### fn spec.source.inlineVolumeSpec.iscsi.withFsType

```ts
withFsType(fsType)
```

Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#iscsi

### fn spec.source.inlineVolumeSpec.iscsi.withInitiatorName

```ts
withInitiatorName(initiatorName)
```

Custom iSCSI Initiator Name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be created for the connection.

### fn spec.source.inlineVolumeSpec.iscsi.withIqn

```ts
withIqn(iqn)
```

Target iSCSI Qualified Name.

### fn spec.source.inlineVolumeSpec.iscsi.withIscsiInterface

```ts
withIscsiInterface(iscsiInterface)
```

iSCSI Interface Name that uses an iSCSI transport. Defaults to 'default' (tcp).

### fn spec.source.inlineVolumeSpec.iscsi.withLun

```ts
withLun(lun)
```

iSCSI Target Lun number.

### fn spec.source.inlineVolumeSpec.iscsi.withPortals

```ts
withPortals(portals)
```

iSCSI Target Portal List. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).

### fn spec.source.inlineVolumeSpec.iscsi.withPortalsMixin

```ts
withPortalsMixin(portals)
```

iSCSI Target Portal List. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).

**Note:** This function appends passed data to existing values

### fn spec.source.inlineVolumeSpec.iscsi.withReadOnly

```ts
withReadOnly(readOnly)
```

ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false.

### fn spec.source.inlineVolumeSpec.iscsi.withTargetPortal

```ts
withTargetPortal(targetPortal)
```

iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).

## obj spec.source.inlineVolumeSpec.iscsi.secretRef

SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace

### fn spec.source.inlineVolumeSpec.iscsi.secretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn spec.source.inlineVolumeSpec.iscsi.secretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj spec.source.inlineVolumeSpec.local

Local represents directly-attached storage with node affinity (Beta feature)

### fn spec.source.inlineVolumeSpec.local.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. It applies only when the Path is a block device. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". The default value is to auto-select a fileystem if unspecified.

### fn spec.source.inlineVolumeSpec.local.withPath

```ts
withPath(path)
```

The full path to the volume on the node. It can be either a directory or block device (disk, partition, ...).

## obj spec.source.inlineVolumeSpec.nfs

Represents an NFS mount that lasts the lifetime of a pod. NFS volumes do not support ownership management or SELinux relabeling.

### fn spec.source.inlineVolumeSpec.nfs.withPath

```ts
withPath(path)
```

Path that is exported by the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs

### fn spec.source.inlineVolumeSpec.nfs.withReadOnly

```ts
withReadOnly(readOnly)
```

ReadOnly here will force the NFS export to be mounted with read-only permissions. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs

### fn spec.source.inlineVolumeSpec.nfs.withServer

```ts
withServer(server)
```

Server is the hostname or IP address of the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs

## obj spec.source.inlineVolumeSpec.nodeAffinity



## obj spec.source.inlineVolumeSpec.nodeAffinity.required



### fn spec.source.inlineVolumeSpec.nodeAffinity.required.withNodeSelectorTerms

```ts
withNodeSelectorTerms(nodeSelectorTerms)
```

Required. A list of node selector terms. The terms are ORed.

### fn spec.source.inlineVolumeSpec.nodeAffinity.required.withNodeSelectorTermsMixin

```ts
withNodeSelectorTermsMixin(nodeSelectorTerms)
```

Required. A list of node selector terms. The terms are ORed.

**Note:** This function appends passed data to existing values

## obj spec.source.inlineVolumeSpec.photonPersistentDisk

Represents a Photon Controller persistent disk resource.

### fn spec.source.inlineVolumeSpec.photonPersistentDisk.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.

### fn spec.source.inlineVolumeSpec.photonPersistentDisk.withPdID

```ts
withPdID(pdID)
```

ID that identifies Photon Controller persistent disk

## obj spec.source.inlineVolumeSpec.portworxVolume



### fn spec.source.inlineVolumeSpec.portworxVolume.withFsType

```ts
withFsType(fsType)
```

FSType represents the filesystem type to mount Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs". Implicitly inferred to be "ext4" if unspecified.

### fn spec.source.inlineVolumeSpec.portworxVolume.withReadOnly

```ts
withReadOnly(readOnly)
```

Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.

### fn spec.source.inlineVolumeSpec.portworxVolume.withVolumeID

```ts
withVolumeID(volumeID)
```

VolumeID uniquely identifies a Portworx volume

## obj spec.source.inlineVolumeSpec.quobyte

Represents a Quobyte mount that lasts the lifetime of a pod. Quobyte volumes do not support ownership management or SELinux relabeling.

### fn spec.source.inlineVolumeSpec.quobyte.withGroup

```ts
withGroup(group)
```

Group to map volume access to Default is no group

### fn spec.source.inlineVolumeSpec.quobyte.withReadOnly

```ts
withReadOnly(readOnly)
```

ReadOnly here will force the Quobyte volume to be mounted with read-only permissions. Defaults to false.

### fn spec.source.inlineVolumeSpec.quobyte.withRegistry

```ts
withRegistry(registry)
```

Registry represents a single or multiple Quobyte Registry services specified as a string as host:port pair (multiple entries are separated with commas) which acts as the central registry for volumes

### fn spec.source.inlineVolumeSpec.quobyte.withTenant

```ts
withTenant(tenant)
```

Tenant owning the given Quobyte volume in the Backend Used with dynamically provisioned Quobyte volumes, value is set by the plugin

### fn spec.source.inlineVolumeSpec.quobyte.withUser

```ts
withUser(user)
```

User to map volume access to Defaults to serivceaccount user

### fn spec.source.inlineVolumeSpec.quobyte.withVolume

```ts
withVolume(volume)
```

Volume is a string that references an already created Quobyte volume by name.

## obj spec.source.inlineVolumeSpec.rbd



### fn spec.source.inlineVolumeSpec.rbd.withFsType

```ts
withFsType(fsType)
```

Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#rbd

### fn spec.source.inlineVolumeSpec.rbd.withImage

```ts
withImage(image)
```

The rados image name. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it

### fn spec.source.inlineVolumeSpec.rbd.withKeyring

```ts
withKeyring(keyring)
```

Keyring is the path to key ring for RBDUser. Default is /etc/ceph/keyring. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it

### fn spec.source.inlineVolumeSpec.rbd.withMonitors

```ts
withMonitors(monitors)
```

A collection of Ceph monitors. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it

### fn spec.source.inlineVolumeSpec.rbd.withMonitorsMixin

```ts
withMonitorsMixin(monitors)
```

A collection of Ceph monitors. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it

**Note:** This function appends passed data to existing values

### fn spec.source.inlineVolumeSpec.rbd.withPool

```ts
withPool(pool)
```

The rados pool name. Default is rbd. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it

### fn spec.source.inlineVolumeSpec.rbd.withReadOnly

```ts
withReadOnly(readOnly)
```

ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it

### fn spec.source.inlineVolumeSpec.rbd.withUser

```ts
withUser(user)
```

The rados user name. Default is admin. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it

## obj spec.source.inlineVolumeSpec.rbd.secretRef



### fn spec.source.inlineVolumeSpec.rbd.secretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn spec.source.inlineVolumeSpec.rbd.secretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj spec.source.inlineVolumeSpec.scaleIO



### fn spec.source.inlineVolumeSpec.scaleIO.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Default is "xfs"

### fn spec.source.inlineVolumeSpec.scaleIO.withGateway

```ts
withGateway(gateway)
```

The host address of the ScaleIO API Gateway.

### fn spec.source.inlineVolumeSpec.scaleIO.withProtectionDomain

```ts
withProtectionDomain(protectionDomain)
```

The name of the ScaleIO Protection Domain for the configured storage.

### fn spec.source.inlineVolumeSpec.scaleIO.withReadOnly

```ts
withReadOnly(readOnly)
```

Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.

### fn spec.source.inlineVolumeSpec.scaleIO.withSslEnabled

```ts
withSslEnabled(sslEnabled)
```

Flag to enable/disable SSL communication with Gateway, default false

### fn spec.source.inlineVolumeSpec.scaleIO.withStorageMode

```ts
withStorageMode(storageMode)
```

Indicates whether the storage for a volume should be ThickProvisioned or ThinProvisioned. Default is ThinProvisioned.

### fn spec.source.inlineVolumeSpec.scaleIO.withStoragePool

```ts
withStoragePool(storagePool)
```

The ScaleIO Storage Pool associated with the protection domain.

### fn spec.source.inlineVolumeSpec.scaleIO.withSystem

```ts
withSystem(system)
```

The name of the storage system as configured in ScaleIO.

### fn spec.source.inlineVolumeSpec.scaleIO.withVolumeName

```ts
withVolumeName(volumeName)
```

The name of a volume already created in the ScaleIO system that is associated with this volume source.

## obj spec.source.inlineVolumeSpec.scaleIO.secretRef



### fn spec.source.inlineVolumeSpec.scaleIO.secretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn spec.source.inlineVolumeSpec.scaleIO.secretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj spec.source.inlineVolumeSpec.storageos

Represents a StorageOS persistent volume resource.

### fn spec.source.inlineVolumeSpec.storageos.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.

### fn spec.source.inlineVolumeSpec.storageos.withReadOnly

```ts
withReadOnly(readOnly)
```

Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.

### fn spec.source.inlineVolumeSpec.storageos.withVolumeName

```ts
withVolumeName(volumeName)
```

VolumeName is the human-readable name of the StorageOS volume.  Volume names are only unique within a namespace.

### fn spec.source.inlineVolumeSpec.storageos.withVolumeNamespace

```ts
withVolumeNamespace(volumeNamespace)
```

VolumeNamespace specifies the scope of the volume within StorageOS.  If no namespace is specified then the Pod's namespace will be used.  This allows the Kubernetes name scoping to be mirrored within StorageOS for tighter integration. Set VolumeName to any name to override the default behaviour. Set to 'default' if you are not using namespaces within StorageOS. Namespaces that do not pre-exist within StorageOS will be created.

## obj spec.source.inlineVolumeSpec.storageos.secretRef

ObjectReference contains enough information to let you inspect or modify the referred object.

### fn spec.source.inlineVolumeSpec.storageos.secretRef.withFieldPath

```ts
withFieldPath(fieldPath)
```

If referring to a piece of an object instead of an entire object, this string should contain a valid JSON/Go field access statement, such as desiredState.manifest.containers[2]. For example, if the object reference is to a container within a pod, this would take on a value like: "spec.containers{name}" (where "name" refers to the name of the container that triggered the event) or if no container name is specified "spec.containers[2]" (container with index 2 in this pod). This syntax is chosen only to have some well-defined way of referencing a part of an object.

### fn spec.source.inlineVolumeSpec.storageos.secretRef.withKind

```ts
withKind(kind)
```

Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds

### fn spec.source.inlineVolumeSpec.storageos.secretRef.withName

```ts
withName(name)
```

Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names

### fn spec.source.inlineVolumeSpec.storageos.secretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/

### fn spec.source.inlineVolumeSpec.storageos.secretRef.withResourceVersion

```ts
withResourceVersion(resourceVersion)
```

Specific resourceVersion to which this reference is made, if any. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency

### fn spec.source.inlineVolumeSpec.storageos.secretRef.withUid

```ts
withUid(uid)
```

UID of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids

## obj spec.source.inlineVolumeSpec.vsphereVolume



### fn spec.source.inlineVolumeSpec.vsphereVolume.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.

### fn spec.source.inlineVolumeSpec.vsphereVolume.withStoragePolicyID

```ts
withStoragePolicyID(storagePolicyID)
```

Storage Policy Based Management (SPBM) profile ID associated with the StoragePolicyName.

### fn spec.source.inlineVolumeSpec.vsphereVolume.withStoragePolicyName

```ts
withStoragePolicyName(storagePolicyName)
```

Storage Policy Based Management (SPBM) profile name.

### fn spec.source.inlineVolumeSpec.vsphereVolume.withVolumePath

```ts
withVolumePath(volumePath)
```

Path that identifies vSphere volume vmdk