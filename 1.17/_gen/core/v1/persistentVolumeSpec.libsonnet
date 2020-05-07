{
  // Represents a Persistent Disk resource in AWS.
  // 
  // An AWS EBS disk must exist before mounting to a container. The disk must also be in the same AWS zone as the kubelet. An AWS EBS disk can only be mounted as read/write once. AWS EBS volumes support ownership management and SELinux relabeling.
  awsElasticBlockStore: {
    withFsType(fsType): { awsElasticBlockStore+: { fsType: fsType } },
    withPartition(partition): { awsElasticBlockStore+: { partition: partition } },
    withReadOnly(readOnly): { awsElasticBlockStore+: { readOnly: readOnly } },
    withVolumeID(volumeID): { awsElasticBlockStore+: { volumeID: volumeID } }
  },
  // AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
  azureDisk: {
    withCachingMode(cachingMode): { azureDisk+: { cachingMode: cachingMode } },
    withDiskName(diskName): { azureDisk+: { diskName: diskName } },
    withDiskURI(diskURI): { azureDisk+: { diskURI: diskURI } },
    withFsType(fsType): { azureDisk+: { fsType: fsType } },
    withKind(kind): { azureDisk+: { kind: kind } },
    withReadOnly(readOnly): { azureDisk+: { readOnly: readOnly } }
  },
  // AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
  azureFile: {
    withReadOnly(readOnly): { azureFile+: { readOnly: readOnly } },
    withSecretName(secretName): { azureFile+: { secretName: secretName } },
    withSecretNamespace(secretNamespace): { azureFile+: { secretNamespace: secretNamespace } },
    withShareName(shareName): { azureFile+: { shareName: shareName } }
  },
  // Represents a Ceph Filesystem mount that lasts the lifetime of a pod Cephfs volumes do not support ownership management or SELinux relabeling.
  cephfs: {
    // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
    secretRef: {
      withName(name): { cephfs+: { secretRef+: { name: name } } },
      withNamespace(namespace): { cephfs+: { secretRef+: { namespace: namespace } } }
    },
    withMonitors(monitors): { cephfs+: { monitors: if std.isArray(v=monitors) then monitors else [monitors] } },
    withMonitorsMixin(monitors): { cephfs+: { monitors+: if std.isArray(v=monitors) then monitors else [monitors] } },
    withPath(path): { cephfs+: { path: path } },
    withReadOnly(readOnly): { cephfs+: { readOnly: readOnly } },
    withSecretFile(secretFile): { cephfs+: { secretFile: secretFile } },
    withUser(user): { cephfs+: { user: user } }
  },
  // Represents a cinder volume resource in Openstack. A Cinder volume must exist before mounting to a container. The volume must also be in the same region as the kubelet. Cinder volumes support ownership management and SELinux relabeling.
  cinder: {
    // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
    secretRef: {
      withName(name): { cinder+: { secretRef+: { name: name } } },
      withNamespace(namespace): { cinder+: { secretRef+: { namespace: namespace } } }
    },
    withFsType(fsType): { cinder+: { fsType: fsType } },
    withReadOnly(readOnly): { cinder+: { readOnly: readOnly } },
    withVolumeID(volumeID): { cinder+: { volumeID: volumeID } }
  },
  // ObjectReference contains enough information to let you inspect or modify the referred object.
  claimRef: {
    withFieldPath(fieldPath): { claimRef+: { fieldPath: fieldPath } },
    withKind(kind): { claimRef+: { kind: kind } },
    withName(name): { claimRef+: { name: name } },
    withNamespace(namespace): { claimRef+: { namespace: namespace } },
    withResourceVersion(resourceVersion): { claimRef+: { resourceVersion: resourceVersion } },
    withUid(uid): { claimRef+: { uid: uid } }
  },
  // Represents storage that is managed by an external CSI volume driver (Beta feature)
  csi: {
    // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
    controllerExpandSecretRef: {
      withName(name): { csi+: { controllerExpandSecretRef+: { name: name } } },
      withNamespace(namespace): { csi+: { controllerExpandSecretRef+: { namespace: namespace } } }
    },
    // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
    controllerPublishSecretRef: {
      withName(name): { csi+: { controllerPublishSecretRef+: { name: name } } },
      withNamespace(namespace): { csi+: { controllerPublishSecretRef+: { namespace: namespace } } }
    },
    // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
    nodePublishSecretRef: {
      withName(name): { csi+: { nodePublishSecretRef+: { name: name } } },
      withNamespace(namespace): { csi+: { nodePublishSecretRef+: { namespace: namespace } } }
    },
    // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
    nodeStageSecretRef: {
      withName(name): { csi+: { nodeStageSecretRef+: { name: name } } },
      withNamespace(namespace): { csi+: { nodeStageSecretRef+: { namespace: namespace } } }
    },
    withDriver(driver): { csi+: { driver: driver } },
    withFsType(fsType): { csi+: { fsType: fsType } },
    withReadOnly(readOnly): { csi+: { readOnly: readOnly } },
    withVolumeAttributes(volumeAttributes): { csi+: { volumeAttributes: volumeAttributes } },
    withVolumeAttributesMixin(volumeAttributes): { csi+: { volumeAttributes+: volumeAttributes } },
    withVolumeHandle(volumeHandle): { csi+: { volumeHandle: volumeHandle } }
  },
  // Represents a Fibre Channel volume. Fibre Channel volumes can only be mounted as read/write once. Fibre Channel volumes support ownership management and SELinux relabeling.
  fc: {
    withFsType(fsType): { fc+: { fsType: fsType } },
    withLun(lun): { fc+: { lun: lun } },
    withReadOnly(readOnly): { fc+: { readOnly: readOnly } },
    withTargetWWNs(targetWWNs): { fc+: { targetWWNs: if std.isArray(v=targetWWNs) then targetWWNs else [targetWWNs] } },
    withTargetWWNsMixin(targetWWNs): { fc+: { targetWWNs+: if std.isArray(v=targetWWNs) then targetWWNs else [targetWWNs] } },
    withWwids(wwids): { fc+: { wwids: if std.isArray(v=wwids) then wwids else [wwids] } },
    withWwidsMixin(wwids): { fc+: { wwids+: if std.isArray(v=wwids) then wwids else [wwids] } }
  },
  // FlexPersistentVolumeSource represents a generic persistent volume resource that is provisioned/attached using an exec based plugin.
  flexVolume: {
    // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
    secretRef: {
      withName(name): { flexVolume+: { secretRef+: { name: name } } },
      withNamespace(namespace): { flexVolume+: { secretRef+: { namespace: namespace } } }
    },
    withDriver(driver): { flexVolume+: { driver: driver } },
    withFsType(fsType): { flexVolume+: { fsType: fsType } },
    withOptions(options): { flexVolume+: { options: options } },
    withOptionsMixin(options): { flexVolume+: { options+: options } },
    withReadOnly(readOnly): { flexVolume+: { readOnly: readOnly } }
  },
  // Represents a Flocker volume mounted by the Flocker agent. One and only one of datasetName and datasetUUID should be set. Flocker volumes do not support ownership management or SELinux relabeling.
  flocker: {
    withDatasetName(datasetName): { flocker+: { datasetName: datasetName } },
    withDatasetUUID(datasetUUID): { flocker+: { datasetUUID: datasetUUID } }
  },
  // Represents a Persistent Disk resource in Google Compute Engine.
  // 
  // A GCE PD must exist before mounting to a container. The disk must also be in the same GCE project and zone as the kubelet. A GCE PD can only be mounted as read/write once or read-only many times. GCE PDs support ownership management and SELinux relabeling.
  gcePersistentDisk: {
    withFsType(fsType): { gcePersistentDisk+: { fsType: fsType } },
    withPartition(partition): { gcePersistentDisk+: { partition: partition } },
    withPdName(pdName): { gcePersistentDisk+: { pdName: pdName } },
    withReadOnly(readOnly): { gcePersistentDisk+: { readOnly: readOnly } }
  },
  // Represents a Glusterfs mount that lasts the lifetime of a pod. Glusterfs volumes do not support ownership management or SELinux relabeling.
  glusterfs: {
    withEndpoints(endpoints): { glusterfs+: { endpoints: endpoints } },
    withEndpointsNamespace(endpointsNamespace): { glusterfs+: { endpointsNamespace: endpointsNamespace } },
    withPath(path): { glusterfs+: { path: path } },
    withReadOnly(readOnly): { glusterfs+: { readOnly: readOnly } }
  },
  // Represents a host path mapped into a pod. Host path volumes do not support ownership management or SELinux relabeling.
  hostPath: {
    withPath(path): { hostPath+: { path: path } },
    withType(type): { hostPath+: { type: type } }
  },
  // ISCSIPersistentVolumeSource represents an ISCSI disk. ISCSI volumes can only be mounted as read/write once. ISCSI volumes support ownership management and SELinux relabeling.
  iscsi: {
    // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
    secretRef: {
      withName(name): { iscsi+: { secretRef+: { name: name } } },
      withNamespace(namespace): { iscsi+: { secretRef+: { namespace: namespace } } }
    },
    withChapAuthDiscovery(chapAuthDiscovery): { iscsi+: { chapAuthDiscovery: chapAuthDiscovery } },
    withChapAuthSession(chapAuthSession): { iscsi+: { chapAuthSession: chapAuthSession } },
    withFsType(fsType): { iscsi+: { fsType: fsType } },
    withInitiatorName(initiatorName): { iscsi+: { initiatorName: initiatorName } },
    withIqn(iqn): { iscsi+: { iqn: iqn } },
    withIscsiInterface(iscsiInterface): { iscsi+: { iscsiInterface: iscsiInterface } },
    withLun(lun): { iscsi+: { lun: lun } },
    withPortals(portals): { iscsi+: { portals: if std.isArray(v=portals) then portals else [portals] } },
    withPortalsMixin(portals): { iscsi+: { portals+: if std.isArray(v=portals) then portals else [portals] } },
    withReadOnly(readOnly): { iscsi+: { readOnly: readOnly } },
    withTargetPortal(targetPortal): { iscsi+: { targetPortal: targetPortal } }
  },
  // Local represents directly-attached storage with node affinity (Beta feature)
  'local': {
    withFsType(fsType): { 'local'+: { fsType: fsType } },
    withPath(path): { 'local'+: { path: path } }
  },
  // Represents an NFS mount that lasts the lifetime of a pod. NFS volumes do not support ownership management or SELinux relabeling.
  nfs: {
    withPath(path): { nfs+: { path: path } },
    withReadOnly(readOnly): { nfs+: { readOnly: readOnly } },
    withServer(server): { nfs+: { server: server } }
  },
  // VolumeNodeAffinity defines constraints that limit what nodes this volume can be accessed from.
  nodeAffinity: { required: {
    withNodeSelectorTerms(nodeSelectorTerms): { nodeAffinity+: { required+: { nodeSelectorTerms: if std.isArray(v=nodeSelectorTerms) then nodeSelectorTerms else [nodeSelectorTerms] } } },
    withNodeSelectorTermsMixin(nodeSelectorTerms): { nodeAffinity+: { required+: { nodeSelectorTerms+: if std.isArray(v=nodeSelectorTerms) then nodeSelectorTerms else [nodeSelectorTerms] } } }
  } },
  // Represents a Photon Controller persistent disk resource.
  photonPersistentDisk: {
    withFsType(fsType): { photonPersistentDisk+: { fsType: fsType } },
    withPdID(pdID): { photonPersistentDisk+: { pdID: pdID } }
  },
  // PortworxVolumeSource represents a Portworx volume resource.
  portworxVolume: {
    withFsType(fsType): { portworxVolume+: { fsType: fsType } },
    withReadOnly(readOnly): { portworxVolume+: { readOnly: readOnly } },
    withVolumeID(volumeID): { portworxVolume+: { volumeID: volumeID } }
  },
  // Represents a Quobyte mount that lasts the lifetime of a pod. Quobyte volumes do not support ownership management or SELinux relabeling.
  quobyte: {
    withGroup(group): { quobyte+: { group: group } },
    withReadOnly(readOnly): { quobyte+: { readOnly: readOnly } },
    withRegistry(registry): { quobyte+: { registry: registry } },
    withTenant(tenant): { quobyte+: { tenant: tenant } },
    withUser(user): { quobyte+: { user: user } },
    withVolume(volume): { quobyte+: { volume: volume } }
  },
  // Represents a Rados Block Device mount that lasts the lifetime of a pod. RBD volumes support ownership management and SELinux relabeling.
  rbd: {
    // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
    secretRef: {
      withName(name): { rbd+: { secretRef+: { name: name } } },
      withNamespace(namespace): { rbd+: { secretRef+: { namespace: namespace } } }
    },
    withFsType(fsType): { rbd+: { fsType: fsType } },
    withImage(image): { rbd+: { image: image } },
    withKeyring(keyring): { rbd+: { keyring: keyring } },
    withMonitors(monitors): { rbd+: { monitors: if std.isArray(v=monitors) then monitors else [monitors] } },
    withMonitorsMixin(monitors): { rbd+: { monitors+: if std.isArray(v=monitors) then monitors else [monitors] } },
    withPool(pool): { rbd+: { pool: pool } },
    withReadOnly(readOnly): { rbd+: { readOnly: readOnly } },
    withUser(user): { rbd+: { user: user } }
  },
  // ScaleIOPersistentVolumeSource represents a persistent ScaleIO volume
  scaleIO: {
    // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
    secretRef: {
      withName(name): { scaleIO+: { secretRef+: { name: name } } },
      withNamespace(namespace): { scaleIO+: { secretRef+: { namespace: namespace } } }
    },
    withFsType(fsType): { scaleIO+: { fsType: fsType } },
    withGateway(gateway): { scaleIO+: { gateway: gateway } },
    withProtectionDomain(protectionDomain): { scaleIO+: { protectionDomain: protectionDomain } },
    withReadOnly(readOnly): { scaleIO+: { readOnly: readOnly } },
    withSslEnabled(sslEnabled): { scaleIO+: { sslEnabled: sslEnabled } },
    withStorageMode(storageMode): { scaleIO+: { storageMode: storageMode } },
    withStoragePool(storagePool): { scaleIO+: { storagePool: storagePool } },
    withSystem(system): { scaleIO+: { system: system } },
    withVolumeName(volumeName): { scaleIO+: { volumeName: volumeName } }
  },
  // Represents a StorageOS persistent volume resource.
  storageos: {
    // ObjectReference contains enough information to let you inspect or modify the referred object.
    secretRef: {
      withFieldPath(fieldPath): { storageos+: { secretRef+: { fieldPath: fieldPath } } },
      withKind(kind): { storageos+: { secretRef+: { kind: kind } } },
      withName(name): { storageos+: { secretRef+: { name: name } } },
      withNamespace(namespace): { storageos+: { secretRef+: { namespace: namespace } } },
      withResourceVersion(resourceVersion): { storageos+: { secretRef+: { resourceVersion: resourceVersion } } },
      withUid(uid): { storageos+: { secretRef+: { uid: uid } } }
    },
    withFsType(fsType): { storageos+: { fsType: fsType } },
    withReadOnly(readOnly): { storageos+: { readOnly: readOnly } },
    withVolumeName(volumeName): { storageos+: { volumeName: volumeName } },
    withVolumeNamespace(volumeNamespace): { storageos+: { volumeNamespace: volumeNamespace } }
  },
  // Represents a vSphere volume resource.
  vsphereVolume: {
    withFsType(fsType): { vsphereVolume+: { fsType: fsType } },
    withStoragePolicyID(storagePolicyID): { vsphereVolume+: { storagePolicyID: storagePolicyID } },
    withStoragePolicyName(storagePolicyName): { vsphereVolume+: { storagePolicyName: storagePolicyName } },
    withVolumePath(volumePath): { vsphereVolume+: { volumePath: volumePath } }
  },
  withAccessModes(accessModes): { accessModes: if std.isArray(v=accessModes) then accessModes else [accessModes] },
  withAccessModesMixin(accessModes): { accessModes+: if std.isArray(v=accessModes) then accessModes else [accessModes] },
  withCapacity(capacity): { capacity: capacity },
  withCapacityMixin(capacity): { capacity+: capacity },
  withMountOptions(mountOptions): { mountOptions: if std.isArray(v=mountOptions) then mountOptions else [mountOptions] },
  withMountOptionsMixin(mountOptions): { mountOptions+: if std.isArray(v=mountOptions) then mountOptions else [mountOptions] },
  withPersistentVolumeReclaimPolicy(persistentVolumeReclaimPolicy): { persistentVolumeReclaimPolicy: persistentVolumeReclaimPolicy },
  withStorageClassName(storageClassName): { storageClassName: storageClassName },
  withVolumeMode(volumeMode): { volumeMode: volumeMode },
  mixin: self
}