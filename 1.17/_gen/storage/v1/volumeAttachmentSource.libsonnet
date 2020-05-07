{
  // PersistentVolumeSpec is the specification of a persistent volume.
  inlineVolumeSpec: {
    // Represents a Persistent Disk resource in AWS.
    // 
    // An AWS EBS disk must exist before mounting to a container. The disk must also be in the same AWS zone as the kubelet. An AWS EBS disk can only be mounted as read/write once. AWS EBS volumes support ownership management and SELinux relabeling.
    awsElasticBlockStore: {
      withFsType(fsType): { inlineVolumeSpec+: { awsElasticBlockStore+: { fsType: fsType } } },
      withPartition(partition): { inlineVolumeSpec+: { awsElasticBlockStore+: { partition: partition } } },
      withReadOnly(readOnly): { inlineVolumeSpec+: { awsElasticBlockStore+: { readOnly: readOnly } } },
      withVolumeID(volumeID): { inlineVolumeSpec+: { awsElasticBlockStore+: { volumeID: volumeID } } }
    },
    // AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
    azureDisk: {
      withCachingMode(cachingMode): { inlineVolumeSpec+: { azureDisk+: { cachingMode: cachingMode } } },
      withDiskName(diskName): { inlineVolumeSpec+: { azureDisk+: { diskName: diskName } } },
      withDiskURI(diskURI): { inlineVolumeSpec+: { azureDisk+: { diskURI: diskURI } } },
      withFsType(fsType): { inlineVolumeSpec+: { azureDisk+: { fsType: fsType } } },
      withKind(kind): { inlineVolumeSpec+: { azureDisk+: { kind: kind } } },
      withReadOnly(readOnly): { inlineVolumeSpec+: { azureDisk+: { readOnly: readOnly } } }
    },
    // AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
    azureFile: {
      withReadOnly(readOnly): { inlineVolumeSpec+: { azureFile+: { readOnly: readOnly } } },
      withSecretName(secretName): { inlineVolumeSpec+: { azureFile+: { secretName: secretName } } },
      withSecretNamespace(secretNamespace): { inlineVolumeSpec+: { azureFile+: { secretNamespace: secretNamespace } } },
      withShareName(shareName): { inlineVolumeSpec+: { azureFile+: { shareName: shareName } } }
    },
    // Represents a Ceph Filesystem mount that lasts the lifetime of a pod Cephfs volumes do not support ownership management or SELinux relabeling.
    cephfs: {
      // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
      secretRef: {
        withName(name): { inlineVolumeSpec+: { cephfs+: { secretRef+: { name: name } } } },
        withNamespace(namespace): { inlineVolumeSpec+: { cephfs+: { secretRef+: { namespace: namespace } } } }
      },
      withMonitors(monitors): { inlineVolumeSpec+: { cephfs+: { monitors: if std.isArray(v=monitors) then monitors else [monitors] } } },
      withMonitorsMixin(monitors): { inlineVolumeSpec+: { cephfs+: { monitors+: if std.isArray(v=monitors) then monitors else [monitors] } } },
      withPath(path): { inlineVolumeSpec+: { cephfs+: { path: path } } },
      withReadOnly(readOnly): { inlineVolumeSpec+: { cephfs+: { readOnly: readOnly } } },
      withSecretFile(secretFile): { inlineVolumeSpec+: { cephfs+: { secretFile: secretFile } } },
      withUser(user): { inlineVolumeSpec+: { cephfs+: { user: user } } }
    },
    // Represents a cinder volume resource in Openstack. A Cinder volume must exist before mounting to a container. The volume must also be in the same region as the kubelet. Cinder volumes support ownership management and SELinux relabeling.
    cinder: {
      // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
      secretRef: {
        withName(name): { inlineVolumeSpec+: { cinder+: { secretRef+: { name: name } } } },
        withNamespace(namespace): { inlineVolumeSpec+: { cinder+: { secretRef+: { namespace: namespace } } } }
      },
      withFsType(fsType): { inlineVolumeSpec+: { cinder+: { fsType: fsType } } },
      withReadOnly(readOnly): { inlineVolumeSpec+: { cinder+: { readOnly: readOnly } } },
      withVolumeID(volumeID): { inlineVolumeSpec+: { cinder+: { volumeID: volumeID } } }
    },
    // ObjectReference contains enough information to let you inspect or modify the referred object.
    claimRef: {
      withFieldPath(fieldPath): { inlineVolumeSpec+: { claimRef+: { fieldPath: fieldPath } } },
      withKind(kind): { inlineVolumeSpec+: { claimRef+: { kind: kind } } },
      withName(name): { inlineVolumeSpec+: { claimRef+: { name: name } } },
      withNamespace(namespace): { inlineVolumeSpec+: { claimRef+: { namespace: namespace } } },
      withResourceVersion(resourceVersion): { inlineVolumeSpec+: { claimRef+: { resourceVersion: resourceVersion } } },
      withUid(uid): { inlineVolumeSpec+: { claimRef+: { uid: uid } } }
    },
    // Represents storage that is managed by an external CSI volume driver (Beta feature)
    csi: {
      // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
      controllerExpandSecretRef: {
        withName(name): { inlineVolumeSpec+: { csi+: { controllerExpandSecretRef+: { name: name } } } },
        withNamespace(namespace): { inlineVolumeSpec+: { csi+: { controllerExpandSecretRef+: { namespace: namespace } } } }
      },
      // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
      controllerPublishSecretRef: {
        withName(name): { inlineVolumeSpec+: { csi+: { controllerPublishSecretRef+: { name: name } } } },
        withNamespace(namespace): { inlineVolumeSpec+: { csi+: { controllerPublishSecretRef+: { namespace: namespace } } } }
      },
      // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
      nodePublishSecretRef: {
        withName(name): { inlineVolumeSpec+: { csi+: { nodePublishSecretRef+: { name: name } } } },
        withNamespace(namespace): { inlineVolumeSpec+: { csi+: { nodePublishSecretRef+: { namespace: namespace } } } }
      },
      // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
      nodeStageSecretRef: {
        withName(name): { inlineVolumeSpec+: { csi+: { nodeStageSecretRef+: { name: name } } } },
        withNamespace(namespace): { inlineVolumeSpec+: { csi+: { nodeStageSecretRef+: { namespace: namespace } } } }
      },
      withDriver(driver): { inlineVolumeSpec+: { csi+: { driver: driver } } },
      withFsType(fsType): { inlineVolumeSpec+: { csi+: { fsType: fsType } } },
      withReadOnly(readOnly): { inlineVolumeSpec+: { csi+: { readOnly: readOnly } } },
      withVolumeAttributes(volumeAttributes): { inlineVolumeSpec+: { csi+: { volumeAttributes: volumeAttributes } } },
      withVolumeAttributesMixin(volumeAttributes): { inlineVolumeSpec+: { csi+: { volumeAttributes+: volumeAttributes } } },
      withVolumeHandle(volumeHandle): { inlineVolumeSpec+: { csi+: { volumeHandle: volumeHandle } } }
    },
    // Represents a Fibre Channel volume. Fibre Channel volumes can only be mounted as read/write once. Fibre Channel volumes support ownership management and SELinux relabeling.
    fc: {
      withFsType(fsType): { inlineVolumeSpec+: { fc+: { fsType: fsType } } },
      withLun(lun): { inlineVolumeSpec+: { fc+: { lun: lun } } },
      withReadOnly(readOnly): { inlineVolumeSpec+: { fc+: { readOnly: readOnly } } },
      withTargetWWNs(targetWWNs): { inlineVolumeSpec+: { fc+: { targetWWNs: if std.isArray(v=targetWWNs) then targetWWNs else [targetWWNs] } } },
      withTargetWWNsMixin(targetWWNs): { inlineVolumeSpec+: { fc+: { targetWWNs+: if std.isArray(v=targetWWNs) then targetWWNs else [targetWWNs] } } },
      withWwids(wwids): { inlineVolumeSpec+: { fc+: { wwids: if std.isArray(v=wwids) then wwids else [wwids] } } },
      withWwidsMixin(wwids): { inlineVolumeSpec+: { fc+: { wwids+: if std.isArray(v=wwids) then wwids else [wwids] } } }
    },
    // FlexPersistentVolumeSource represents a generic persistent volume resource that is provisioned/attached using an exec based plugin.
    flexVolume: {
      // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
      secretRef: {
        withName(name): { inlineVolumeSpec+: { flexVolume+: { secretRef+: { name: name } } } },
        withNamespace(namespace): { inlineVolumeSpec+: { flexVolume+: { secretRef+: { namespace: namespace } } } }
      },
      withDriver(driver): { inlineVolumeSpec+: { flexVolume+: { driver: driver } } },
      withFsType(fsType): { inlineVolumeSpec+: { flexVolume+: { fsType: fsType } } },
      withOptions(options): { inlineVolumeSpec+: { flexVolume+: { options: options } } },
      withOptionsMixin(options): { inlineVolumeSpec+: { flexVolume+: { options+: options } } },
      withReadOnly(readOnly): { inlineVolumeSpec+: { flexVolume+: { readOnly: readOnly } } }
    },
    // Represents a Flocker volume mounted by the Flocker agent. One and only one of datasetName and datasetUUID should be set. Flocker volumes do not support ownership management or SELinux relabeling.
    flocker: {
      withDatasetName(datasetName): { inlineVolumeSpec+: { flocker+: { datasetName: datasetName } } },
      withDatasetUUID(datasetUUID): { inlineVolumeSpec+: { flocker+: { datasetUUID: datasetUUID } } }
    },
    // Represents a Persistent Disk resource in Google Compute Engine.
    // 
    // A GCE PD must exist before mounting to a container. The disk must also be in the same GCE project and zone as the kubelet. A GCE PD can only be mounted as read/write once or read-only many times. GCE PDs support ownership management and SELinux relabeling.
    gcePersistentDisk: {
      withFsType(fsType): { inlineVolumeSpec+: { gcePersistentDisk+: { fsType: fsType } } },
      withPartition(partition): { inlineVolumeSpec+: { gcePersistentDisk+: { partition: partition } } },
      withPdName(pdName): { inlineVolumeSpec+: { gcePersistentDisk+: { pdName: pdName } } },
      withReadOnly(readOnly): { inlineVolumeSpec+: { gcePersistentDisk+: { readOnly: readOnly } } }
    },
    // Represents a Glusterfs mount that lasts the lifetime of a pod. Glusterfs volumes do not support ownership management or SELinux relabeling.
    glusterfs: {
      withEndpoints(endpoints): { inlineVolumeSpec+: { glusterfs+: { endpoints: endpoints } } },
      withEndpointsNamespace(endpointsNamespace): { inlineVolumeSpec+: { glusterfs+: { endpointsNamespace: endpointsNamespace } } },
      withPath(path): { inlineVolumeSpec+: { glusterfs+: { path: path } } },
      withReadOnly(readOnly): { inlineVolumeSpec+: { glusterfs+: { readOnly: readOnly } } }
    },
    // Represents a host path mapped into a pod. Host path volumes do not support ownership management or SELinux relabeling.
    hostPath: {
      withPath(path): { inlineVolumeSpec+: { hostPath+: { path: path } } },
      withType(type): { inlineVolumeSpec+: { hostPath+: { type: type } } }
    },
    // ISCSIPersistentVolumeSource represents an ISCSI disk. ISCSI volumes can only be mounted as read/write once. ISCSI volumes support ownership management and SELinux relabeling.
    iscsi: {
      // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
      secretRef: {
        withName(name): { inlineVolumeSpec+: { iscsi+: { secretRef+: { name: name } } } },
        withNamespace(namespace): { inlineVolumeSpec+: { iscsi+: { secretRef+: { namespace: namespace } } } }
      },
      withChapAuthDiscovery(chapAuthDiscovery): { inlineVolumeSpec+: { iscsi+: { chapAuthDiscovery: chapAuthDiscovery } } },
      withChapAuthSession(chapAuthSession): { inlineVolumeSpec+: { iscsi+: { chapAuthSession: chapAuthSession } } },
      withFsType(fsType): { inlineVolumeSpec+: { iscsi+: { fsType: fsType } } },
      withInitiatorName(initiatorName): { inlineVolumeSpec+: { iscsi+: { initiatorName: initiatorName } } },
      withIqn(iqn): { inlineVolumeSpec+: { iscsi+: { iqn: iqn } } },
      withIscsiInterface(iscsiInterface): { inlineVolumeSpec+: { iscsi+: { iscsiInterface: iscsiInterface } } },
      withLun(lun): { inlineVolumeSpec+: { iscsi+: { lun: lun } } },
      withPortals(portals): { inlineVolumeSpec+: { iscsi+: { portals: if std.isArray(v=portals) then portals else [portals] } } },
      withPortalsMixin(portals): { inlineVolumeSpec+: { iscsi+: { portals+: if std.isArray(v=portals) then portals else [portals] } } },
      withReadOnly(readOnly): { inlineVolumeSpec+: { iscsi+: { readOnly: readOnly } } },
      withTargetPortal(targetPortal): { inlineVolumeSpec+: { iscsi+: { targetPortal: targetPortal } } }
    },
    // Local represents directly-attached storage with node affinity (Beta feature)
    'local': {
      withFsType(fsType): { inlineVolumeSpec+: { 'local'+: { fsType: fsType } } },
      withPath(path): { inlineVolumeSpec+: { 'local'+: { path: path } } }
    },
    // Represents an NFS mount that lasts the lifetime of a pod. NFS volumes do not support ownership management or SELinux relabeling.
    nfs: {
      withPath(path): { inlineVolumeSpec+: { nfs+: { path: path } } },
      withReadOnly(readOnly): { inlineVolumeSpec+: { nfs+: { readOnly: readOnly } } },
      withServer(server): { inlineVolumeSpec+: { nfs+: { server: server } } }
    },
    // VolumeNodeAffinity defines constraints that limit what nodes this volume can be accessed from.
    nodeAffinity: { required: {
      withNodeSelectorTerms(nodeSelectorTerms): { inlineVolumeSpec+: { nodeAffinity+: { required+: { nodeSelectorTerms: if std.isArray(v=nodeSelectorTerms) then nodeSelectorTerms else [nodeSelectorTerms] } } } },
      withNodeSelectorTermsMixin(nodeSelectorTerms): { inlineVolumeSpec+: { nodeAffinity+: { required+: { nodeSelectorTerms+: if std.isArray(v=nodeSelectorTerms) then nodeSelectorTerms else [nodeSelectorTerms] } } } }
    } },
    // Represents a Photon Controller persistent disk resource.
    photonPersistentDisk: {
      withFsType(fsType): { inlineVolumeSpec+: { photonPersistentDisk+: { fsType: fsType } } },
      withPdID(pdID): { inlineVolumeSpec+: { photonPersistentDisk+: { pdID: pdID } } }
    },
    // PortworxVolumeSource represents a Portworx volume resource.
    portworxVolume: {
      withFsType(fsType): { inlineVolumeSpec+: { portworxVolume+: { fsType: fsType } } },
      withReadOnly(readOnly): { inlineVolumeSpec+: { portworxVolume+: { readOnly: readOnly } } },
      withVolumeID(volumeID): { inlineVolumeSpec+: { portworxVolume+: { volumeID: volumeID } } }
    },
    // Represents a Quobyte mount that lasts the lifetime of a pod. Quobyte volumes do not support ownership management or SELinux relabeling.
    quobyte: {
      withGroup(group): { inlineVolumeSpec+: { quobyte+: { group: group } } },
      withReadOnly(readOnly): { inlineVolumeSpec+: { quobyte+: { readOnly: readOnly } } },
      withRegistry(registry): { inlineVolumeSpec+: { quobyte+: { registry: registry } } },
      withTenant(tenant): { inlineVolumeSpec+: { quobyte+: { tenant: tenant } } },
      withUser(user): { inlineVolumeSpec+: { quobyte+: { user: user } } },
      withVolume(volume): { inlineVolumeSpec+: { quobyte+: { volume: volume } } }
    },
    // Represents a Rados Block Device mount that lasts the lifetime of a pod. RBD volumes support ownership management and SELinux relabeling.
    rbd: {
      // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
      secretRef: {
        withName(name): { inlineVolumeSpec+: { rbd+: { secretRef+: { name: name } } } },
        withNamespace(namespace): { inlineVolumeSpec+: { rbd+: { secretRef+: { namespace: namespace } } } }
      },
      withFsType(fsType): { inlineVolumeSpec+: { rbd+: { fsType: fsType } } },
      withImage(image): { inlineVolumeSpec+: { rbd+: { image: image } } },
      withKeyring(keyring): { inlineVolumeSpec+: { rbd+: { keyring: keyring } } },
      withMonitors(monitors): { inlineVolumeSpec+: { rbd+: { monitors: if std.isArray(v=monitors) then monitors else [monitors] } } },
      withMonitorsMixin(monitors): { inlineVolumeSpec+: { rbd+: { monitors+: if std.isArray(v=monitors) then monitors else [monitors] } } },
      withPool(pool): { inlineVolumeSpec+: { rbd+: { pool: pool } } },
      withReadOnly(readOnly): { inlineVolumeSpec+: { rbd+: { readOnly: readOnly } } },
      withUser(user): { inlineVolumeSpec+: { rbd+: { user: user } } }
    },
    // ScaleIOPersistentVolumeSource represents a persistent ScaleIO volume
    scaleIO: {
      // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
      secretRef: {
        withName(name): { inlineVolumeSpec+: { scaleIO+: { secretRef+: { name: name } } } },
        withNamespace(namespace): { inlineVolumeSpec+: { scaleIO+: { secretRef+: { namespace: namespace } } } }
      },
      withFsType(fsType): { inlineVolumeSpec+: { scaleIO+: { fsType: fsType } } },
      withGateway(gateway): { inlineVolumeSpec+: { scaleIO+: { gateway: gateway } } },
      withProtectionDomain(protectionDomain): { inlineVolumeSpec+: { scaleIO+: { protectionDomain: protectionDomain } } },
      withReadOnly(readOnly): { inlineVolumeSpec+: { scaleIO+: { readOnly: readOnly } } },
      withSslEnabled(sslEnabled): { inlineVolumeSpec+: { scaleIO+: { sslEnabled: sslEnabled } } },
      withStorageMode(storageMode): { inlineVolumeSpec+: { scaleIO+: { storageMode: storageMode } } },
      withStoragePool(storagePool): { inlineVolumeSpec+: { scaleIO+: { storagePool: storagePool } } },
      withSystem(system): { inlineVolumeSpec+: { scaleIO+: { system: system } } },
      withVolumeName(volumeName): { inlineVolumeSpec+: { scaleIO+: { volumeName: volumeName } } }
    },
    // Represents a StorageOS persistent volume resource.
    storageos: {
      // ObjectReference contains enough information to let you inspect or modify the referred object.
      secretRef: {
        withFieldPath(fieldPath): { inlineVolumeSpec+: { storageos+: { secretRef+: { fieldPath: fieldPath } } } },
        withKind(kind): { inlineVolumeSpec+: { storageos+: { secretRef+: { kind: kind } } } },
        withName(name): { inlineVolumeSpec+: { storageos+: { secretRef+: { name: name } } } },
        withNamespace(namespace): { inlineVolumeSpec+: { storageos+: { secretRef+: { namespace: namespace } } } },
        withResourceVersion(resourceVersion): { inlineVolumeSpec+: { storageos+: { secretRef+: { resourceVersion: resourceVersion } } } },
        withUid(uid): { inlineVolumeSpec+: { storageos+: { secretRef+: { uid: uid } } } }
      },
      withFsType(fsType): { inlineVolumeSpec+: { storageos+: { fsType: fsType } } },
      withReadOnly(readOnly): { inlineVolumeSpec+: { storageos+: { readOnly: readOnly } } },
      withVolumeName(volumeName): { inlineVolumeSpec+: { storageos+: { volumeName: volumeName } } },
      withVolumeNamespace(volumeNamespace): { inlineVolumeSpec+: { storageos+: { volumeNamespace: volumeNamespace } } }
    },
    // Represents a vSphere volume resource.
    vsphereVolume: {
      withFsType(fsType): { inlineVolumeSpec+: { vsphereVolume+: { fsType: fsType } } },
      withStoragePolicyID(storagePolicyID): { inlineVolumeSpec+: { vsphereVolume+: { storagePolicyID: storagePolicyID } } },
      withStoragePolicyName(storagePolicyName): { inlineVolumeSpec+: { vsphereVolume+: { storagePolicyName: storagePolicyName } } },
      withVolumePath(volumePath): { inlineVolumeSpec+: { vsphereVolume+: { volumePath: volumePath } } }
    },
    withAccessModes(accessModes): { inlineVolumeSpec+: { accessModes: if std.isArray(v=accessModes) then accessModes else [accessModes] } },
    withAccessModesMixin(accessModes): { inlineVolumeSpec+: { accessModes+: if std.isArray(v=accessModes) then accessModes else [accessModes] } },
    withCapacity(capacity): { inlineVolumeSpec+: { capacity: capacity } },
    withCapacityMixin(capacity): { inlineVolumeSpec+: { capacity+: capacity } },
    withMountOptions(mountOptions): { inlineVolumeSpec+: { mountOptions: if std.isArray(v=mountOptions) then mountOptions else [mountOptions] } },
    withMountOptionsMixin(mountOptions): { inlineVolumeSpec+: { mountOptions+: if std.isArray(v=mountOptions) then mountOptions else [mountOptions] } },
    withPersistentVolumeReclaimPolicy(persistentVolumeReclaimPolicy): { inlineVolumeSpec+: { persistentVolumeReclaimPolicy: persistentVolumeReclaimPolicy } },
    withStorageClassName(storageClassName): { inlineVolumeSpec+: { storageClassName: storageClassName } },
    withVolumeMode(volumeMode): { inlineVolumeSpec+: { volumeMode: volumeMode } }
  },
  withPersistentVolumeName(persistentVolumeName): { persistentVolumeName: persistentVolumeName },
  mixin: self
}