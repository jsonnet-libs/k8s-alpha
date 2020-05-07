{
  // VolumeAttachmentSource represents a volume that should be attached. Right now only PersistenVolumes can be attached via external attacher, in future we may allow also inline volumes in pods. Exactly one member can be set.
  source: {
    // PersistentVolumeSpec is the specification of a persistent volume.
    inlineVolumeSpec: {
      // Represents a Persistent Disk resource in AWS.
      // 
      // An AWS EBS disk must exist before mounting to a container. The disk must also be in the same AWS zone as the kubelet. An AWS EBS disk can only be mounted as read/write once. AWS EBS volumes support ownership management and SELinux relabeling.
      awsElasticBlockStore: {
        withFsType(fsType): { source+: { inlineVolumeSpec+: { awsElasticBlockStore+: { fsType: fsType } } } },
        withPartition(partition): { source+: { inlineVolumeSpec+: { awsElasticBlockStore+: { partition: partition } } } },
        withReadOnly(readOnly): { source+: { inlineVolumeSpec+: { awsElasticBlockStore+: { readOnly: readOnly } } } },
        withVolumeID(volumeID): { source+: { inlineVolumeSpec+: { awsElasticBlockStore+: { volumeID: volumeID } } } }
      },
      // AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
      azureDisk: {
        withCachingMode(cachingMode): { source+: { inlineVolumeSpec+: { azureDisk+: { cachingMode: cachingMode } } } },
        withDiskName(diskName): { source+: { inlineVolumeSpec+: { azureDisk+: { diskName: diskName } } } },
        withDiskURI(diskURI): { source+: { inlineVolumeSpec+: { azureDisk+: { diskURI: diskURI } } } },
        withFsType(fsType): { source+: { inlineVolumeSpec+: { azureDisk+: { fsType: fsType } } } },
        withKind(kind): { source+: { inlineVolumeSpec+: { azureDisk+: { kind: kind } } } },
        withReadOnly(readOnly): { source+: { inlineVolumeSpec+: { azureDisk+: { readOnly: readOnly } } } }
      },
      // AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
      azureFile: {
        withReadOnly(readOnly): { source+: { inlineVolumeSpec+: { azureFile+: { readOnly: readOnly } } } },
        withSecretName(secretName): { source+: { inlineVolumeSpec+: { azureFile+: { secretName: secretName } } } },
        withSecretNamespace(secretNamespace): { source+: { inlineVolumeSpec+: { azureFile+: { secretNamespace: secretNamespace } } } },
        withShareName(shareName): { source+: { inlineVolumeSpec+: { azureFile+: { shareName: shareName } } } }
      },
      // Represents a Ceph Filesystem mount that lasts the lifetime of a pod Cephfs volumes do not support ownership management or SELinux relabeling.
      cephfs: {
        // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
        secretRef: {
          withName(name): { source+: { inlineVolumeSpec+: { cephfs+: { secretRef+: { name: name } } } } },
          withNamespace(namespace): { source+: { inlineVolumeSpec+: { cephfs+: { secretRef+: { namespace: namespace } } } } }
        },
        withMonitors(monitors): { source+: { inlineVolumeSpec+: { cephfs+: { monitors: if std.isArray(v=monitors) then monitors else [monitors] } } } },
        withMonitorsMixin(monitors): { source+: { inlineVolumeSpec+: { cephfs+: { monitors+: if std.isArray(v=monitors) then monitors else [monitors] } } } },
        withPath(path): { source+: { inlineVolumeSpec+: { cephfs+: { path: path } } } },
        withReadOnly(readOnly): { source+: { inlineVolumeSpec+: { cephfs+: { readOnly: readOnly } } } },
        withSecretFile(secretFile): { source+: { inlineVolumeSpec+: { cephfs+: { secretFile: secretFile } } } },
        withUser(user): { source+: { inlineVolumeSpec+: { cephfs+: { user: user } } } }
      },
      // Represents a cinder volume resource in Openstack. A Cinder volume must exist before mounting to a container. The volume must also be in the same region as the kubelet. Cinder volumes support ownership management and SELinux relabeling.
      cinder: {
        // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
        secretRef: {
          withName(name): { source+: { inlineVolumeSpec+: { cinder+: { secretRef+: { name: name } } } } },
          withNamespace(namespace): { source+: { inlineVolumeSpec+: { cinder+: { secretRef+: { namespace: namespace } } } } }
        },
        withFsType(fsType): { source+: { inlineVolumeSpec+: { cinder+: { fsType: fsType } } } },
        withReadOnly(readOnly): { source+: { inlineVolumeSpec+: { cinder+: { readOnly: readOnly } } } },
        withVolumeID(volumeID): { source+: { inlineVolumeSpec+: { cinder+: { volumeID: volumeID } } } }
      },
      // ObjectReference contains enough information to let you inspect or modify the referred object.
      claimRef: {
        withFieldPath(fieldPath): { source+: { inlineVolumeSpec+: { claimRef+: { fieldPath: fieldPath } } } },
        withKind(kind): { source+: { inlineVolumeSpec+: { claimRef+: { kind: kind } } } },
        withName(name): { source+: { inlineVolumeSpec+: { claimRef+: { name: name } } } },
        withNamespace(namespace): { source+: { inlineVolumeSpec+: { claimRef+: { namespace: namespace } } } },
        withResourceVersion(resourceVersion): { source+: { inlineVolumeSpec+: { claimRef+: { resourceVersion: resourceVersion } } } },
        withUid(uid): { source+: { inlineVolumeSpec+: { claimRef+: { uid: uid } } } }
      },
      // Represents storage that is managed by an external CSI volume driver (Beta feature)
      csi: {
        // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
        controllerExpandSecretRef: {
          withName(name): { source+: { inlineVolumeSpec+: { csi+: { controllerExpandSecretRef+: { name: name } } } } },
          withNamespace(namespace): { source+: { inlineVolumeSpec+: { csi+: { controllerExpandSecretRef+: { namespace: namespace } } } } }
        },
        // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
        controllerPublishSecretRef: {
          withName(name): { source+: { inlineVolumeSpec+: { csi+: { controllerPublishSecretRef+: { name: name } } } } },
          withNamespace(namespace): { source+: { inlineVolumeSpec+: { csi+: { controllerPublishSecretRef+: { namespace: namespace } } } } }
        },
        // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
        nodePublishSecretRef: {
          withName(name): { source+: { inlineVolumeSpec+: { csi+: { nodePublishSecretRef+: { name: name } } } } },
          withNamespace(namespace): { source+: { inlineVolumeSpec+: { csi+: { nodePublishSecretRef+: { namespace: namespace } } } } }
        },
        // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
        nodeStageSecretRef: {
          withName(name): { source+: { inlineVolumeSpec+: { csi+: { nodeStageSecretRef+: { name: name } } } } },
          withNamespace(namespace): { source+: { inlineVolumeSpec+: { csi+: { nodeStageSecretRef+: { namespace: namespace } } } } }
        },
        withDriver(driver): { source+: { inlineVolumeSpec+: { csi+: { driver: driver } } } },
        withFsType(fsType): { source+: { inlineVolumeSpec+: { csi+: { fsType: fsType } } } },
        withReadOnly(readOnly): { source+: { inlineVolumeSpec+: { csi+: { readOnly: readOnly } } } },
        withVolumeAttributes(volumeAttributes): { source+: { inlineVolumeSpec+: { csi+: { volumeAttributes: volumeAttributes } } } },
        withVolumeAttributesMixin(volumeAttributes): { source+: { inlineVolumeSpec+: { csi+: { volumeAttributes+: volumeAttributes } } } },
        withVolumeHandle(volumeHandle): { source+: { inlineVolumeSpec+: { csi+: { volumeHandle: volumeHandle } } } }
      },
      // Represents a Fibre Channel volume. Fibre Channel volumes can only be mounted as read/write once. Fibre Channel volumes support ownership management and SELinux relabeling.
      fc: {
        withFsType(fsType): { source+: { inlineVolumeSpec+: { fc+: { fsType: fsType } } } },
        withLun(lun): { source+: { inlineVolumeSpec+: { fc+: { lun: lun } } } },
        withReadOnly(readOnly): { source+: { inlineVolumeSpec+: { fc+: { readOnly: readOnly } } } },
        withTargetWWNs(targetWWNs): { source+: { inlineVolumeSpec+: { fc+: { targetWWNs: if std.isArray(v=targetWWNs) then targetWWNs else [targetWWNs] } } } },
        withTargetWWNsMixin(targetWWNs): { source+: { inlineVolumeSpec+: { fc+: { targetWWNs+: if std.isArray(v=targetWWNs) then targetWWNs else [targetWWNs] } } } },
        withWwids(wwids): { source+: { inlineVolumeSpec+: { fc+: { wwids: if std.isArray(v=wwids) then wwids else [wwids] } } } },
        withWwidsMixin(wwids): { source+: { inlineVolumeSpec+: { fc+: { wwids+: if std.isArray(v=wwids) then wwids else [wwids] } } } }
      },
      // FlexPersistentVolumeSource represents a generic persistent volume resource that is provisioned/attached using an exec based plugin.
      flexVolume: {
        // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
        secretRef: {
          withName(name): { source+: { inlineVolumeSpec+: { flexVolume+: { secretRef+: { name: name } } } } },
          withNamespace(namespace): { source+: { inlineVolumeSpec+: { flexVolume+: { secretRef+: { namespace: namespace } } } } }
        },
        withDriver(driver): { source+: { inlineVolumeSpec+: { flexVolume+: { driver: driver } } } },
        withFsType(fsType): { source+: { inlineVolumeSpec+: { flexVolume+: { fsType: fsType } } } },
        withOptions(options): { source+: { inlineVolumeSpec+: { flexVolume+: { options: options } } } },
        withOptionsMixin(options): { source+: { inlineVolumeSpec+: { flexVolume+: { options+: options } } } },
        withReadOnly(readOnly): { source+: { inlineVolumeSpec+: { flexVolume+: { readOnly: readOnly } } } }
      },
      // Represents a Flocker volume mounted by the Flocker agent. One and only one of datasetName and datasetUUID should be set. Flocker volumes do not support ownership management or SELinux relabeling.
      flocker: {
        withDatasetName(datasetName): { source+: { inlineVolumeSpec+: { flocker+: { datasetName: datasetName } } } },
        withDatasetUUID(datasetUUID): { source+: { inlineVolumeSpec+: { flocker+: { datasetUUID: datasetUUID } } } }
      },
      // Represents a Persistent Disk resource in Google Compute Engine.
      // 
      // A GCE PD must exist before mounting to a container. The disk must also be in the same GCE project and zone as the kubelet. A GCE PD can only be mounted as read/write once or read-only many times. GCE PDs support ownership management and SELinux relabeling.
      gcePersistentDisk: {
        withFsType(fsType): { source+: { inlineVolumeSpec+: { gcePersistentDisk+: { fsType: fsType } } } },
        withPartition(partition): { source+: { inlineVolumeSpec+: { gcePersistentDisk+: { partition: partition } } } },
        withPdName(pdName): { source+: { inlineVolumeSpec+: { gcePersistentDisk+: { pdName: pdName } } } },
        withReadOnly(readOnly): { source+: { inlineVolumeSpec+: { gcePersistentDisk+: { readOnly: readOnly } } } }
      },
      // Represents a Glusterfs mount that lasts the lifetime of a pod. Glusterfs volumes do not support ownership management or SELinux relabeling.
      glusterfs: {
        withEndpoints(endpoints): { source+: { inlineVolumeSpec+: { glusterfs+: { endpoints: endpoints } } } },
        withEndpointsNamespace(endpointsNamespace): { source+: { inlineVolumeSpec+: { glusterfs+: { endpointsNamespace: endpointsNamespace } } } },
        withPath(path): { source+: { inlineVolumeSpec+: { glusterfs+: { path: path } } } },
        withReadOnly(readOnly): { source+: { inlineVolumeSpec+: { glusterfs+: { readOnly: readOnly } } } }
      },
      // Represents a host path mapped into a pod. Host path volumes do not support ownership management or SELinux relabeling.
      hostPath: {
        withPath(path): { source+: { inlineVolumeSpec+: { hostPath+: { path: path } } } },
        withType(type): { source+: { inlineVolumeSpec+: { hostPath+: { type: type } } } }
      },
      // ISCSIPersistentVolumeSource represents an ISCSI disk. ISCSI volumes can only be mounted as read/write once. ISCSI volumes support ownership management and SELinux relabeling.
      iscsi: {
        // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
        secretRef: {
          withName(name): { source+: { inlineVolumeSpec+: { iscsi+: { secretRef+: { name: name } } } } },
          withNamespace(namespace): { source+: { inlineVolumeSpec+: { iscsi+: { secretRef+: { namespace: namespace } } } } }
        },
        withChapAuthDiscovery(chapAuthDiscovery): { source+: { inlineVolumeSpec+: { iscsi+: { chapAuthDiscovery: chapAuthDiscovery } } } },
        withChapAuthSession(chapAuthSession): { source+: { inlineVolumeSpec+: { iscsi+: { chapAuthSession: chapAuthSession } } } },
        withFsType(fsType): { source+: { inlineVolumeSpec+: { iscsi+: { fsType: fsType } } } },
        withInitiatorName(initiatorName): { source+: { inlineVolumeSpec+: { iscsi+: { initiatorName: initiatorName } } } },
        withIqn(iqn): { source+: { inlineVolumeSpec+: { iscsi+: { iqn: iqn } } } },
        withIscsiInterface(iscsiInterface): { source+: { inlineVolumeSpec+: { iscsi+: { iscsiInterface: iscsiInterface } } } },
        withLun(lun): { source+: { inlineVolumeSpec+: { iscsi+: { lun: lun } } } },
        withPortals(portals): { source+: { inlineVolumeSpec+: { iscsi+: { portals: if std.isArray(v=portals) then portals else [portals] } } } },
        withPortalsMixin(portals): { source+: { inlineVolumeSpec+: { iscsi+: { portals+: if std.isArray(v=portals) then portals else [portals] } } } },
        withReadOnly(readOnly): { source+: { inlineVolumeSpec+: { iscsi+: { readOnly: readOnly } } } },
        withTargetPortal(targetPortal): { source+: { inlineVolumeSpec+: { iscsi+: { targetPortal: targetPortal } } } }
      },
      // Local represents directly-attached storage with node affinity (Beta feature)
      'local': {
        withFsType(fsType): { source+: { inlineVolumeSpec+: { 'local'+: { fsType: fsType } } } },
        withPath(path): { source+: { inlineVolumeSpec+: { 'local'+: { path: path } } } }
      },
      // Represents an NFS mount that lasts the lifetime of a pod. NFS volumes do not support ownership management or SELinux relabeling.
      nfs: {
        withPath(path): { source+: { inlineVolumeSpec+: { nfs+: { path: path } } } },
        withReadOnly(readOnly): { source+: { inlineVolumeSpec+: { nfs+: { readOnly: readOnly } } } },
        withServer(server): { source+: { inlineVolumeSpec+: { nfs+: { server: server } } } }
      },
      // VolumeNodeAffinity defines constraints that limit what nodes this volume can be accessed from.
      nodeAffinity: { required: {
        withNodeSelectorTerms(nodeSelectorTerms): { source+: { inlineVolumeSpec+: { nodeAffinity+: { required+: { nodeSelectorTerms: if std.isArray(v=nodeSelectorTerms) then nodeSelectorTerms else [nodeSelectorTerms] } } } } },
        withNodeSelectorTermsMixin(nodeSelectorTerms): { source+: { inlineVolumeSpec+: { nodeAffinity+: { required+: { nodeSelectorTerms+: if std.isArray(v=nodeSelectorTerms) then nodeSelectorTerms else [nodeSelectorTerms] } } } } }
      } },
      // Represents a Photon Controller persistent disk resource.
      photonPersistentDisk: {
        withFsType(fsType): { source+: { inlineVolumeSpec+: { photonPersistentDisk+: { fsType: fsType } } } },
        withPdID(pdID): { source+: { inlineVolumeSpec+: { photonPersistentDisk+: { pdID: pdID } } } }
      },
      // PortworxVolumeSource represents a Portworx volume resource.
      portworxVolume: {
        withFsType(fsType): { source+: { inlineVolumeSpec+: { portworxVolume+: { fsType: fsType } } } },
        withReadOnly(readOnly): { source+: { inlineVolumeSpec+: { portworxVolume+: { readOnly: readOnly } } } },
        withVolumeID(volumeID): { source+: { inlineVolumeSpec+: { portworxVolume+: { volumeID: volumeID } } } }
      },
      // Represents a Quobyte mount that lasts the lifetime of a pod. Quobyte volumes do not support ownership management or SELinux relabeling.
      quobyte: {
        withGroup(group): { source+: { inlineVolumeSpec+: { quobyte+: { group: group } } } },
        withReadOnly(readOnly): { source+: { inlineVolumeSpec+: { quobyte+: { readOnly: readOnly } } } },
        withRegistry(registry): { source+: { inlineVolumeSpec+: { quobyte+: { registry: registry } } } },
        withTenant(tenant): { source+: { inlineVolumeSpec+: { quobyte+: { tenant: tenant } } } },
        withUser(user): { source+: { inlineVolumeSpec+: { quobyte+: { user: user } } } },
        withVolume(volume): { source+: { inlineVolumeSpec+: { quobyte+: { volume: volume } } } }
      },
      // Represents a Rados Block Device mount that lasts the lifetime of a pod. RBD volumes support ownership management and SELinux relabeling.
      rbd: {
        // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
        secretRef: {
          withName(name): { source+: { inlineVolumeSpec+: { rbd+: { secretRef+: { name: name } } } } },
          withNamespace(namespace): { source+: { inlineVolumeSpec+: { rbd+: { secretRef+: { namespace: namespace } } } } }
        },
        withFsType(fsType): { source+: { inlineVolumeSpec+: { rbd+: { fsType: fsType } } } },
        withImage(image): { source+: { inlineVolumeSpec+: { rbd+: { image: image } } } },
        withKeyring(keyring): { source+: { inlineVolumeSpec+: { rbd+: { keyring: keyring } } } },
        withMonitors(monitors): { source+: { inlineVolumeSpec+: { rbd+: { monitors: if std.isArray(v=monitors) then monitors else [monitors] } } } },
        withMonitorsMixin(monitors): { source+: { inlineVolumeSpec+: { rbd+: { monitors+: if std.isArray(v=monitors) then monitors else [monitors] } } } },
        withPool(pool): { source+: { inlineVolumeSpec+: { rbd+: { pool: pool } } } },
        withReadOnly(readOnly): { source+: { inlineVolumeSpec+: { rbd+: { readOnly: readOnly } } } },
        withUser(user): { source+: { inlineVolumeSpec+: { rbd+: { user: user } } } }
      },
      // ScaleIOPersistentVolumeSource represents a persistent ScaleIO volume
      scaleIO: {
        // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
        secretRef: {
          withName(name): { source+: { inlineVolumeSpec+: { scaleIO+: { secretRef+: { name: name } } } } },
          withNamespace(namespace): { source+: { inlineVolumeSpec+: { scaleIO+: { secretRef+: { namespace: namespace } } } } }
        },
        withFsType(fsType): { source+: { inlineVolumeSpec+: { scaleIO+: { fsType: fsType } } } },
        withGateway(gateway): { source+: { inlineVolumeSpec+: { scaleIO+: { gateway: gateway } } } },
        withProtectionDomain(protectionDomain): { source+: { inlineVolumeSpec+: { scaleIO+: { protectionDomain: protectionDomain } } } },
        withReadOnly(readOnly): { source+: { inlineVolumeSpec+: { scaleIO+: { readOnly: readOnly } } } },
        withSslEnabled(sslEnabled): { source+: { inlineVolumeSpec+: { scaleIO+: { sslEnabled: sslEnabled } } } },
        withStorageMode(storageMode): { source+: { inlineVolumeSpec+: { scaleIO+: { storageMode: storageMode } } } },
        withStoragePool(storagePool): { source+: { inlineVolumeSpec+: { scaleIO+: { storagePool: storagePool } } } },
        withSystem(system): { source+: { inlineVolumeSpec+: { scaleIO+: { system: system } } } },
        withVolumeName(volumeName): { source+: { inlineVolumeSpec+: { scaleIO+: { volumeName: volumeName } } } }
      },
      // Represents a StorageOS persistent volume resource.
      storageos: {
        // ObjectReference contains enough information to let you inspect or modify the referred object.
        secretRef: {
          withFieldPath(fieldPath): { source+: { inlineVolumeSpec+: { storageos+: { secretRef+: { fieldPath: fieldPath } } } } },
          withKind(kind): { source+: { inlineVolumeSpec+: { storageos+: { secretRef+: { kind: kind } } } } },
          withName(name): { source+: { inlineVolumeSpec+: { storageos+: { secretRef+: { name: name } } } } },
          withNamespace(namespace): { source+: { inlineVolumeSpec+: { storageos+: { secretRef+: { namespace: namespace } } } } },
          withResourceVersion(resourceVersion): { source+: { inlineVolumeSpec+: { storageos+: { secretRef+: { resourceVersion: resourceVersion } } } } },
          withUid(uid): { source+: { inlineVolumeSpec+: { storageos+: { secretRef+: { uid: uid } } } } }
        },
        withFsType(fsType): { source+: { inlineVolumeSpec+: { storageos+: { fsType: fsType } } } },
        withReadOnly(readOnly): { source+: { inlineVolumeSpec+: { storageos+: { readOnly: readOnly } } } },
        withVolumeName(volumeName): { source+: { inlineVolumeSpec+: { storageos+: { volumeName: volumeName } } } },
        withVolumeNamespace(volumeNamespace): { source+: { inlineVolumeSpec+: { storageos+: { volumeNamespace: volumeNamespace } } } }
      },
      // Represents a vSphere volume resource.
      vsphereVolume: {
        withFsType(fsType): { source+: { inlineVolumeSpec+: { vsphereVolume+: { fsType: fsType } } } },
        withStoragePolicyID(storagePolicyID): { source+: { inlineVolumeSpec+: { vsphereVolume+: { storagePolicyID: storagePolicyID } } } },
        withStoragePolicyName(storagePolicyName): { source+: { inlineVolumeSpec+: { vsphereVolume+: { storagePolicyName: storagePolicyName } } } },
        withVolumePath(volumePath): { source+: { inlineVolumeSpec+: { vsphereVolume+: { volumePath: volumePath } } } }
      },
      withAccessModes(accessModes): { source+: { inlineVolumeSpec+: { accessModes: if std.isArray(v=accessModes) then accessModes else [accessModes] } } },
      withAccessModesMixin(accessModes): { source+: { inlineVolumeSpec+: { accessModes+: if std.isArray(v=accessModes) then accessModes else [accessModes] } } },
      withCapacity(capacity): { source+: { inlineVolumeSpec+: { capacity: capacity } } },
      withCapacityMixin(capacity): { source+: { inlineVolumeSpec+: { capacity+: capacity } } },
      withMountOptions(mountOptions): { source+: { inlineVolumeSpec+: { mountOptions: if std.isArray(v=mountOptions) then mountOptions else [mountOptions] } } },
      withMountOptionsMixin(mountOptions): { source+: { inlineVolumeSpec+: { mountOptions+: if std.isArray(v=mountOptions) then mountOptions else [mountOptions] } } },
      withPersistentVolumeReclaimPolicy(persistentVolumeReclaimPolicy): { source+: { inlineVolumeSpec+: { persistentVolumeReclaimPolicy: persistentVolumeReclaimPolicy } } },
      withStorageClassName(storageClassName): { source+: { inlineVolumeSpec+: { storageClassName: storageClassName } } },
      withVolumeMode(volumeMode): { source+: { inlineVolumeSpec+: { volumeMode: volumeMode } } }
    },
    withPersistentVolumeName(persistentVolumeName): { source+: { persistentVolumeName: persistentVolumeName } }
  },
  withAttacher(attacher): { attacher: attacher },
  withNodeName(nodeName): { nodeName: nodeName },
  mixin: self
}