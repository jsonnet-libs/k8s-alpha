---
permalink: /1.17/storage/v1/volumeAttachmentSource/
---

# package volumeAttachmentSource

VolumeAttachmentSource represents a volume that should be attached. Right now only PersistenVolumes can be attached via external attacher, in future we may allow also inline volumes in pods. Exactly one member can be set.

## Index

* [`fn withPersistentVolumeName(persistentVolumeName)`](#fn-withpersistentvolumename)
* [`obj inlineVolumeSpec`](#obj-inlinevolumespec)
  * [`fn withAccessModes(accessModes)`](#fn-inlinevolumespecwithaccessmodes)
  * [`fn withAccessModesMixin(accessModes)`](#fn-inlinevolumespecwithaccessmodesmixin)
  * [`fn withCapacity(capacity)`](#fn-inlinevolumespecwithcapacity)
  * [`fn withCapacityMixin(capacity)`](#fn-inlinevolumespecwithcapacitymixin)
  * [`fn withMountOptions(mountOptions)`](#fn-inlinevolumespecwithmountoptions)
  * [`fn withMountOptionsMixin(mountOptions)`](#fn-inlinevolumespecwithmountoptionsmixin)
  * [`fn withPersistentVolumeReclaimPolicy(persistentVolumeReclaimPolicy)`](#fn-inlinevolumespecwithpersistentvolumereclaimpolicy)
  * [`fn withStorageClassName(storageClassName)`](#fn-inlinevolumespecwithstorageclassname)
  * [`fn withVolumeMode(volumeMode)`](#fn-inlinevolumespecwithvolumemode)
  * [`obj inlineVolumeSpec.awsElasticBlockStore`](#obj-inlinevolumespecawselasticblockstore)
    * [`fn withFsType(fsType)`](#fn-inlinevolumespecawselasticblockstorewithfstype)
    * [`fn withPartition(partition)`](#fn-inlinevolumespecawselasticblockstorewithpartition)
    * [`fn withReadOnly(readOnly)`](#fn-inlinevolumespecawselasticblockstorewithreadonly)
    * [`fn withVolumeID(volumeID)`](#fn-inlinevolumespecawselasticblockstorewithvolumeid)
  * [`obj inlineVolumeSpec.azureDisk`](#obj-inlinevolumespecazuredisk)
    * [`fn withCachingMode(cachingMode)`](#fn-inlinevolumespecazurediskwithcachingmode)
    * [`fn withDiskName(diskName)`](#fn-inlinevolumespecazurediskwithdiskname)
    * [`fn withDiskURI(diskURI)`](#fn-inlinevolumespecazurediskwithdiskuri)
    * [`fn withFsType(fsType)`](#fn-inlinevolumespecazurediskwithfstype)
    * [`fn withKind(kind)`](#fn-inlinevolumespecazurediskwithkind)
    * [`fn withReadOnly(readOnly)`](#fn-inlinevolumespecazurediskwithreadonly)
  * [`obj inlineVolumeSpec.azureFile`](#obj-inlinevolumespecazurefile)
    * [`fn withReadOnly(readOnly)`](#fn-inlinevolumespecazurefilewithreadonly)
    * [`fn withSecretName(secretName)`](#fn-inlinevolumespecazurefilewithsecretname)
    * [`fn withSecretNamespace(secretNamespace)`](#fn-inlinevolumespecazurefilewithsecretnamespace)
    * [`fn withShareName(shareName)`](#fn-inlinevolumespecazurefilewithsharename)
  * [`obj inlineVolumeSpec.cephfs`](#obj-inlinevolumespeccephfs)
    * [`fn withMonitors(monitors)`](#fn-inlinevolumespeccephfswithmonitors)
    * [`fn withMonitorsMixin(monitors)`](#fn-inlinevolumespeccephfswithmonitorsmixin)
    * [`fn withPath(path)`](#fn-inlinevolumespeccephfswithpath)
    * [`fn withReadOnly(readOnly)`](#fn-inlinevolumespeccephfswithreadonly)
    * [`fn withSecretFile(secretFile)`](#fn-inlinevolumespeccephfswithsecretfile)
    * [`fn withUser(user)`](#fn-inlinevolumespeccephfswithuser)
    * [`obj inlineVolumeSpec.cephfs.secretRef`](#obj-inlinevolumespeccephfssecretref)
      * [`fn withName(name)`](#fn-inlinevolumespeccephfssecretrefwithname)
      * [`fn withNamespace(namespace)`](#fn-inlinevolumespeccephfssecretrefwithnamespace)
  * [`obj inlineVolumeSpec.cinder`](#obj-inlinevolumespeccinder)
    * [`fn withFsType(fsType)`](#fn-inlinevolumespeccinderwithfstype)
    * [`fn withReadOnly(readOnly)`](#fn-inlinevolumespeccinderwithreadonly)
    * [`fn withVolumeID(volumeID)`](#fn-inlinevolumespeccinderwithvolumeid)
    * [`obj inlineVolumeSpec.cinder.secretRef`](#obj-inlinevolumespeccindersecretref)
      * [`fn withName(name)`](#fn-inlinevolumespeccindersecretrefwithname)
      * [`fn withNamespace(namespace)`](#fn-inlinevolumespeccindersecretrefwithnamespace)
  * [`obj inlineVolumeSpec.claimRef`](#obj-inlinevolumespecclaimref)
    * [`fn withFieldPath(fieldPath)`](#fn-inlinevolumespecclaimrefwithfieldpath)
    * [`fn withKind(kind)`](#fn-inlinevolumespecclaimrefwithkind)
    * [`fn withName(name)`](#fn-inlinevolumespecclaimrefwithname)
    * [`fn withNamespace(namespace)`](#fn-inlinevolumespecclaimrefwithnamespace)
    * [`fn withResourceVersion(resourceVersion)`](#fn-inlinevolumespecclaimrefwithresourceversion)
    * [`fn withUid(uid)`](#fn-inlinevolumespecclaimrefwithuid)
  * [`obj inlineVolumeSpec.csi`](#obj-inlinevolumespeccsi)
    * [`fn withDriver(driver)`](#fn-inlinevolumespeccsiwithdriver)
    * [`fn withFsType(fsType)`](#fn-inlinevolumespeccsiwithfstype)
    * [`fn withReadOnly(readOnly)`](#fn-inlinevolumespeccsiwithreadonly)
    * [`fn withVolumeAttributes(volumeAttributes)`](#fn-inlinevolumespeccsiwithvolumeattributes)
    * [`fn withVolumeAttributesMixin(volumeAttributes)`](#fn-inlinevolumespeccsiwithvolumeattributesmixin)
    * [`fn withVolumeHandle(volumeHandle)`](#fn-inlinevolumespeccsiwithvolumehandle)
    * [`obj inlineVolumeSpec.csi.controllerExpandSecretRef`](#obj-inlinevolumespeccsicontrollerexpandsecretref)
      * [`fn withName(name)`](#fn-inlinevolumespeccsicontrollerexpandsecretrefwithname)
      * [`fn withNamespace(namespace)`](#fn-inlinevolumespeccsicontrollerexpandsecretrefwithnamespace)
    * [`obj inlineVolumeSpec.csi.controllerPublishSecretRef`](#obj-inlinevolumespeccsicontrollerpublishsecretref)
      * [`fn withName(name)`](#fn-inlinevolumespeccsicontrollerpublishsecretrefwithname)
      * [`fn withNamespace(namespace)`](#fn-inlinevolumespeccsicontrollerpublishsecretrefwithnamespace)
    * [`obj inlineVolumeSpec.csi.nodePublishSecretRef`](#obj-inlinevolumespeccsinodepublishsecretref)
      * [`fn withName(name)`](#fn-inlinevolumespeccsinodepublishsecretrefwithname)
      * [`fn withNamespace(namespace)`](#fn-inlinevolumespeccsinodepublishsecretrefwithnamespace)
    * [`obj inlineVolumeSpec.csi.nodeStageSecretRef`](#obj-inlinevolumespeccsinodestagesecretref)
      * [`fn withName(name)`](#fn-inlinevolumespeccsinodestagesecretrefwithname)
      * [`fn withNamespace(namespace)`](#fn-inlinevolumespeccsinodestagesecretrefwithnamespace)
  * [`obj inlineVolumeSpec.fc`](#obj-inlinevolumespecfc)
    * [`fn withFsType(fsType)`](#fn-inlinevolumespecfcwithfstype)
    * [`fn withLun(lun)`](#fn-inlinevolumespecfcwithlun)
    * [`fn withReadOnly(readOnly)`](#fn-inlinevolumespecfcwithreadonly)
    * [`fn withTargetWWNs(targetWWNs)`](#fn-inlinevolumespecfcwithtargetwwns)
    * [`fn withTargetWWNsMixin(targetWWNs)`](#fn-inlinevolumespecfcwithtargetwwnsmixin)
    * [`fn withWwids(wwids)`](#fn-inlinevolumespecfcwithwwids)
    * [`fn withWwidsMixin(wwids)`](#fn-inlinevolumespecfcwithwwidsmixin)
  * [`obj inlineVolumeSpec.flexVolume`](#obj-inlinevolumespecflexvolume)
    * [`fn withDriver(driver)`](#fn-inlinevolumespecflexvolumewithdriver)
    * [`fn withFsType(fsType)`](#fn-inlinevolumespecflexvolumewithfstype)
    * [`fn withOptions(options)`](#fn-inlinevolumespecflexvolumewithoptions)
    * [`fn withOptionsMixin(options)`](#fn-inlinevolumespecflexvolumewithoptionsmixin)
    * [`fn withReadOnly(readOnly)`](#fn-inlinevolumespecflexvolumewithreadonly)
    * [`obj inlineVolumeSpec.flexVolume.secretRef`](#obj-inlinevolumespecflexvolumesecretref)
      * [`fn withName(name)`](#fn-inlinevolumespecflexvolumesecretrefwithname)
      * [`fn withNamespace(namespace)`](#fn-inlinevolumespecflexvolumesecretrefwithnamespace)
  * [`obj inlineVolumeSpec.flocker`](#obj-inlinevolumespecflocker)
    * [`fn withDatasetName(datasetName)`](#fn-inlinevolumespecflockerwithdatasetname)
    * [`fn withDatasetUUID(datasetUUID)`](#fn-inlinevolumespecflockerwithdatasetuuid)
  * [`obj inlineVolumeSpec.gcePersistentDisk`](#obj-inlinevolumespecgcepersistentdisk)
    * [`fn withFsType(fsType)`](#fn-inlinevolumespecgcepersistentdiskwithfstype)
    * [`fn withPartition(partition)`](#fn-inlinevolumespecgcepersistentdiskwithpartition)
    * [`fn withPdName(pdName)`](#fn-inlinevolumespecgcepersistentdiskwithpdname)
    * [`fn withReadOnly(readOnly)`](#fn-inlinevolumespecgcepersistentdiskwithreadonly)
  * [`obj inlineVolumeSpec.glusterfs`](#obj-inlinevolumespecglusterfs)
    * [`fn withEndpoints(endpoints)`](#fn-inlinevolumespecglusterfswithendpoints)
    * [`fn withEndpointsNamespace(endpointsNamespace)`](#fn-inlinevolumespecglusterfswithendpointsnamespace)
    * [`fn withPath(path)`](#fn-inlinevolumespecglusterfswithpath)
    * [`fn withReadOnly(readOnly)`](#fn-inlinevolumespecglusterfswithreadonly)
  * [`obj inlineVolumeSpec.hostPath`](#obj-inlinevolumespechostpath)
    * [`fn withPath(path)`](#fn-inlinevolumespechostpathwithpath)
    * [`fn withType(type)`](#fn-inlinevolumespechostpathwithtype)
  * [`obj inlineVolumeSpec.iscsi`](#obj-inlinevolumespeciscsi)
    * [`fn withChapAuthDiscovery(chapAuthDiscovery)`](#fn-inlinevolumespeciscsiwithchapauthdiscovery)
    * [`fn withChapAuthSession(chapAuthSession)`](#fn-inlinevolumespeciscsiwithchapauthsession)
    * [`fn withFsType(fsType)`](#fn-inlinevolumespeciscsiwithfstype)
    * [`fn withInitiatorName(initiatorName)`](#fn-inlinevolumespeciscsiwithinitiatorname)
    * [`fn withIqn(iqn)`](#fn-inlinevolumespeciscsiwithiqn)
    * [`fn withIscsiInterface(iscsiInterface)`](#fn-inlinevolumespeciscsiwithiscsiinterface)
    * [`fn withLun(lun)`](#fn-inlinevolumespeciscsiwithlun)
    * [`fn withPortals(portals)`](#fn-inlinevolumespeciscsiwithportals)
    * [`fn withPortalsMixin(portals)`](#fn-inlinevolumespeciscsiwithportalsmixin)
    * [`fn withReadOnly(readOnly)`](#fn-inlinevolumespeciscsiwithreadonly)
    * [`fn withTargetPortal(targetPortal)`](#fn-inlinevolumespeciscsiwithtargetportal)
    * [`obj inlineVolumeSpec.iscsi.secretRef`](#obj-inlinevolumespeciscsisecretref)
      * [`fn withName(name)`](#fn-inlinevolumespeciscsisecretrefwithname)
      * [`fn withNamespace(namespace)`](#fn-inlinevolumespeciscsisecretrefwithnamespace)
  * [`obj inlineVolumeSpec.local`](#obj-inlinevolumespeclocal)
    * [`fn withFsType(fsType)`](#fn-inlinevolumespeclocalwithfstype)
    * [`fn withPath(path)`](#fn-inlinevolumespeclocalwithpath)
  * [`obj inlineVolumeSpec.nfs`](#obj-inlinevolumespecnfs)
    * [`fn withPath(path)`](#fn-inlinevolumespecnfswithpath)
    * [`fn withReadOnly(readOnly)`](#fn-inlinevolumespecnfswithreadonly)
    * [`fn withServer(server)`](#fn-inlinevolumespecnfswithserver)
  * [`obj inlineVolumeSpec.nodeAffinity`](#obj-inlinevolumespecnodeaffinity)
    * [`obj inlineVolumeSpec.nodeAffinity.required`](#obj-inlinevolumespecnodeaffinityrequired)
      * [`fn withNodeSelectorTerms(nodeSelectorTerms)`](#fn-inlinevolumespecnodeaffinityrequiredwithnodeselectorterms)
      * [`fn withNodeSelectorTermsMixin(nodeSelectorTerms)`](#fn-inlinevolumespecnodeaffinityrequiredwithnodeselectortermsmixin)
  * [`obj inlineVolumeSpec.photonPersistentDisk`](#obj-inlinevolumespecphotonpersistentdisk)
    * [`fn withFsType(fsType)`](#fn-inlinevolumespecphotonpersistentdiskwithfstype)
    * [`fn withPdID(pdID)`](#fn-inlinevolumespecphotonpersistentdiskwithpdid)
  * [`obj inlineVolumeSpec.portworxVolume`](#obj-inlinevolumespecportworxvolume)
    * [`fn withFsType(fsType)`](#fn-inlinevolumespecportworxvolumewithfstype)
    * [`fn withReadOnly(readOnly)`](#fn-inlinevolumespecportworxvolumewithreadonly)
    * [`fn withVolumeID(volumeID)`](#fn-inlinevolumespecportworxvolumewithvolumeid)
  * [`obj inlineVolumeSpec.quobyte`](#obj-inlinevolumespecquobyte)
    * [`fn withGroup(group)`](#fn-inlinevolumespecquobytewithgroup)
    * [`fn withReadOnly(readOnly)`](#fn-inlinevolumespecquobytewithreadonly)
    * [`fn withRegistry(registry)`](#fn-inlinevolumespecquobytewithregistry)
    * [`fn withTenant(tenant)`](#fn-inlinevolumespecquobytewithtenant)
    * [`fn withUser(user)`](#fn-inlinevolumespecquobytewithuser)
    * [`fn withVolume(volume)`](#fn-inlinevolumespecquobytewithvolume)
  * [`obj inlineVolumeSpec.rbd`](#obj-inlinevolumespecrbd)
    * [`fn withFsType(fsType)`](#fn-inlinevolumespecrbdwithfstype)
    * [`fn withImage(image)`](#fn-inlinevolumespecrbdwithimage)
    * [`fn withKeyring(keyring)`](#fn-inlinevolumespecrbdwithkeyring)
    * [`fn withMonitors(monitors)`](#fn-inlinevolumespecrbdwithmonitors)
    * [`fn withMonitorsMixin(monitors)`](#fn-inlinevolumespecrbdwithmonitorsmixin)
    * [`fn withPool(pool)`](#fn-inlinevolumespecrbdwithpool)
    * [`fn withReadOnly(readOnly)`](#fn-inlinevolumespecrbdwithreadonly)
    * [`fn withUser(user)`](#fn-inlinevolumespecrbdwithuser)
    * [`obj inlineVolumeSpec.rbd.secretRef`](#obj-inlinevolumespecrbdsecretref)
      * [`fn withName(name)`](#fn-inlinevolumespecrbdsecretrefwithname)
      * [`fn withNamespace(namespace)`](#fn-inlinevolumespecrbdsecretrefwithnamespace)
  * [`obj inlineVolumeSpec.scaleIO`](#obj-inlinevolumespecscaleio)
    * [`fn withFsType(fsType)`](#fn-inlinevolumespecscaleiowithfstype)
    * [`fn withGateway(gateway)`](#fn-inlinevolumespecscaleiowithgateway)
    * [`fn withProtectionDomain(protectionDomain)`](#fn-inlinevolumespecscaleiowithprotectiondomain)
    * [`fn withReadOnly(readOnly)`](#fn-inlinevolumespecscaleiowithreadonly)
    * [`fn withSslEnabled(sslEnabled)`](#fn-inlinevolumespecscaleiowithsslenabled)
    * [`fn withStorageMode(storageMode)`](#fn-inlinevolumespecscaleiowithstoragemode)
    * [`fn withStoragePool(storagePool)`](#fn-inlinevolumespecscaleiowithstoragepool)
    * [`fn withSystem(system)`](#fn-inlinevolumespecscaleiowithsystem)
    * [`fn withVolumeName(volumeName)`](#fn-inlinevolumespecscaleiowithvolumename)
    * [`obj inlineVolumeSpec.scaleIO.secretRef`](#obj-inlinevolumespecscaleiosecretref)
      * [`fn withName(name)`](#fn-inlinevolumespecscaleiosecretrefwithname)
      * [`fn withNamespace(namespace)`](#fn-inlinevolumespecscaleiosecretrefwithnamespace)
  * [`obj inlineVolumeSpec.storageos`](#obj-inlinevolumespecstorageos)
    * [`fn withFsType(fsType)`](#fn-inlinevolumespecstorageoswithfstype)
    * [`fn withReadOnly(readOnly)`](#fn-inlinevolumespecstorageoswithreadonly)
    * [`fn withVolumeName(volumeName)`](#fn-inlinevolumespecstorageoswithvolumename)
    * [`fn withVolumeNamespace(volumeNamespace)`](#fn-inlinevolumespecstorageoswithvolumenamespace)
    * [`obj inlineVolumeSpec.storageos.secretRef`](#obj-inlinevolumespecstorageossecretref)
      * [`fn withFieldPath(fieldPath)`](#fn-inlinevolumespecstorageossecretrefwithfieldpath)
      * [`fn withKind(kind)`](#fn-inlinevolumespecstorageossecretrefwithkind)
      * [`fn withName(name)`](#fn-inlinevolumespecstorageossecretrefwithname)
      * [`fn withNamespace(namespace)`](#fn-inlinevolumespecstorageossecretrefwithnamespace)
      * [`fn withResourceVersion(resourceVersion)`](#fn-inlinevolumespecstorageossecretrefwithresourceversion)
      * [`fn withUid(uid)`](#fn-inlinevolumespecstorageossecretrefwithuid)
  * [`obj inlineVolumeSpec.vsphereVolume`](#obj-inlinevolumespecvspherevolume)
    * [`fn withFsType(fsType)`](#fn-inlinevolumespecvspherevolumewithfstype)
    * [`fn withStoragePolicyID(storagePolicyID)`](#fn-inlinevolumespecvspherevolumewithstoragepolicyid)
    * [`fn withStoragePolicyName(storagePolicyName)`](#fn-inlinevolumespecvspherevolumewithstoragepolicyname)
    * [`fn withVolumePath(volumePath)`](#fn-inlinevolumespecvspherevolumewithvolumepath)

## Fields

### fn withPersistentVolumeName

```ts
withPersistentVolumeName(persistentVolumeName)
```

Name of the persistent volume to attach.

## obj inlineVolumeSpec

PersistentVolumeSpec is the specification of a persistent volume.

### fn inlineVolumeSpec.withAccessModes

```ts
withAccessModes(accessModes)
```

AccessModes contains all ways the volume can be mounted. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes

### fn inlineVolumeSpec.withAccessModesMixin

```ts
withAccessModesMixin(accessModes)
```

AccessModes contains all ways the volume can be mounted. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes

**Note:** This function appends passed data to existing values

### fn inlineVolumeSpec.withCapacity

```ts
withCapacity(capacity)
```

A description of the persistent volume's resources and capacity. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity

### fn inlineVolumeSpec.withCapacityMixin

```ts
withCapacityMixin(capacity)
```

A description of the persistent volume's resources and capacity. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity

**Note:** This function appends passed data to existing values

### fn inlineVolumeSpec.withMountOptions

```ts
withMountOptions(mountOptions)
```

A list of mount options, e.g. ["ro", "soft"]. Not validated - mount will simply fail if one is invalid. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options

### fn inlineVolumeSpec.withMountOptionsMixin

```ts
withMountOptionsMixin(mountOptions)
```

A list of mount options, e.g. ["ro", "soft"]. Not validated - mount will simply fail if one is invalid. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options

**Note:** This function appends passed data to existing values

### fn inlineVolumeSpec.withPersistentVolumeReclaimPolicy

```ts
withPersistentVolumeReclaimPolicy(persistentVolumeReclaimPolicy)
```

What happens to a persistent volume when released from its claim. Valid options are Retain (default for manually created PersistentVolumes), Delete (default for dynamically provisioned PersistentVolumes), and Recycle (deprecated). Recycle must be supported by the volume plugin underlying this PersistentVolume. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming

### fn inlineVolumeSpec.withStorageClassName

```ts
withStorageClassName(storageClassName)
```

Name of StorageClass to which this persistent volume belongs. Empty value means that this volume does not belong to any StorageClass.

### fn inlineVolumeSpec.withVolumeMode

```ts
withVolumeMode(volumeMode)
```

volumeMode defines if a volume is intended to be used with a formatted filesystem or to remain in raw block state. Value of Filesystem is implied when not included in spec. This is a beta feature.

## obj inlineVolumeSpec.awsElasticBlockStore

Represents a Persistent Disk resource in AWS.

An AWS EBS disk must exist before mounting to a container. The disk must also be in the same AWS zone as the kubelet. An AWS EBS disk can only be mounted as read/write once. AWS EBS volumes support ownership management and SELinux relabeling.

### fn inlineVolumeSpec.awsElasticBlockStore.withFsType

```ts
withFsType(fsType)
```

Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore

### fn inlineVolumeSpec.awsElasticBlockStore.withPartition

```ts
withPartition(partition)
```

The partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as "1". Similarly, the volume partition for /dev/sda is "0" (or you can leave the property empty).

### fn inlineVolumeSpec.awsElasticBlockStore.withReadOnly

```ts
withReadOnly(readOnly)
```

Specify "true" to force and set the ReadOnly property in VolumeMounts to "true". If omitted, the default is "false". More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore

### fn inlineVolumeSpec.awsElasticBlockStore.withVolumeID

```ts
withVolumeID(volumeID)
```

Unique ID of the persistent disk resource in AWS (Amazon EBS volume). More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore

## obj inlineVolumeSpec.azureDisk

AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.

### fn inlineVolumeSpec.azureDisk.withCachingMode

```ts
withCachingMode(cachingMode)
```

Host Caching mode: None, Read Only, Read Write.

### fn inlineVolumeSpec.azureDisk.withDiskName

```ts
withDiskName(diskName)
```

The Name of the data disk in the blob storage

### fn inlineVolumeSpec.azureDisk.withDiskURI

```ts
withDiskURI(diskURI)
```

The URI the data disk in the blob storage

### fn inlineVolumeSpec.azureDisk.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.

### fn inlineVolumeSpec.azureDisk.withKind

```ts
withKind(kind)
```

Expected values Shared: multiple blob disks per storage account  Dedicated: single blob disk per storage account  Managed: azure managed data disk (only in managed availability set). defaults to shared

### fn inlineVolumeSpec.azureDisk.withReadOnly

```ts
withReadOnly(readOnly)
```

Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.

## obj inlineVolumeSpec.azureFile



### fn inlineVolumeSpec.azureFile.withReadOnly

```ts
withReadOnly(readOnly)
```

Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.

### fn inlineVolumeSpec.azureFile.withSecretName

```ts
withSecretName(secretName)
```

the name of secret that contains Azure Storage Account Name and Key

### fn inlineVolumeSpec.azureFile.withSecretNamespace

```ts
withSecretNamespace(secretNamespace)
```

the namespace of the secret that contains Azure Storage Account Name and Key default is the same as the Pod

### fn inlineVolumeSpec.azureFile.withShareName

```ts
withShareName(shareName)
```

Share Name

## obj inlineVolumeSpec.cephfs



### fn inlineVolumeSpec.cephfs.withMonitors

```ts
withMonitors(monitors)
```

Required: Monitors is a collection of Ceph monitors More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it

### fn inlineVolumeSpec.cephfs.withMonitorsMixin

```ts
withMonitorsMixin(monitors)
```

Required: Monitors is a collection of Ceph monitors More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it

**Note:** This function appends passed data to existing values

### fn inlineVolumeSpec.cephfs.withPath

```ts
withPath(path)
```

Optional: Used as the mounted root, rather than the full Ceph tree, default is /

### fn inlineVolumeSpec.cephfs.withReadOnly

```ts
withReadOnly(readOnly)
```

Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it

### fn inlineVolumeSpec.cephfs.withSecretFile

```ts
withSecretFile(secretFile)
```

Optional: SecretFile is the path to key ring for User, default is /etc/ceph/user.secret More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it

### fn inlineVolumeSpec.cephfs.withUser

```ts
withUser(user)
```

Optional: User is the rados user name, default is admin More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it

## obj inlineVolumeSpec.cephfs.secretRef

SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace

### fn inlineVolumeSpec.cephfs.secretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn inlineVolumeSpec.cephfs.secretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj inlineVolumeSpec.cinder

Represents a cinder volume resource in Openstack. A Cinder volume must exist before mounting to a container. The volume must also be in the same region as the kubelet. Cinder volumes support ownership management and SELinux relabeling.

### fn inlineVolumeSpec.cinder.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://examples.k8s.io/mysql-cinder-pd/README.md

### fn inlineVolumeSpec.cinder.withReadOnly

```ts
withReadOnly(readOnly)
```

Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/mysql-cinder-pd/README.md

### fn inlineVolumeSpec.cinder.withVolumeID

```ts
withVolumeID(volumeID)
```

volume id used to identify the volume in cinder. More info: https://examples.k8s.io/mysql-cinder-pd/README.md

## obj inlineVolumeSpec.cinder.secretRef



### fn inlineVolumeSpec.cinder.secretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn inlineVolumeSpec.cinder.secretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj inlineVolumeSpec.claimRef



### fn inlineVolumeSpec.claimRef.withFieldPath

```ts
withFieldPath(fieldPath)
```

If referring to a piece of an object instead of an entire object, this string should contain a valid JSON/Go field access statement, such as desiredState.manifest.containers[2]. For example, if the object reference is to a container within a pod, this would take on a value like: "spec.containers{name}" (where "name" refers to the name of the container that triggered the event) or if no container name is specified "spec.containers[2]" (container with index 2 in this pod). This syntax is chosen only to have some well-defined way of referencing a part of an object.

### fn inlineVolumeSpec.claimRef.withKind

```ts
withKind(kind)
```

Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds

### fn inlineVolumeSpec.claimRef.withName

```ts
withName(name)
```

Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names

### fn inlineVolumeSpec.claimRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/

### fn inlineVolumeSpec.claimRef.withResourceVersion

```ts
withResourceVersion(resourceVersion)
```

Specific resourceVersion to which this reference is made, if any. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency

### fn inlineVolumeSpec.claimRef.withUid

```ts
withUid(uid)
```

UID of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids

## obj inlineVolumeSpec.csi



### fn inlineVolumeSpec.csi.withDriver

```ts
withDriver(driver)
```

Driver is the name of the driver to use for this volume. Required.

### fn inlineVolumeSpec.csi.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs".

### fn inlineVolumeSpec.csi.withReadOnly

```ts
withReadOnly(readOnly)
```

Optional: The value to pass to ControllerPublishVolumeRequest. Defaults to false (read/write).

### fn inlineVolumeSpec.csi.withVolumeAttributes

```ts
withVolumeAttributes(volumeAttributes)
```

Attributes of the volume to publish.

### fn inlineVolumeSpec.csi.withVolumeAttributesMixin

```ts
withVolumeAttributesMixin(volumeAttributes)
```

Attributes of the volume to publish.

**Note:** This function appends passed data to existing values

### fn inlineVolumeSpec.csi.withVolumeHandle

```ts
withVolumeHandle(volumeHandle)
```

VolumeHandle is the unique volume name returned by the CSI volume plugin’s CreateVolume to refer to the volume on all subsequent calls. Required.

## obj inlineVolumeSpec.csi.controllerExpandSecretRef

SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace

### fn inlineVolumeSpec.csi.controllerExpandSecretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn inlineVolumeSpec.csi.controllerExpandSecretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj inlineVolumeSpec.csi.controllerPublishSecretRef

SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace

### fn inlineVolumeSpec.csi.controllerPublishSecretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn inlineVolumeSpec.csi.controllerPublishSecretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj inlineVolumeSpec.csi.nodePublishSecretRef

SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace

### fn inlineVolumeSpec.csi.nodePublishSecretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn inlineVolumeSpec.csi.nodePublishSecretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj inlineVolumeSpec.csi.nodeStageSecretRef

SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace

### fn inlineVolumeSpec.csi.nodeStageSecretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn inlineVolumeSpec.csi.nodeStageSecretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj inlineVolumeSpec.fc



### fn inlineVolumeSpec.fc.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.

### fn inlineVolumeSpec.fc.withLun

```ts
withLun(lun)
```

Optional: FC target lun number

### fn inlineVolumeSpec.fc.withReadOnly

```ts
withReadOnly(readOnly)
```

Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.

### fn inlineVolumeSpec.fc.withTargetWWNs

```ts
withTargetWWNs(targetWWNs)
```

Optional: FC target worldwide names (WWNs)

### fn inlineVolumeSpec.fc.withTargetWWNsMixin

```ts
withTargetWWNsMixin(targetWWNs)
```

Optional: FC target worldwide names (WWNs)

**Note:** This function appends passed data to existing values

### fn inlineVolumeSpec.fc.withWwids

```ts
withWwids(wwids)
```

Optional: FC volume world wide identifiers (wwids) Either wwids or combination of targetWWNs and lun must be set, but not both simultaneously.

### fn inlineVolumeSpec.fc.withWwidsMixin

```ts
withWwidsMixin(wwids)
```

Optional: FC volume world wide identifiers (wwids) Either wwids or combination of targetWWNs and lun must be set, but not both simultaneously.

**Note:** This function appends passed data to existing values

## obj inlineVolumeSpec.flexVolume



### fn inlineVolumeSpec.flexVolume.withDriver

```ts
withDriver(driver)
```

Driver is the name of the driver to use for this volume.

### fn inlineVolumeSpec.flexVolume.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". The default filesystem depends on FlexVolume script.

### fn inlineVolumeSpec.flexVolume.withOptions

```ts
withOptions(options)
```

Optional: Extra command options if any.

### fn inlineVolumeSpec.flexVolume.withOptionsMixin

```ts
withOptionsMixin(options)
```

Optional: Extra command options if any.

**Note:** This function appends passed data to existing values

### fn inlineVolumeSpec.flexVolume.withReadOnly

```ts
withReadOnly(readOnly)
```

Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.

## obj inlineVolumeSpec.flexVolume.secretRef

SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace

### fn inlineVolumeSpec.flexVolume.secretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn inlineVolumeSpec.flexVolume.secretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj inlineVolumeSpec.flocker

Represents a Flocker volume mounted by the Flocker agent. One and only one of datasetName and datasetUUID should be set. Flocker volumes do not support ownership management or SELinux relabeling.

### fn inlineVolumeSpec.flocker.withDatasetName

```ts
withDatasetName(datasetName)
```

Name of the dataset stored as metadata -> name on the dataset for Flocker should be considered as deprecated

### fn inlineVolumeSpec.flocker.withDatasetUUID

```ts
withDatasetUUID(datasetUUID)
```

UUID of the dataset. This is unique identifier of a Flocker dataset

## obj inlineVolumeSpec.gcePersistentDisk



### fn inlineVolumeSpec.gcePersistentDisk.withFsType

```ts
withFsType(fsType)
```

Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk

### fn inlineVolumeSpec.gcePersistentDisk.withPartition

```ts
withPartition(partition)
```

The partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as "1". Similarly, the volume partition for /dev/sda is "0" (or you can leave the property empty). More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk

### fn inlineVolumeSpec.gcePersistentDisk.withPdName

```ts
withPdName(pdName)
```

Unique name of the PD resource in GCE. Used to identify the disk in GCE. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk

### fn inlineVolumeSpec.gcePersistentDisk.withReadOnly

```ts
withReadOnly(readOnly)
```

ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk

## obj inlineVolumeSpec.glusterfs

Represents a Glusterfs mount that lasts the lifetime of a pod. Glusterfs volumes do not support ownership management or SELinux relabeling.

### fn inlineVolumeSpec.glusterfs.withEndpoints

```ts
withEndpoints(endpoints)
```

EndpointsName is the endpoint name that details Glusterfs topology. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod

### fn inlineVolumeSpec.glusterfs.withEndpointsNamespace

```ts
withEndpointsNamespace(endpointsNamespace)
```

EndpointsNamespace is the namespace that contains Glusterfs endpoint. If this field is empty, the EndpointNamespace defaults to the same namespace as the bound PVC. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod

### fn inlineVolumeSpec.glusterfs.withPath

```ts
withPath(path)
```

Path is the Glusterfs volume path. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod

### fn inlineVolumeSpec.glusterfs.withReadOnly

```ts
withReadOnly(readOnly)
```

ReadOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod

## obj inlineVolumeSpec.hostPath

Represents a host path mapped into a pod. Host path volumes do not support ownership management or SELinux relabeling.

### fn inlineVolumeSpec.hostPath.withPath

```ts
withPath(path)
```

Path of the directory on the host. If the path is a symlink, it will follow the link to the real path. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath

### fn inlineVolumeSpec.hostPath.withType

```ts
withType(type)
```

Type for HostPath Volume Defaults to "" More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath

## obj inlineVolumeSpec.iscsi

ISCSIPersistentVolumeSource represents an ISCSI disk. ISCSI volumes can only be mounted as read/write once. ISCSI volumes support ownership management and SELinux relabeling.

### fn inlineVolumeSpec.iscsi.withChapAuthDiscovery

```ts
withChapAuthDiscovery(chapAuthDiscovery)
```

whether support iSCSI Discovery CHAP authentication

### fn inlineVolumeSpec.iscsi.withChapAuthSession

```ts
withChapAuthSession(chapAuthSession)
```

whether support iSCSI Session CHAP authentication

### fn inlineVolumeSpec.iscsi.withFsType

```ts
withFsType(fsType)
```

Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#iscsi

### fn inlineVolumeSpec.iscsi.withInitiatorName

```ts
withInitiatorName(initiatorName)
```

Custom iSCSI Initiator Name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be created for the connection.

### fn inlineVolumeSpec.iscsi.withIqn

```ts
withIqn(iqn)
```

Target iSCSI Qualified Name.

### fn inlineVolumeSpec.iscsi.withIscsiInterface

```ts
withIscsiInterface(iscsiInterface)
```

iSCSI Interface Name that uses an iSCSI transport. Defaults to 'default' (tcp).

### fn inlineVolumeSpec.iscsi.withLun

```ts
withLun(lun)
```

iSCSI Target Lun number.

### fn inlineVolumeSpec.iscsi.withPortals

```ts
withPortals(portals)
```

iSCSI Target Portal List. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).

### fn inlineVolumeSpec.iscsi.withPortalsMixin

```ts
withPortalsMixin(portals)
```

iSCSI Target Portal List. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).

**Note:** This function appends passed data to existing values

### fn inlineVolumeSpec.iscsi.withReadOnly

```ts
withReadOnly(readOnly)
```

ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false.

### fn inlineVolumeSpec.iscsi.withTargetPortal

```ts
withTargetPortal(targetPortal)
```

iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).

## obj inlineVolumeSpec.iscsi.secretRef



### fn inlineVolumeSpec.iscsi.secretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn inlineVolumeSpec.iscsi.secretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj inlineVolumeSpec.local

Local represents directly-attached storage with node affinity (Beta feature)

### fn inlineVolumeSpec.local.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. It applies only when the Path is a block device. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". The default value is to auto-select a fileystem if unspecified.

### fn inlineVolumeSpec.local.withPath

```ts
withPath(path)
```

The full path to the volume on the node. It can be either a directory or block device (disk, partition, ...).

## obj inlineVolumeSpec.nfs



### fn inlineVolumeSpec.nfs.withPath

```ts
withPath(path)
```

Path that is exported by the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs

### fn inlineVolumeSpec.nfs.withReadOnly

```ts
withReadOnly(readOnly)
```

ReadOnly here will force the NFS export to be mounted with read-only permissions. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs

### fn inlineVolumeSpec.nfs.withServer

```ts
withServer(server)
```

Server is the hostname or IP address of the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs

## obj inlineVolumeSpec.nodeAffinity



## obj inlineVolumeSpec.nodeAffinity.required

A node selector represents the union of the results of one or more label queries over a set of nodes; that is, it represents the OR of the selectors represented by the node selector terms.

### fn inlineVolumeSpec.nodeAffinity.required.withNodeSelectorTerms

```ts
withNodeSelectorTerms(nodeSelectorTerms)
```

Required. A list of node selector terms. The terms are ORed.

### fn inlineVolumeSpec.nodeAffinity.required.withNodeSelectorTermsMixin

```ts
withNodeSelectorTermsMixin(nodeSelectorTerms)
```

Required. A list of node selector terms. The terms are ORed.

**Note:** This function appends passed data to existing values

## obj inlineVolumeSpec.photonPersistentDisk



### fn inlineVolumeSpec.photonPersistentDisk.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.

### fn inlineVolumeSpec.photonPersistentDisk.withPdID

```ts
withPdID(pdID)
```

ID that identifies Photon Controller persistent disk

## obj inlineVolumeSpec.portworxVolume

PortworxVolumeSource represents a Portworx volume resource.

### fn inlineVolumeSpec.portworxVolume.withFsType

```ts
withFsType(fsType)
```

FSType represents the filesystem type to mount Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs". Implicitly inferred to be "ext4" if unspecified.

### fn inlineVolumeSpec.portworxVolume.withReadOnly

```ts
withReadOnly(readOnly)
```

Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.

### fn inlineVolumeSpec.portworxVolume.withVolumeID

```ts
withVolumeID(volumeID)
```

VolumeID uniquely identifies a Portworx volume

## obj inlineVolumeSpec.quobyte

Represents a Quobyte mount that lasts the lifetime of a pod. Quobyte volumes do not support ownership management or SELinux relabeling.

### fn inlineVolumeSpec.quobyte.withGroup

```ts
withGroup(group)
```

Group to map volume access to Default is no group

### fn inlineVolumeSpec.quobyte.withReadOnly

```ts
withReadOnly(readOnly)
```

ReadOnly here will force the Quobyte volume to be mounted with read-only permissions. Defaults to false.

### fn inlineVolumeSpec.quobyte.withRegistry

```ts
withRegistry(registry)
```

Registry represents a single or multiple Quobyte Registry services specified as a string as host:port pair (multiple entries are separated with commas) which acts as the central registry for volumes

### fn inlineVolumeSpec.quobyte.withTenant

```ts
withTenant(tenant)
```

Tenant owning the given Quobyte volume in the Backend Used with dynamically provisioned Quobyte volumes, value is set by the plugin

### fn inlineVolumeSpec.quobyte.withUser

```ts
withUser(user)
```

User to map volume access to Defaults to serivceaccount user

### fn inlineVolumeSpec.quobyte.withVolume

```ts
withVolume(volume)
```

Volume is a string that references an already created Quobyte volume by name.

## obj inlineVolumeSpec.rbd



### fn inlineVolumeSpec.rbd.withFsType

```ts
withFsType(fsType)
```

Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#rbd

### fn inlineVolumeSpec.rbd.withImage

```ts
withImage(image)
```

The rados image name. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it

### fn inlineVolumeSpec.rbd.withKeyring

```ts
withKeyring(keyring)
```

Keyring is the path to key ring for RBDUser. Default is /etc/ceph/keyring. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it

### fn inlineVolumeSpec.rbd.withMonitors

```ts
withMonitors(monitors)
```

A collection of Ceph monitors. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it

### fn inlineVolumeSpec.rbd.withMonitorsMixin

```ts
withMonitorsMixin(monitors)
```

A collection of Ceph monitors. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it

**Note:** This function appends passed data to existing values

### fn inlineVolumeSpec.rbd.withPool

```ts
withPool(pool)
```

The rados pool name. Default is rbd. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it

### fn inlineVolumeSpec.rbd.withReadOnly

```ts
withReadOnly(readOnly)
```

ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it

### fn inlineVolumeSpec.rbd.withUser

```ts
withUser(user)
```

The rados user name. Default is admin. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it

## obj inlineVolumeSpec.rbd.secretRef



### fn inlineVolumeSpec.rbd.secretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn inlineVolumeSpec.rbd.secretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj inlineVolumeSpec.scaleIO

ScaleIOPersistentVolumeSource represents a persistent ScaleIO volume

### fn inlineVolumeSpec.scaleIO.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Default is "xfs"

### fn inlineVolumeSpec.scaleIO.withGateway

```ts
withGateway(gateway)
```

The host address of the ScaleIO API Gateway.

### fn inlineVolumeSpec.scaleIO.withProtectionDomain

```ts
withProtectionDomain(protectionDomain)
```

The name of the ScaleIO Protection Domain for the configured storage.

### fn inlineVolumeSpec.scaleIO.withReadOnly

```ts
withReadOnly(readOnly)
```

Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.

### fn inlineVolumeSpec.scaleIO.withSslEnabled

```ts
withSslEnabled(sslEnabled)
```

Flag to enable/disable SSL communication with Gateway, default false

### fn inlineVolumeSpec.scaleIO.withStorageMode

```ts
withStorageMode(storageMode)
```

Indicates whether the storage for a volume should be ThickProvisioned or ThinProvisioned. Default is ThinProvisioned.

### fn inlineVolumeSpec.scaleIO.withStoragePool

```ts
withStoragePool(storagePool)
```

The ScaleIO Storage Pool associated with the protection domain.

### fn inlineVolumeSpec.scaleIO.withSystem

```ts
withSystem(system)
```

The name of the storage system as configured in ScaleIO.

### fn inlineVolumeSpec.scaleIO.withVolumeName

```ts
withVolumeName(volumeName)
```

The name of a volume already created in the ScaleIO system that is associated with this volume source.

## obj inlineVolumeSpec.scaleIO.secretRef



### fn inlineVolumeSpec.scaleIO.secretRef.withName

```ts
withName(name)
```

Name is unique within a namespace to reference a secret resource.

### fn inlineVolumeSpec.scaleIO.secretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace defines the space within which the secret name must be unique.

## obj inlineVolumeSpec.storageos



### fn inlineVolumeSpec.storageos.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.

### fn inlineVolumeSpec.storageos.withReadOnly

```ts
withReadOnly(readOnly)
```

Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.

### fn inlineVolumeSpec.storageos.withVolumeName

```ts
withVolumeName(volumeName)
```

VolumeName is the human-readable name of the StorageOS volume.  Volume names are only unique within a namespace.

### fn inlineVolumeSpec.storageos.withVolumeNamespace

```ts
withVolumeNamespace(volumeNamespace)
```

VolumeNamespace specifies the scope of the volume within StorageOS.  If no namespace is specified then the Pod's namespace will be used.  This allows the Kubernetes name scoping to be mirrored within StorageOS for tighter integration. Set VolumeName to any name to override the default behaviour. Set to 'default' if you are not using namespaces within StorageOS. Namespaces that do not pre-exist within StorageOS will be created.

## obj inlineVolumeSpec.storageos.secretRef

ObjectReference contains enough information to let you inspect or modify the referred object.

### fn inlineVolumeSpec.storageos.secretRef.withFieldPath

```ts
withFieldPath(fieldPath)
```

If referring to a piece of an object instead of an entire object, this string should contain a valid JSON/Go field access statement, such as desiredState.manifest.containers[2]. For example, if the object reference is to a container within a pod, this would take on a value like: "spec.containers{name}" (where "name" refers to the name of the container that triggered the event) or if no container name is specified "spec.containers[2]" (container with index 2 in this pod). This syntax is chosen only to have some well-defined way of referencing a part of an object.

### fn inlineVolumeSpec.storageos.secretRef.withKind

```ts
withKind(kind)
```

Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds

### fn inlineVolumeSpec.storageos.secretRef.withName

```ts
withName(name)
```

Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names

### fn inlineVolumeSpec.storageos.secretRef.withNamespace

```ts
withNamespace(namespace)
```

Namespace of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/

### fn inlineVolumeSpec.storageos.secretRef.withResourceVersion

```ts
withResourceVersion(resourceVersion)
```

Specific resourceVersion to which this reference is made, if any. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency

### fn inlineVolumeSpec.storageos.secretRef.withUid

```ts
withUid(uid)
```

UID of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids

## obj inlineVolumeSpec.vsphereVolume



### fn inlineVolumeSpec.vsphereVolume.withFsType

```ts
withFsType(fsType)
```

Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.

### fn inlineVolumeSpec.vsphereVolume.withStoragePolicyID

```ts
withStoragePolicyID(storagePolicyID)
```

Storage Policy Based Management (SPBM) profile ID associated with the StoragePolicyName.

### fn inlineVolumeSpec.vsphereVolume.withStoragePolicyName

```ts
withStoragePolicyName(storagePolicyName)
```

Storage Policy Based Management (SPBM) profile name.

### fn inlineVolumeSpec.vsphereVolume.withVolumePath

```ts
withVolumePath(volumePath)
```

Path that identifies vSphere volume vmdk