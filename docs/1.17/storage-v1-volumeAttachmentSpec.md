---
permalink: /1.17/storage/v1/volumeAttachmentSpec/
---

# package volumeAttachmentSpec

VolumeAttachmentSpec is the specification of a VolumeAttachment request.

## Index

* [`fn withAttacher(attacher)`](#fn-withattacher)
* [`fn withNodeName(nodeName)`](#fn-withnodename)
* [`obj source`](#obj-source)
  * [`fn withPersistentVolumeName(persistentVolumeName)`](#fn-sourcewithpersistentvolumename)
  * [`obj source.inlineVolumeSpec`](#obj-sourceinlinevolumespec)
    * [`fn withAccessModes(accessModes)`](#fn-sourceinlinevolumespecwithaccessmodes)
    * [`fn withAccessModesMixin(accessModes)`](#fn-sourceinlinevolumespecwithaccessmodesmixin)
    * [`fn withCapacity(capacity)`](#fn-sourceinlinevolumespecwithcapacity)
    * [`fn withCapacityMixin(capacity)`](#fn-sourceinlinevolumespecwithcapacitymixin)
    * [`fn withMountOptions(mountOptions)`](#fn-sourceinlinevolumespecwithmountoptions)
    * [`fn withMountOptionsMixin(mountOptions)`](#fn-sourceinlinevolumespecwithmountoptionsmixin)
    * [`fn withPersistentVolumeReclaimPolicy(persistentVolumeReclaimPolicy)`](#fn-sourceinlinevolumespecwithpersistentvolumereclaimpolicy)
    * [`fn withStorageClassName(storageClassName)`](#fn-sourceinlinevolumespecwithstorageclassname)
    * [`fn withVolumeMode(volumeMode)`](#fn-sourceinlinevolumespecwithvolumemode)
    * [`obj source.inlineVolumeSpec.awsElasticBlockStore`](#obj-sourceinlinevolumespecawselasticblockstore)
      * [`fn withFsType(fsType)`](#fn-sourceinlinevolumespecawselasticblockstorewithfstype)
      * [`fn withPartition(partition)`](#fn-sourceinlinevolumespecawselasticblockstorewithpartition)
      * [`fn withReadOnly(readOnly)`](#fn-sourceinlinevolumespecawselasticblockstorewithreadonly)
      * [`fn withVolumeID(volumeID)`](#fn-sourceinlinevolumespecawselasticblockstorewithvolumeid)
    * [`obj source.inlineVolumeSpec.azureDisk`](#obj-sourceinlinevolumespecazuredisk)
      * [`fn withCachingMode(cachingMode)`](#fn-sourceinlinevolumespecazurediskwithcachingmode)
      * [`fn withDiskName(diskName)`](#fn-sourceinlinevolumespecazurediskwithdiskname)
      * [`fn withDiskURI(diskURI)`](#fn-sourceinlinevolumespecazurediskwithdiskuri)
      * [`fn withFsType(fsType)`](#fn-sourceinlinevolumespecazurediskwithfstype)
      * [`fn withKind(kind)`](#fn-sourceinlinevolumespecazurediskwithkind)
      * [`fn withReadOnly(readOnly)`](#fn-sourceinlinevolumespecazurediskwithreadonly)
    * [`obj source.inlineVolumeSpec.azureFile`](#obj-sourceinlinevolumespecazurefile)
      * [`fn withReadOnly(readOnly)`](#fn-sourceinlinevolumespecazurefilewithreadonly)
      * [`fn withSecretName(secretName)`](#fn-sourceinlinevolumespecazurefilewithsecretname)
      * [`fn withSecretNamespace(secretNamespace)`](#fn-sourceinlinevolumespecazurefilewithsecretnamespace)
      * [`fn withShareName(shareName)`](#fn-sourceinlinevolumespecazurefilewithsharename)
    * [`obj source.inlineVolumeSpec.cephfs`](#obj-sourceinlinevolumespeccephfs)
      * [`fn withMonitors(monitors)`](#fn-sourceinlinevolumespeccephfswithmonitors)
      * [`fn withMonitorsMixin(monitors)`](#fn-sourceinlinevolumespeccephfswithmonitorsmixin)
      * [`fn withPath(path)`](#fn-sourceinlinevolumespeccephfswithpath)
      * [`fn withReadOnly(readOnly)`](#fn-sourceinlinevolumespeccephfswithreadonly)
      * [`fn withSecretFile(secretFile)`](#fn-sourceinlinevolumespeccephfswithsecretfile)
      * [`fn withUser(user)`](#fn-sourceinlinevolumespeccephfswithuser)
      * [`obj source.inlineVolumeSpec.cephfs.secretRef`](#obj-sourceinlinevolumespeccephfssecretref)
        * [`fn withName(name)`](#fn-sourceinlinevolumespeccephfssecretrefwithname)
        * [`fn withNamespace(namespace)`](#fn-sourceinlinevolumespeccephfssecretrefwithnamespace)
    * [`obj source.inlineVolumeSpec.cinder`](#obj-sourceinlinevolumespeccinder)
      * [`fn withFsType(fsType)`](#fn-sourceinlinevolumespeccinderwithfstype)
      * [`fn withReadOnly(readOnly)`](#fn-sourceinlinevolumespeccinderwithreadonly)
      * [`fn withVolumeID(volumeID)`](#fn-sourceinlinevolumespeccinderwithvolumeid)
      * [`obj source.inlineVolumeSpec.cinder.secretRef`](#obj-sourceinlinevolumespeccindersecretref)
        * [`fn withName(name)`](#fn-sourceinlinevolumespeccindersecretrefwithname)
        * [`fn withNamespace(namespace)`](#fn-sourceinlinevolumespeccindersecretrefwithnamespace)
    * [`obj source.inlineVolumeSpec.claimRef`](#obj-sourceinlinevolumespecclaimref)
      * [`fn withFieldPath(fieldPath)`](#fn-sourceinlinevolumespecclaimrefwithfieldpath)
      * [`fn withKind(kind)`](#fn-sourceinlinevolumespecclaimrefwithkind)
      * [`fn withName(name)`](#fn-sourceinlinevolumespecclaimrefwithname)
      * [`fn withNamespace(namespace)`](#fn-sourceinlinevolumespecclaimrefwithnamespace)
      * [`fn withResourceVersion(resourceVersion)`](#fn-sourceinlinevolumespecclaimrefwithresourceversion)
      * [`fn withUid(uid)`](#fn-sourceinlinevolumespecclaimrefwithuid)
    * [`obj source.inlineVolumeSpec.csi`](#obj-sourceinlinevolumespeccsi)
      * [`fn withDriver(driver)`](#fn-sourceinlinevolumespeccsiwithdriver)
      * [`fn withFsType(fsType)`](#fn-sourceinlinevolumespeccsiwithfstype)
      * [`fn withReadOnly(readOnly)`](#fn-sourceinlinevolumespeccsiwithreadonly)
      * [`fn withVolumeAttributes(volumeAttributes)`](#fn-sourceinlinevolumespeccsiwithvolumeattributes)
      * [`fn withVolumeAttributesMixin(volumeAttributes)`](#fn-sourceinlinevolumespeccsiwithvolumeattributesmixin)
      * [`fn withVolumeHandle(volumeHandle)`](#fn-sourceinlinevolumespeccsiwithvolumehandle)
      * [`obj source.inlineVolumeSpec.csi.controllerExpandSecretRef`](#obj-sourceinlinevolumespeccsicontrollerexpandsecretref)
        * [`fn withName(name)`](#fn-sourceinlinevolumespeccsicontrollerexpandsecretrefwithname)
        * [`fn withNamespace(namespace)`](#fn-sourceinlinevolumespeccsicontrollerexpandsecretrefwithnamespace)
      * [`obj source.inlineVolumeSpec.csi.controllerPublishSecretRef`](#obj-sourceinlinevolumespeccsicontrollerpublishsecretref)
        * [`fn withName(name)`](#fn-sourceinlinevolumespeccsicontrollerpublishsecretrefwithname)
        * [`fn withNamespace(namespace)`](#fn-sourceinlinevolumespeccsicontrollerpublishsecretrefwithnamespace)
      * [`obj source.inlineVolumeSpec.csi.nodePublishSecretRef`](#obj-sourceinlinevolumespeccsinodepublishsecretref)
        * [`fn withName(name)`](#fn-sourceinlinevolumespeccsinodepublishsecretrefwithname)
        * [`fn withNamespace(namespace)`](#fn-sourceinlinevolumespeccsinodepublishsecretrefwithnamespace)
      * [`obj source.inlineVolumeSpec.csi.nodeStageSecretRef`](#obj-sourceinlinevolumespeccsinodestagesecretref)
        * [`fn withName(name)`](#fn-sourceinlinevolumespeccsinodestagesecretrefwithname)
        * [`fn withNamespace(namespace)`](#fn-sourceinlinevolumespeccsinodestagesecretrefwithnamespace)
    * [`obj source.inlineVolumeSpec.fc`](#obj-sourceinlinevolumespecfc)
      * [`fn withFsType(fsType)`](#fn-sourceinlinevolumespecfcwithfstype)
      * [`fn withLun(lun)`](#fn-sourceinlinevolumespecfcwithlun)
      * [`fn withReadOnly(readOnly)`](#fn-sourceinlinevolumespecfcwithreadonly)
      * [`fn withTargetWWNs(targetWWNs)`](#fn-sourceinlinevolumespecfcwithtargetwwns)
      * [`fn withTargetWWNsMixin(targetWWNs)`](#fn-sourceinlinevolumespecfcwithtargetwwnsmixin)
      * [`fn withWwids(wwids)`](#fn-sourceinlinevolumespecfcwithwwids)
      * [`fn withWwidsMixin(wwids)`](#fn-sourceinlinevolumespecfcwithwwidsmixin)
    * [`obj source.inlineVolumeSpec.flexVolume`](#obj-sourceinlinevolumespecflexvolume)
      * [`fn withDriver(driver)`](#fn-sourceinlinevolumespecflexvolumewithdriver)
      * [`fn withFsType(fsType)`](#fn-sourceinlinevolumespecflexvolumewithfstype)
      * [`fn withOptions(options)`](#fn-sourceinlinevolumespecflexvolumewithoptions)
      * [`fn withOptionsMixin(options)`](#fn-sourceinlinevolumespecflexvolumewithoptionsmixin)
      * [`fn withReadOnly(readOnly)`](#fn-sourceinlinevolumespecflexvolumewithreadonly)
      * [`obj source.inlineVolumeSpec.flexVolume.secretRef`](#obj-sourceinlinevolumespecflexvolumesecretref)
        * [`fn withName(name)`](#fn-sourceinlinevolumespecflexvolumesecretrefwithname)
        * [`fn withNamespace(namespace)`](#fn-sourceinlinevolumespecflexvolumesecretrefwithnamespace)
    * [`obj source.inlineVolumeSpec.flocker`](#obj-sourceinlinevolumespecflocker)
      * [`fn withDatasetName(datasetName)`](#fn-sourceinlinevolumespecflockerwithdatasetname)
      * [`fn withDatasetUUID(datasetUUID)`](#fn-sourceinlinevolumespecflockerwithdatasetuuid)
    * [`obj source.inlineVolumeSpec.gcePersistentDisk`](#obj-sourceinlinevolumespecgcepersistentdisk)
      * [`fn withFsType(fsType)`](#fn-sourceinlinevolumespecgcepersistentdiskwithfstype)
      * [`fn withPartition(partition)`](#fn-sourceinlinevolumespecgcepersistentdiskwithpartition)
      * [`fn withPdName(pdName)`](#fn-sourceinlinevolumespecgcepersistentdiskwithpdname)
      * [`fn withReadOnly(readOnly)`](#fn-sourceinlinevolumespecgcepersistentdiskwithreadonly)
    * [`obj source.inlineVolumeSpec.glusterfs`](#obj-sourceinlinevolumespecglusterfs)
      * [`fn withEndpoints(endpoints)`](#fn-sourceinlinevolumespecglusterfswithendpoints)
      * [`fn withEndpointsNamespace(endpointsNamespace)`](#fn-sourceinlinevolumespecglusterfswithendpointsnamespace)
      * [`fn withPath(path)`](#fn-sourceinlinevolumespecglusterfswithpath)
      * [`fn withReadOnly(readOnly)`](#fn-sourceinlinevolumespecglusterfswithreadonly)
    * [`obj source.inlineVolumeSpec.hostPath`](#obj-sourceinlinevolumespechostpath)
      * [`fn withPath(path)`](#fn-sourceinlinevolumespechostpathwithpath)
      * [`fn withType(type)`](#fn-sourceinlinevolumespechostpathwithtype)
    * [`obj source.inlineVolumeSpec.iscsi`](#obj-sourceinlinevolumespeciscsi)
      * [`fn withChapAuthDiscovery(chapAuthDiscovery)`](#fn-sourceinlinevolumespeciscsiwithchapauthdiscovery)
      * [`fn withChapAuthSession(chapAuthSession)`](#fn-sourceinlinevolumespeciscsiwithchapauthsession)
      * [`fn withFsType(fsType)`](#fn-sourceinlinevolumespeciscsiwithfstype)
      * [`fn withInitiatorName(initiatorName)`](#fn-sourceinlinevolumespeciscsiwithinitiatorname)
      * [`fn withIqn(iqn)`](#fn-sourceinlinevolumespeciscsiwithiqn)
      * [`fn withIscsiInterface(iscsiInterface)`](#fn-sourceinlinevolumespeciscsiwithiscsiinterface)
      * [`fn withLun(lun)`](#fn-sourceinlinevolumespeciscsiwithlun)
      * [`fn withPortals(portals)`](#fn-sourceinlinevolumespeciscsiwithportals)
      * [`fn withPortalsMixin(portals)`](#fn-sourceinlinevolumespeciscsiwithportalsmixin)
      * [`fn withReadOnly(readOnly)`](#fn-sourceinlinevolumespeciscsiwithreadonly)
      * [`fn withTargetPortal(targetPortal)`](#fn-sourceinlinevolumespeciscsiwithtargetportal)
      * [`obj source.inlineVolumeSpec.iscsi.secretRef`](#obj-sourceinlinevolumespeciscsisecretref)
        * [`fn withName(name)`](#fn-sourceinlinevolumespeciscsisecretrefwithname)
        * [`fn withNamespace(namespace)`](#fn-sourceinlinevolumespeciscsisecretrefwithnamespace)
    * [`obj source.inlineVolumeSpec.local`](#obj-sourceinlinevolumespeclocal)
      * [`fn withFsType(fsType)`](#fn-sourceinlinevolumespeclocalwithfstype)
      * [`fn withPath(path)`](#fn-sourceinlinevolumespeclocalwithpath)
    * [`obj source.inlineVolumeSpec.nfs`](#obj-sourceinlinevolumespecnfs)
      * [`fn withPath(path)`](#fn-sourceinlinevolumespecnfswithpath)
      * [`fn withReadOnly(readOnly)`](#fn-sourceinlinevolumespecnfswithreadonly)
      * [`fn withServer(server)`](#fn-sourceinlinevolumespecnfswithserver)
    * [`obj source.inlineVolumeSpec.nodeAffinity`](#obj-sourceinlinevolumespecnodeaffinity)
      * [`obj source.inlineVolumeSpec.nodeAffinity.required`](#obj-sourceinlinevolumespecnodeaffinityrequired)
        * [`fn withNodeSelectorTerms(nodeSelectorTerms)`](#fn-sourceinlinevolumespecnodeaffinityrequiredwithnodeselectorterms)
        * [`fn withNodeSelectorTermsMixin(nodeSelectorTerms)`](#fn-sourceinlinevolumespecnodeaffinityrequiredwithnodeselectortermsmixin)
    * [`obj source.inlineVolumeSpec.photonPersistentDisk`](#obj-sourceinlinevolumespecphotonpersistentdisk)
      * [`fn withFsType(fsType)`](#fn-sourceinlinevolumespecphotonpersistentdiskwithfstype)
      * [`fn withPdID(pdID)`](#fn-sourceinlinevolumespecphotonpersistentdiskwithpdid)
    * [`obj source.inlineVolumeSpec.portworxVolume`](#obj-sourceinlinevolumespecportworxvolume)
      * [`fn withFsType(fsType)`](#fn-sourceinlinevolumespecportworxvolumewithfstype)
      * [`fn withReadOnly(readOnly)`](#fn-sourceinlinevolumespecportworxvolumewithreadonly)
      * [`fn withVolumeID(volumeID)`](#fn-sourceinlinevolumespecportworxvolumewithvolumeid)
    * [`obj source.inlineVolumeSpec.quobyte`](#obj-sourceinlinevolumespecquobyte)
      * [`fn withGroup(group)`](#fn-sourceinlinevolumespecquobytewithgroup)
      * [`fn withReadOnly(readOnly)`](#fn-sourceinlinevolumespecquobytewithreadonly)
      * [`fn withRegistry(registry)`](#fn-sourceinlinevolumespecquobytewithregistry)
      * [`fn withTenant(tenant)`](#fn-sourceinlinevolumespecquobytewithtenant)
      * [`fn withUser(user)`](#fn-sourceinlinevolumespecquobytewithuser)
      * [`fn withVolume(volume)`](#fn-sourceinlinevolumespecquobytewithvolume)
    * [`obj source.inlineVolumeSpec.rbd`](#obj-sourceinlinevolumespecrbd)
      * [`fn withFsType(fsType)`](#fn-sourceinlinevolumespecrbdwithfstype)
      * [`fn withImage(image)`](#fn-sourceinlinevolumespecrbdwithimage)
      * [`fn withKeyring(keyring)`](#fn-sourceinlinevolumespecrbdwithkeyring)
      * [`fn withMonitors(monitors)`](#fn-sourceinlinevolumespecrbdwithmonitors)
      * [`fn withMonitorsMixin(monitors)`](#fn-sourceinlinevolumespecrbdwithmonitorsmixin)
      * [`fn withPool(pool)`](#fn-sourceinlinevolumespecrbdwithpool)
      * [`fn withReadOnly(readOnly)`](#fn-sourceinlinevolumespecrbdwithreadonly)
      * [`fn withUser(user)`](#fn-sourceinlinevolumespecrbdwithuser)
      * [`obj source.inlineVolumeSpec.rbd.secretRef`](#obj-sourceinlinevolumespecrbdsecretref)
        * [`fn withName(name)`](#fn-sourceinlinevolumespecrbdsecretrefwithname)
        * [`fn withNamespace(namespace)`](#fn-sourceinlinevolumespecrbdsecretrefwithnamespace)
    * [`obj source.inlineVolumeSpec.scaleIO`](#obj-sourceinlinevolumespecscaleio)
      * [`fn withFsType(fsType)`](#fn-sourceinlinevolumespecscaleiowithfstype)
      * [`fn withGateway(gateway)`](#fn-sourceinlinevolumespecscaleiowithgateway)
      * [`fn withProtectionDomain(protectionDomain)`](#fn-sourceinlinevolumespecscaleiowithprotectiondomain)
      * [`fn withReadOnly(readOnly)`](#fn-sourceinlinevolumespecscaleiowithreadonly)
      * [`fn withSslEnabled(sslEnabled)`](#fn-sourceinlinevolumespecscaleiowithsslenabled)
      * [`fn withStorageMode(storageMode)`](#fn-sourceinlinevolumespecscaleiowithstoragemode)
      * [`fn withStoragePool(storagePool)`](#fn-sourceinlinevolumespecscaleiowithstoragepool)
      * [`fn withSystem(system)`](#fn-sourceinlinevolumespecscaleiowithsystem)
      * [`fn withVolumeName(volumeName)`](#fn-sourceinlinevolumespecscaleiowithvolumename)
      * [`obj source.inlineVolumeSpec.scaleIO.secretRef`](#obj-sourceinlinevolumespecscaleiosecretref)
        * [`fn withName(name)`](#fn-sourceinlinevolumespecscaleiosecretrefwithname)
        * [`fn withNamespace(namespace)`](#fn-sourceinlinevolumespecscaleiosecretrefwithnamespace)
    * [`obj source.inlineVolumeSpec.storageos`](#obj-sourceinlinevolumespecstorageos)
      * [`fn withFsType(fsType)`](#fn-sourceinlinevolumespecstorageoswithfstype)
      * [`fn withReadOnly(readOnly)`](#fn-sourceinlinevolumespecstorageoswithreadonly)
      * [`fn withVolumeName(volumeName)`](#fn-sourceinlinevolumespecstorageoswithvolumename)
      * [`fn withVolumeNamespace(volumeNamespace)`](#fn-sourceinlinevolumespecstorageoswithvolumenamespace)
      * [`obj source.inlineVolumeSpec.storageos.secretRef`](#obj-sourceinlinevolumespecstorageossecretref)
        * [`fn withFieldPath(fieldPath)`](#fn-sourceinlinevolumespecstorageossecretrefwithfieldpath)
        * [`fn withKind(kind)`](#fn-sourceinlinevolumespecstorageossecretrefwithkind)
        * [`fn withName(name)`](#fn-sourceinlinevolumespecstorageossecretrefwithname)
        * [`fn withNamespace(namespace)`](#fn-sourceinlinevolumespecstorageossecretrefwithnamespace)
        * [`fn withResourceVersion(resourceVersion)`](#fn-sourceinlinevolumespecstorageossecretrefwithresourceversion)
        * [`fn withUid(uid)`](#fn-sourceinlinevolumespecstorageossecretrefwithuid)
    * [`obj source.inlineVolumeSpec.vsphereVolume`](#obj-sourceinlinevolumespecvspherevolume)
      * [`fn withFsType(fsType)`](#fn-sourceinlinevolumespecvspherevolumewithfstype)
      * [`fn withStoragePolicyID(storagePolicyID)`](#fn-sourceinlinevolumespecvspherevolumewithstoragepolicyid)
      * [`fn withStoragePolicyName(storagePolicyName)`](#fn-sourceinlinevolumespecvspherevolumewithstoragepolicyname)
      * [`fn withVolumePath(volumePath)`](#fn-sourceinlinevolumespecvspherevolumewithvolumepath)

## Fields

### fn withAttacher

```ts
withAttacher(attacher)
```

Attacher indicates the name of the volume driver that MUST handle this request. This is the name returned by GetPluginName().

### fn withNodeName

```ts
withNodeName(nodeName)
```

The node that the volume should be attached to.

## obj source

VolumeAttachmentSource represents a volume that should be attached. Right now only PersistenVolumes can be attached via external attacher, in future we may allow also inline volumes in pods. Exactly one member can be set.

### fn source.withPersistentVolumeName

```ts
withPersistentVolumeName(persistentVolumeName)
```

Name of the persistent volume to attach.

## obj source.inlineVolumeSpec



### fn source.inlineVolumeSpec.withAccessModes

```ts
withAccessModes(accessModes)
```

AccessModes contains all ways the volume can be mounted. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes

### fn source.inlineVolumeSpec.withAccessModesMixin

```ts
withAccessModesMixin(accessModes)
```

AccessModes contains all ways the volume can be mounted. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes

**Note:** This function appends passed data to existing values

### fn source.inlineVolumeSpec.withCapacity

```ts
withCapacity(capacity)
```

A description of the persistent volume's resources and capacity. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity

### fn source.inlineVolumeSpec.withCapacityMixin

```ts
withCapacityMixin(capacity)
```

A description of the persistent volume's resources and capacity. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity

**Note:** This function appends passed data to existing values

### fn source.inlineVolumeSpec.withMountOptions

```ts
withMountOptions(mountOptions)
```

A list of mount options, e.g. ["ro", "soft"]. Not validated - mount will simply fail if one is invalid. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options

### fn source.inlineVolumeSpec.withMountOptionsMixin

```ts
withMountOptionsMixin(mountOptions)
```

A list of mount options, e.g. ["ro", "soft"]. Not validated - mount will simply fail if one is invalid. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options

**Note:** This function appends passed data to existing values

### fn source.inlineVolumeSpec.withPersistentVolumeReclaimPolicy

```ts
withPersistentVolumeReclaimPolicy(persistentVolumeReclaimPolicy)
```

What happens to a persistent volume when released from its claim. Valid options are Retain (default for manually created PersistentVolumes), Delete (default for dynamically provisioned PersistentVolumes), and Recycle (deprecated). Recycle must be supported by the volume plugin underlying this PersistentVolume. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming

### fn source.inlineVolumeSpec.withStorageClassName

```ts
withStorageClassName(storageClassName)
```

Name of StorageClass to which this persistent volume belongs. Empty value means that this volume does not belong to any StorageClass.

### fn source.inlineVolumeSpec.withVolumeMode

```ts
withVolumeMode(volumeMode)
```

volumeMode defines if a volume is intended to be used with a formatted filesystem or to remain in raw block state. Value of Filesystem is implied when not included in spec. This is a beta feature.

## obj source.inlineVolumeSpec.awsElasticBlockStore



### fn source.inlineVolumeSpec.awsElasticBlockStore.withFsType

```ts
withFsType(fsType)
```

Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore

### fn source.inlineVolumeSpec.awsElasticBlockStore.withPartition

```ts
withPartition(partition)
```

The partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as "1". Similarly, the volume partition for /dev/sda is "0" (or you can leave the property empty).

### fn source.inlineVolumeSpec.awsElasticBlockStore.withReadOnly

```ts
withReadOnly(readOnly)
```

Specify "true" to force and set the ReadOnly property in VolumeMounts to "true". If omitted, the default is "false". More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore

### fn source.inlineVolumeSpec.awsElasticBlockStore.withVolumeID

```ts
withVolumeID(volumeID)
```

Unique ID of the persistent disk resource in AWS (Amazon EBS volume). More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore

## obj source.inlineVolumeSpec.azureDisk

AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.

### fn source.inlineVolumeSpec.azureDisk.withCachingMode

```ts
withCachingMode(cachingMode)
```

Host Caching mode: None, Read Only, Read Write.

### fn source.inlineVolumeSpec.azureDisk.withDiskName

```ts
withDiskName(diskName)
```

The Name of the data disk in the blob storage

### fn source.inlineVolumeSpec.azureDisk.withDiskURI

```ts
withDiskURI(diskURI)
```

The URI the data disk in the blob storage

### fn source.inlineVolumeSpec.azureDisk.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.

### fn source.inlineVolumeSpec.azureDisk.withKind

```ts
withKind(kind)
```

Expected values Shared: multiple blob disks per storage account  Dedicated: single blob disk per storage account  Managed: azure managed data disk (only in managed availability set). defaults to shared

### fn source.inlineVolumeSpec.azureDisk.withReadOnly

```ts
withReadOnly(readOnly)
```

Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.

## obj source.inlineVolumeSpec.azureFile



### fn source.inlineVolumeSpec.azureFile.withReadOnly

```ts
withReadOnly(readOnly)
```

Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.

### fn source.inlineVolumeSpec.azureFile.withSecretName

```ts
withSecretName(secretName)
```

the name of secret that contains Azure Storage Account Name and Key

### fn source.inlineVolumeSpec.azureFile.withSecretNamespace

```ts
withSecretNamespace(secretNamespace)
```

the namespace of the secret that contains Azure Storage Account Name and Key default is the same as the Pod

### fn source.inlineVolumeSpec.azureFile.withShareName

```ts
withShareName(shareName)
```

Share Name

## obj source.inlineVolumeSpec.cephfs

Represents a Ceph Filesystem mount that lasts the lifetime of a pod Cephfs volumes do not support ownership management or SELinux relabeling.

### fn source.inlineVolumeSpec.cephfs.withMonitors

```ts
withMonitors(monitors)
```

Required: Monitors is a collection of Ceph monitors More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it

### fn source.inlineVolumeSpec.cephfs.withMonitorsMixin

```ts
withMonitorsMixin(monitors)
```

Required: Monitors is a collection of Ceph monitors More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it

**Note:** This function appends passed data to existing values

### fn source.inlineVolumeSpec.cephfs.withPath

```ts
withPath(path)
```

Optional: Used as the mounted root, rather than the full Ceph tree, default is /

### fn source.inlineVolumeSpec.cephfs.withReadOnly

```ts
withReadOnly(readOnly)
```

Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it

### fn source.inlineVolumeSpec.cephfs.withSecretFile

```ts
withSecretFile(secretFile)
```

Optional: SecretFile is the path to key ring for User, default is /etc/ceph/user.secret More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it

### fn source.inlineVolumeSpec.cephfs.withUser

```ts
withUser(user)
```

Optional: User is the rados user name, default is admin More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it

## obj source.inlineVolumeSpec.cephfs.secretRef

SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace

### fn source.inlineVolumeSpec.cephfs.secretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn source.inlineVolumeSpec.cephfs.secretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj source.inlineVolumeSpec.cinder

Represents a cinder volume resource in Openstack. A Cinder volume must exist before mounting to a container. The volume must also be in the same region as the kubelet. Cinder volumes support ownership management and SELinux relabeling.

### fn source.inlineVolumeSpec.cinder.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://examples.k8s.io/mysql-cinder-pd/README.md

### fn source.inlineVolumeSpec.cinder.withReadOnly

```ts
withReadOnly(readOnly)
```

Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/mysql-cinder-pd/README.md

### fn source.inlineVolumeSpec.cinder.withVolumeID

```ts
withVolumeID(volumeID)
```

volume id used to identify the volume in cinder. More info: https://examples.k8s.io/mysql-cinder-pd/README.md

## obj source.inlineVolumeSpec.cinder.secretRef



### fn source.inlineVolumeSpec.cinder.secretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn source.inlineVolumeSpec.cinder.secretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj source.inlineVolumeSpec.claimRef



### fn source.inlineVolumeSpec.claimRef.withFieldPath

```ts
withFieldPath(fieldPath)
```

If referring to a piece of an object instead of an entire object, this string should contain a valid JSON/Go field access statement, such as desiredState.manifest.containers[2]. For example, if the object reference is to a container within a pod, this would take on a value like: "spec.containers{name}" (where "name" refers to the name of the container that triggered the event) or if no container name is specified "spec.containers[2]" (container with index 2 in this pod). This syntax is chosen only to have some well-defined way of referencing a part of an object.

### fn source.inlineVolumeSpec.claimRef.withKind

```ts
withKind(kind)
```

Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds

### fn source.inlineVolumeSpec.claimRef.withName

```ts
withName(name)
```

Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names

### fn source.inlineVolumeSpec.claimRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/

### fn source.inlineVolumeSpec.claimRef.withResourceVersion

```ts
withResourceVersion(resourceVersion)
```

Specific resourceVersion to which this reference is made, if any. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency

### fn source.inlineVolumeSpec.claimRef.withUid

```ts
withUid(uid)
```

UID of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids

## obj source.inlineVolumeSpec.csi

Represents storage that is managed by an external CSI volume driver (Beta feature)

### fn source.inlineVolumeSpec.csi.withDriver

```ts
withDriver(driver)
```

Driver is the name of the driver to use for this volume. Required.

### fn source.inlineVolumeSpec.csi.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs".

### fn source.inlineVolumeSpec.csi.withReadOnly

```ts
withReadOnly(readOnly)
```

Optional: The value to pass to ControllerPublishVolumeRequest. Defaults to false (read/write).

### fn source.inlineVolumeSpec.csi.withVolumeAttributes

```ts
withVolumeAttributes(volumeAttributes)
```

Attributes of the volume to publish.

### fn source.inlineVolumeSpec.csi.withVolumeAttributesMixin

```ts
withVolumeAttributesMixin(volumeAttributes)
```

Attributes of the volume to publish.

**Note:** This function appends passed data to existing values

### fn source.inlineVolumeSpec.csi.withVolumeHandle

```ts
withVolumeHandle(volumeHandle)
```

VolumeHandle is the unique volume name returned by the CSI volume plugin’s CreateVolume to refer to the volume on all subsequent calls. Required.

## obj source.inlineVolumeSpec.csi.controllerExpandSecretRef

SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace

### fn source.inlineVolumeSpec.csi.controllerExpandSecretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn source.inlineVolumeSpec.csi.controllerExpandSecretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj source.inlineVolumeSpec.csi.controllerPublishSecretRef

SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace

### fn source.inlineVolumeSpec.csi.controllerPublishSecretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn source.inlineVolumeSpec.csi.controllerPublishSecretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj source.inlineVolumeSpec.csi.nodePublishSecretRef

SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace

### fn source.inlineVolumeSpec.csi.nodePublishSecretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn source.inlineVolumeSpec.csi.nodePublishSecretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj source.inlineVolumeSpec.csi.nodeStageSecretRef



### fn source.inlineVolumeSpec.csi.nodeStageSecretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn source.inlineVolumeSpec.csi.nodeStageSecretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj source.inlineVolumeSpec.fc

Represents a Fibre Channel volume. Fibre Channel volumes can only be mounted as read/write once. Fibre Channel volumes support ownership management and SELinux relabeling.

### fn source.inlineVolumeSpec.fc.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.

### fn source.inlineVolumeSpec.fc.withLun

```ts
withLun(lun)
```

Optional: FC target lun number

### fn source.inlineVolumeSpec.fc.withReadOnly

```ts
withReadOnly(readOnly)
```

Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.

### fn source.inlineVolumeSpec.fc.withTargetWWNs

```ts
withTargetWWNs(targetWWNs)
```

Optional: FC target worldwide names (WWNs)

### fn source.inlineVolumeSpec.fc.withTargetWWNsMixin

```ts
withTargetWWNsMixin(targetWWNs)
```

Optional: FC target worldwide names (WWNs)

**Note:** This function appends passed data to existing values

### fn source.inlineVolumeSpec.fc.withWwids

```ts
withWwids(wwids)
```

Optional: FC volume world wide identifiers (wwids) Either wwids or combination of targetWWNs and lun must be set, but not both simultaneously.

### fn source.inlineVolumeSpec.fc.withWwidsMixin

```ts
withWwidsMixin(wwids)
```

Optional: FC volume world wide identifiers (wwids) Either wwids or combination of targetWWNs and lun must be set, but not both simultaneously.

**Note:** This function appends passed data to existing values

## obj source.inlineVolumeSpec.flexVolume



### fn source.inlineVolumeSpec.flexVolume.withDriver

```ts
withDriver(driver)
```

Driver is the name of the driver to use for this volume.

### fn source.inlineVolumeSpec.flexVolume.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". The default filesystem depends on FlexVolume script.

### fn source.inlineVolumeSpec.flexVolume.withOptions

```ts
withOptions(options)
```

Optional: Extra command options if any.

### fn source.inlineVolumeSpec.flexVolume.withOptionsMixin

```ts
withOptionsMixin(options)
```

Optional: Extra command options if any.

**Note:** This function appends passed data to existing values

### fn source.inlineVolumeSpec.flexVolume.withReadOnly

```ts
withReadOnly(readOnly)
```

Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.

## obj source.inlineVolumeSpec.flexVolume.secretRef

SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace

### fn source.inlineVolumeSpec.flexVolume.secretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn source.inlineVolumeSpec.flexVolume.secretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj source.inlineVolumeSpec.flocker



### fn source.inlineVolumeSpec.flocker.withDatasetName

```ts
withDatasetName(datasetName)
```

Name of the dataset stored as metadata -> name on the dataset for Flocker should be considered as deprecated

### fn source.inlineVolumeSpec.flocker.withDatasetUUID

```ts
withDatasetUUID(datasetUUID)
```

UUID of the dataset. This is unique identifier of a Flocker dataset

## obj source.inlineVolumeSpec.gcePersistentDisk



### fn source.inlineVolumeSpec.gcePersistentDisk.withFsType

```ts
withFsType(fsType)
```

Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk

### fn source.inlineVolumeSpec.gcePersistentDisk.withPartition

```ts
withPartition(partition)
```

The partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as "1". Similarly, the volume partition for /dev/sda is "0" (or you can leave the property empty). More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk

### fn source.inlineVolumeSpec.gcePersistentDisk.withPdName

```ts
withPdName(pdName)
```

Unique name of the PD resource in GCE. Used to identify the disk in GCE. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk

### fn source.inlineVolumeSpec.gcePersistentDisk.withReadOnly

```ts
withReadOnly(readOnly)
```

ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk

## obj source.inlineVolumeSpec.glusterfs

Represents a Glusterfs mount that lasts the lifetime of a pod. Glusterfs volumes do not support ownership management or SELinux relabeling.

### fn source.inlineVolumeSpec.glusterfs.withEndpoints

```ts
withEndpoints(endpoints)
```

EndpointsName is the endpoint name that details Glusterfs topology. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod

### fn source.inlineVolumeSpec.glusterfs.withEndpointsNamespace

```ts
withEndpointsNamespace(endpointsNamespace)
```

EndpointsNamespace is the namespace that contains Glusterfs endpoint. If this field is empty, the EndpointNamespace defaults to the same namespace as the bound PVC. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod

### fn source.inlineVolumeSpec.glusterfs.withPath

```ts
withPath(path)
```

Path is the Glusterfs volume path. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod

### fn source.inlineVolumeSpec.glusterfs.withReadOnly

```ts
withReadOnly(readOnly)
```

ReadOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod

## obj source.inlineVolumeSpec.hostPath



### fn source.inlineVolumeSpec.hostPath.withPath

```ts
withPath(path)
```

Path of the directory on the host. If the path is a symlink, it will follow the link to the real path. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath

### fn source.inlineVolumeSpec.hostPath.withType

```ts
withType(type)
```

Type for HostPath Volume Defaults to "" More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath

## obj source.inlineVolumeSpec.iscsi



### fn source.inlineVolumeSpec.iscsi.withChapAuthDiscovery

```ts
withChapAuthDiscovery(chapAuthDiscovery)
```

whether support iSCSI Discovery CHAP authentication

### fn source.inlineVolumeSpec.iscsi.withChapAuthSession

```ts
withChapAuthSession(chapAuthSession)
```

whether support iSCSI Session CHAP authentication

### fn source.inlineVolumeSpec.iscsi.withFsType

```ts
withFsType(fsType)
```

Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#iscsi

### fn source.inlineVolumeSpec.iscsi.withInitiatorName

```ts
withInitiatorName(initiatorName)
```

Custom iSCSI Initiator Name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be created for the connection.

### fn source.inlineVolumeSpec.iscsi.withIqn

```ts
withIqn(iqn)
```

Target iSCSI Qualified Name.

### fn source.inlineVolumeSpec.iscsi.withIscsiInterface

```ts
withIscsiInterface(iscsiInterface)
```

iSCSI Interface Name that uses an iSCSI transport. Defaults to 'default' (tcp).

### fn source.inlineVolumeSpec.iscsi.withLun

```ts
withLun(lun)
```

iSCSI Target Lun number.

### fn source.inlineVolumeSpec.iscsi.withPortals

```ts
withPortals(portals)
```

iSCSI Target Portal List. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).

### fn source.inlineVolumeSpec.iscsi.withPortalsMixin

```ts
withPortalsMixin(portals)
```

iSCSI Target Portal List. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).

**Note:** This function appends passed data to existing values

### fn source.inlineVolumeSpec.iscsi.withReadOnly

```ts
withReadOnly(readOnly)
```

ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false.

### fn source.inlineVolumeSpec.iscsi.withTargetPortal

```ts
withTargetPortal(targetPortal)
```

iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).

## obj source.inlineVolumeSpec.iscsi.secretRef



### fn source.inlineVolumeSpec.iscsi.secretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn source.inlineVolumeSpec.iscsi.secretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj source.inlineVolumeSpec.local

Local represents directly-attached storage with node affinity (Beta feature)

### fn source.inlineVolumeSpec.local.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. It applies only when the Path is a block device. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". The default value is to auto-select a fileystem if unspecified.

### fn source.inlineVolumeSpec.local.withPath

```ts
withPath(path)
```

The full path to the volume on the node. It can be either a directory or block device (disk, partition, ...).

## obj source.inlineVolumeSpec.nfs

Represents an NFS mount that lasts the lifetime of a pod. NFS volumes do not support ownership management or SELinux relabeling.

### fn source.inlineVolumeSpec.nfs.withPath

```ts
withPath(path)
```

Path that is exported by the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs

### fn source.inlineVolumeSpec.nfs.withReadOnly

```ts
withReadOnly(readOnly)
```

ReadOnly here will force the NFS export to be mounted with read-only permissions. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs

### fn source.inlineVolumeSpec.nfs.withServer

```ts
withServer(server)
```

Server is the hostname or IP address of the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs

## obj source.inlineVolumeSpec.nodeAffinity



## obj source.inlineVolumeSpec.nodeAffinity.required



### fn source.inlineVolumeSpec.nodeAffinity.required.withNodeSelectorTerms

```ts
withNodeSelectorTerms(nodeSelectorTerms)
```

Required. A list of node selector terms. The terms are ORed.

### fn source.inlineVolumeSpec.nodeAffinity.required.withNodeSelectorTermsMixin

```ts
withNodeSelectorTermsMixin(nodeSelectorTerms)
```

Required. A list of node selector terms. The terms are ORed.

**Note:** This function appends passed data to existing values

## obj source.inlineVolumeSpec.photonPersistentDisk



### fn source.inlineVolumeSpec.photonPersistentDisk.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.

### fn source.inlineVolumeSpec.photonPersistentDisk.withPdID

```ts
withPdID(pdID)
```

ID that identifies Photon Controller persistent disk

## obj source.inlineVolumeSpec.portworxVolume



### fn source.inlineVolumeSpec.portworxVolume.withFsType

```ts
withFsType(fsType)
```

FSType represents the filesystem type to mount Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs". Implicitly inferred to be "ext4" if unspecified.

### fn source.inlineVolumeSpec.portworxVolume.withReadOnly

```ts
withReadOnly(readOnly)
```

Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.

### fn source.inlineVolumeSpec.portworxVolume.withVolumeID

```ts
withVolumeID(volumeID)
```

VolumeID uniquely identifies a Portworx volume

## obj source.inlineVolumeSpec.quobyte



### fn source.inlineVolumeSpec.quobyte.withGroup

```ts
withGroup(group)
```

Group to map volume access to Default is no group

### fn source.inlineVolumeSpec.quobyte.withReadOnly

```ts
withReadOnly(readOnly)
```

ReadOnly here will force the Quobyte volume to be mounted with read-only permissions. Defaults to false.

### fn source.inlineVolumeSpec.quobyte.withRegistry

```ts
withRegistry(registry)
```

Registry represents a single or multiple Quobyte Registry services specified as a string as host:port pair (multiple entries are separated with commas) which acts as the central registry for volumes

### fn source.inlineVolumeSpec.quobyte.withTenant

```ts
withTenant(tenant)
```

Tenant owning the given Quobyte volume in the Backend Used with dynamically provisioned Quobyte volumes, value is set by the plugin

### fn source.inlineVolumeSpec.quobyte.withUser

```ts
withUser(user)
```

User to map volume access to Defaults to serivceaccount user

### fn source.inlineVolumeSpec.quobyte.withVolume

```ts
withVolume(volume)
```

Volume is a string that references an already created Quobyte volume by name.

## obj source.inlineVolumeSpec.rbd



### fn source.inlineVolumeSpec.rbd.withFsType

```ts
withFsType(fsType)
```

Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#rbd

### fn source.inlineVolumeSpec.rbd.withImage

```ts
withImage(image)
```

The rados image name. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it

### fn source.inlineVolumeSpec.rbd.withKeyring

```ts
withKeyring(keyring)
```

Keyring is the path to key ring for RBDUser. Default is /etc/ceph/keyring. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it

### fn source.inlineVolumeSpec.rbd.withMonitors

```ts
withMonitors(monitors)
```

A collection of Ceph monitors. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it

### fn source.inlineVolumeSpec.rbd.withMonitorsMixin

```ts
withMonitorsMixin(monitors)
```

A collection of Ceph monitors. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it

**Note:** This function appends passed data to existing values

### fn source.inlineVolumeSpec.rbd.withPool

```ts
withPool(pool)
```

The rados pool name. Default is rbd. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it

### fn source.inlineVolumeSpec.rbd.withReadOnly

```ts
withReadOnly(readOnly)
```

ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it

### fn source.inlineVolumeSpec.rbd.withUser

```ts
withUser(user)
```

The rados user name. Default is admin. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it

## obj source.inlineVolumeSpec.rbd.secretRef



### fn source.inlineVolumeSpec.rbd.secretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn source.inlineVolumeSpec.rbd.secretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj source.inlineVolumeSpec.scaleIO



### fn source.inlineVolumeSpec.scaleIO.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Default is "xfs"

### fn source.inlineVolumeSpec.scaleIO.withGateway

```ts
withGateway(gateway)
```

The host address of the ScaleIO API Gateway.

### fn source.inlineVolumeSpec.scaleIO.withProtectionDomain

```ts
withProtectionDomain(protectionDomain)
```

The name of the ScaleIO Protection Domain for the configured storage.

### fn source.inlineVolumeSpec.scaleIO.withReadOnly

```ts
withReadOnly(readOnly)
```

Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.

### fn source.inlineVolumeSpec.scaleIO.withSslEnabled

```ts
withSslEnabled(sslEnabled)
```

Flag to enable/disable SSL communication with Gateway, default false

### fn source.inlineVolumeSpec.scaleIO.withStorageMode

```ts
withStorageMode(storageMode)
```

Indicates whether the storage for a volume should be ThickProvisioned or ThinProvisioned. Default is ThinProvisioned.

### fn source.inlineVolumeSpec.scaleIO.withStoragePool

```ts
withStoragePool(storagePool)
```

The ScaleIO Storage Pool associated with the protection domain.

### fn source.inlineVolumeSpec.scaleIO.withSystem

```ts
withSystem(system)
```

The name of the storage system as configured in ScaleIO.

### fn source.inlineVolumeSpec.scaleIO.withVolumeName

```ts
withVolumeName(volumeName)
```

The name of a volume already created in the ScaleIO system that is associated with this volume source.

## obj source.inlineVolumeSpec.scaleIO.secretRef



### fn source.inlineVolumeSpec.scaleIO.secretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn source.inlineVolumeSpec.scaleIO.secretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj source.inlineVolumeSpec.storageos



### fn source.inlineVolumeSpec.storageos.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.

### fn source.inlineVolumeSpec.storageos.withReadOnly

```ts
withReadOnly(readOnly)
```

Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.

### fn source.inlineVolumeSpec.storageos.withVolumeName

```ts
withVolumeName(volumeName)
```

VolumeName is the human-readable name of the StorageOS volume.  Volume names are only unique within a namespace.

### fn source.inlineVolumeSpec.storageos.withVolumeNamespace

```ts
withVolumeNamespace(volumeNamespace)
```

VolumeNamespace specifies the scope of the volume within StorageOS.  If no namespace is specified then the Pod's namespace will be used.  This allows the Kubernetes name scoping to be mirrored within StorageOS for tighter integration. Set VolumeName to any name to override the default behaviour. Set to 'default' if you are not using namespaces within StorageOS. Namespaces that do not pre-exist within StorageOS will be created.

## obj source.inlineVolumeSpec.storageos.secretRef

ObjectReference contains enough information to let you inspect or modify the referred object.

### fn source.inlineVolumeSpec.storageos.secretRef.withFieldPath

```ts
withFieldPath(fieldPath)
```

If referring to a piece of an object instead of an entire object, this string should contain a valid JSON/Go field access statement, such as desiredState.manifest.containers[2]. For example, if the object reference is to a container within a pod, this would take on a value like: "spec.containers{name}" (where "name" refers to the name of the container that triggered the event) or if no container name is specified "spec.containers[2]" (container with index 2 in this pod). This syntax is chosen only to have some well-defined way of referencing a part of an object.

### fn source.inlineVolumeSpec.storageos.secretRef.withKind

```ts
withKind(kind)
```

Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds

### fn source.inlineVolumeSpec.storageos.secretRef.withName

```ts
withName(name)
```

Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names

### fn source.inlineVolumeSpec.storageos.secretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/

### fn source.inlineVolumeSpec.storageos.secretRef.withResourceVersion

```ts
withResourceVersion(resourceVersion)
```

Specific resourceVersion to which this reference is made, if any. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency

### fn source.inlineVolumeSpec.storageos.secretRef.withUid

```ts
withUid(uid)
```

UID of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids

## obj source.inlineVolumeSpec.vsphereVolume

Represents a vSphere volume resource.

### fn source.inlineVolumeSpec.vsphereVolume.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.

### fn source.inlineVolumeSpec.vsphereVolume.withStoragePolicyID

```ts
withStoragePolicyID(storagePolicyID)
```

Storage Policy Based Management (SPBM) profile ID associated with the StoragePolicyName.

### fn source.inlineVolumeSpec.vsphereVolume.withStoragePolicyName

```ts
withStoragePolicyName(storagePolicyName)
```

Storage Policy Based Management (SPBM) profile name.

### fn source.inlineVolumeSpec.vsphereVolume.withVolumePath

```ts
withVolumePath(volumePath)
```

Path that identifies vSphere volume vmdk