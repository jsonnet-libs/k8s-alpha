{
  // new returns an instance of Persistentvolume
  new(name): {
    apiVersion: 'v1',
    kind: 'PersistentVolume'
  } + self.metadata.withName(name=name),
  // ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.
  metadata: {
    // Initializers tracks the progress of initialization.
    initializers: {
      // Status is a return value for calls that don't return other objects.
      result: {
        // StatusDetails is a set of additional properties that MAY be set by the server to provide additional information about a response. The Reason field of a Status object defines what attributes will be set. Clients must ignore fields that do not match the defined type of each attribute, and should assume that any attribute may be empty, invalid, or under defined.
        details: {
          withCauses(causes): { metadata+: { initializers+: { result+: { details+: { causes: if std.isArray(v=causes) then causes else [causes] } } } } },
          withCausesMixin(causes): { metadata+: { initializers+: { result+: { details+: { causes+: if std.isArray(v=causes) then causes else [causes] } } } } },
          withGroup(group): { metadata+: { initializers+: { result+: { details+: { group: group } } } } },
          withKind(kind): { metadata+: { initializers+: { result+: { details+: { kind: kind } } } } },
          withName(name): { metadata+: { initializers+: { result+: { details+: { name: name } } } } },
          withRetryAfterSeconds(retryAfterSeconds): { metadata+: { initializers+: { result+: { details+: { retryAfterSeconds: retryAfterSeconds } } } } },
          withUid(uid): { metadata+: { initializers+: { result+: { details+: { uid: uid } } } } }
        },
        withCode(code): { metadata+: { initializers+: { result+: { code: code } } } },
        withKind(kind): { metadata+: { initializers+: { result+: { kind: kind } } } },
        withMessage(message): { metadata+: { initializers+: { result+: { message: message } } } },
        withMetadata(metadata): { metadata+: { initializers+: { result+: { metadata: metadata } } } },
        withReason(reason): { metadata+: { initializers+: { result+: { reason: reason } } } }
      },
      withPending(pending): { metadata+: { initializers+: { pending: if std.isArray(v=pending) then pending else [pending] } } },
      withPendingMixin(pending): { metadata+: { initializers+: { pending+: if std.isArray(v=pending) then pending else [pending] } } }
    },
    withAnnotations(annotations): { metadata+: { annotations: annotations } },
    withAnnotationsMixin(annotations): { metadata+: { annotations+: annotations } },
    withClusterName(clusterName): { metadata+: { clusterName: clusterName } },
    withCreationTimestamp(creationTimestamp): { metadata+: { creationTimestamp: creationTimestamp } },
    withDeletionGracePeriodSeconds(deletionGracePeriodSeconds): { metadata+: { deletionGracePeriodSeconds: deletionGracePeriodSeconds } },
    withDeletionTimestamp(deletionTimestamp): { metadata+: { deletionTimestamp: deletionTimestamp } },
    withFinalizers(finalizers): { metadata+: { finalizers: if std.isArray(v=finalizers) then finalizers else [finalizers] } },
    withFinalizersMixin(finalizers): { metadata+: { finalizers+: if std.isArray(v=finalizers) then finalizers else [finalizers] } },
    withGenerateName(generateName): { metadata+: { generateName: generateName } },
    withGeneration(generation): { metadata+: { generation: generation } },
    withLabels(labels): { metadata+: { labels: labels } },
    withLabelsMixin(labels): { metadata+: { labels+: labels } },
    withManagedFields(managedFields): { metadata+: { managedFields: if std.isArray(v=managedFields) then managedFields else [managedFields] } },
    withManagedFieldsMixin(managedFields): { metadata+: { managedFields+: if std.isArray(v=managedFields) then managedFields else [managedFields] } },
    withName(name): { metadata+: { name: name } },
    withNamespace(namespace): { metadata+: { namespace: namespace } },
    withOwnerReferences(ownerReferences): { metadata+: { ownerReferences: if std.isArray(v=ownerReferences) then ownerReferences else [ownerReferences] } },
    withOwnerReferencesMixin(ownerReferences): { metadata+: { ownerReferences+: if std.isArray(v=ownerReferences) then ownerReferences else [ownerReferences] } },
    withResourceVersion(resourceVersion): { metadata+: { resourceVersion: resourceVersion } },
    withSelfLink(selfLink): { metadata+: { selfLink: selfLink } },
    withUid(uid): { metadata+: { uid: uid } }
  },
  // PersistentVolumeSpec is the specification of a persistent volume.
  spec: {
    // Represents a Persistent Disk resource in AWS.
    // 
    // An AWS EBS disk must exist before mounting to a container. The disk must also be in the same AWS zone as the kubelet. An AWS EBS disk can only be mounted as read/write once. AWS EBS volumes support ownership management and SELinux relabeling.
    awsElasticBlockStore: {
      withFsType(fsType): { spec+: { awsElasticBlockStore+: { fsType: fsType } } },
      withPartition(partition): { spec+: { awsElasticBlockStore+: { partition: partition } } },
      withReadOnly(readOnly): { spec+: { awsElasticBlockStore+: { readOnly: readOnly } } },
      withVolumeID(volumeID): { spec+: { awsElasticBlockStore+: { volumeID: volumeID } } }
    },
    // AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
    azureDisk: {
      withCachingMode(cachingMode): { spec+: { azureDisk+: { cachingMode: cachingMode } } },
      withDiskName(diskName): { spec+: { azureDisk+: { diskName: diskName } } },
      withDiskURI(diskURI): { spec+: { azureDisk+: { diskURI: diskURI } } },
      withFsType(fsType): { spec+: { azureDisk+: { fsType: fsType } } },
      withKind(kind): { spec+: { azureDisk+: { kind: kind } } },
      withReadOnly(readOnly): { spec+: { azureDisk+: { readOnly: readOnly } } }
    },
    // AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
    azureFile: {
      withReadOnly(readOnly): { spec+: { azureFile+: { readOnly: readOnly } } },
      withSecretName(secretName): { spec+: { azureFile+: { secretName: secretName } } },
      withSecretNamespace(secretNamespace): { spec+: { azureFile+: { secretNamespace: secretNamespace } } },
      withShareName(shareName): { spec+: { azureFile+: { shareName: shareName } } }
    },
    // Represents a Ceph Filesystem mount that lasts the lifetime of a pod Cephfs volumes do not support ownership management or SELinux relabeling.
    cephfs: {
      // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
      secretRef: {
        withName(name): { spec+: { cephfs+: { secretRef+: { name: name } } } },
        withNamespace(namespace): { spec+: { cephfs+: { secretRef+: { namespace: namespace } } } }
      },
      withMonitors(monitors): { spec+: { cephfs+: { monitors: if std.isArray(v=monitors) then monitors else [monitors] } } },
      withMonitorsMixin(monitors): { spec+: { cephfs+: { monitors+: if std.isArray(v=monitors) then monitors else [monitors] } } },
      withPath(path): { spec+: { cephfs+: { path: path } } },
      withReadOnly(readOnly): { spec+: { cephfs+: { readOnly: readOnly } } },
      withSecretFile(secretFile): { spec+: { cephfs+: { secretFile: secretFile } } },
      withUser(user): { spec+: { cephfs+: { user: user } } }
    },
    // Represents a cinder volume resource in Openstack. A Cinder volume must exist before mounting to a container. The volume must also be in the same region as the kubelet. Cinder volumes support ownership management and SELinux relabeling.
    cinder: {
      // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
      secretRef: {
        withName(name): { spec+: { cinder+: { secretRef+: { name: name } } } },
        withNamespace(namespace): { spec+: { cinder+: { secretRef+: { namespace: namespace } } } }
      },
      withFsType(fsType): { spec+: { cinder+: { fsType: fsType } } },
      withReadOnly(readOnly): { spec+: { cinder+: { readOnly: readOnly } } },
      withVolumeID(volumeID): { spec+: { cinder+: { volumeID: volumeID } } }
    },
    // ObjectReference contains enough information to let you inspect or modify the referred object.
    claimRef: {
      withFieldPath(fieldPath): { spec+: { claimRef+: { fieldPath: fieldPath } } },
      withKind(kind): { spec+: { claimRef+: { kind: kind } } },
      withName(name): { spec+: { claimRef+: { name: name } } },
      withNamespace(namespace): { spec+: { claimRef+: { namespace: namespace } } },
      withResourceVersion(resourceVersion): { spec+: { claimRef+: { resourceVersion: resourceVersion } } },
      withUid(uid): { spec+: { claimRef+: { uid: uid } } }
    },
    // Represents storage that is managed by an external CSI volume driver (Beta feature)
    csi: {
      // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
      controllerExpandSecretRef: {
        withName(name): { spec+: { csi+: { controllerExpandSecretRef+: { name: name } } } },
        withNamespace(namespace): { spec+: { csi+: { controllerExpandSecretRef+: { namespace: namespace } } } }
      },
      // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
      controllerPublishSecretRef: {
        withName(name): { spec+: { csi+: { controllerPublishSecretRef+: { name: name } } } },
        withNamespace(namespace): { spec+: { csi+: { controllerPublishSecretRef+: { namespace: namespace } } } }
      },
      // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
      nodePublishSecretRef: {
        withName(name): { spec+: { csi+: { nodePublishSecretRef+: { name: name } } } },
        withNamespace(namespace): { spec+: { csi+: { nodePublishSecretRef+: { namespace: namespace } } } }
      },
      // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
      nodeStageSecretRef: {
        withName(name): { spec+: { csi+: { nodeStageSecretRef+: { name: name } } } },
        withNamespace(namespace): { spec+: { csi+: { nodeStageSecretRef+: { namespace: namespace } } } }
      },
      withDriver(driver): { spec+: { csi+: { driver: driver } } },
      withFsType(fsType): { spec+: { csi+: { fsType: fsType } } },
      withReadOnly(readOnly): { spec+: { csi+: { readOnly: readOnly } } },
      withVolumeAttributes(volumeAttributes): { spec+: { csi+: { volumeAttributes: volumeAttributes } } },
      withVolumeAttributesMixin(volumeAttributes): { spec+: { csi+: { volumeAttributes+: volumeAttributes } } },
      withVolumeHandle(volumeHandle): { spec+: { csi+: { volumeHandle: volumeHandle } } }
    },
    // Represents a Fibre Channel volume. Fibre Channel volumes can only be mounted as read/write once. Fibre Channel volumes support ownership management and SELinux relabeling.
    fc: {
      withFsType(fsType): { spec+: { fc+: { fsType: fsType } } },
      withLun(lun): { spec+: { fc+: { lun: lun } } },
      withReadOnly(readOnly): { spec+: { fc+: { readOnly: readOnly } } },
      withTargetWWNs(targetWWNs): { spec+: { fc+: { targetWWNs: if std.isArray(v=targetWWNs) then targetWWNs else [targetWWNs] } } },
      withTargetWWNsMixin(targetWWNs): { spec+: { fc+: { targetWWNs+: if std.isArray(v=targetWWNs) then targetWWNs else [targetWWNs] } } },
      withWwids(wwids): { spec+: { fc+: { wwids: if std.isArray(v=wwids) then wwids else [wwids] } } },
      withWwidsMixin(wwids): { spec+: { fc+: { wwids+: if std.isArray(v=wwids) then wwids else [wwids] } } }
    },
    // FlexPersistentVolumeSource represents a generic persistent volume resource that is provisioned/attached using an exec based plugin.
    flexVolume: {
      // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
      secretRef: {
        withName(name): { spec+: { flexVolume+: { secretRef+: { name: name } } } },
        withNamespace(namespace): { spec+: { flexVolume+: { secretRef+: { namespace: namespace } } } }
      },
      withDriver(driver): { spec+: { flexVolume+: { driver: driver } } },
      withFsType(fsType): { spec+: { flexVolume+: { fsType: fsType } } },
      withOptions(options): { spec+: { flexVolume+: { options: options } } },
      withOptionsMixin(options): { spec+: { flexVolume+: { options+: options } } },
      withReadOnly(readOnly): { spec+: { flexVolume+: { readOnly: readOnly } } }
    },
    // Represents a Flocker volume mounted by the Flocker agent. One and only one of datasetName and datasetUUID should be set. Flocker volumes do not support ownership management or SELinux relabeling.
    flocker: {
      withDatasetName(datasetName): { spec+: { flocker+: { datasetName: datasetName } } },
      withDatasetUUID(datasetUUID): { spec+: { flocker+: { datasetUUID: datasetUUID } } }
    },
    // Represents a Persistent Disk resource in Google Compute Engine.
    // 
    // A GCE PD must exist before mounting to a container. The disk must also be in the same GCE project and zone as the kubelet. A GCE PD can only be mounted as read/write once or read-only many times. GCE PDs support ownership management and SELinux relabeling.
    gcePersistentDisk: {
      withFsType(fsType): { spec+: { gcePersistentDisk+: { fsType: fsType } } },
      withPartition(partition): { spec+: { gcePersistentDisk+: { partition: partition } } },
      withPdName(pdName): { spec+: { gcePersistentDisk+: { pdName: pdName } } },
      withReadOnly(readOnly): { spec+: { gcePersistentDisk+: { readOnly: readOnly } } }
    },
    // Represents a Glusterfs mount that lasts the lifetime of a pod. Glusterfs volumes do not support ownership management or SELinux relabeling.
    glusterfs: {
      withEndpoints(endpoints): { spec+: { glusterfs+: { endpoints: endpoints } } },
      withEndpointsNamespace(endpointsNamespace): { spec+: { glusterfs+: { endpointsNamespace: endpointsNamespace } } },
      withPath(path): { spec+: { glusterfs+: { path: path } } },
      withReadOnly(readOnly): { spec+: { glusterfs+: { readOnly: readOnly } } }
    },
    // Represents a host path mapped into a pod. Host path volumes do not support ownership management or SELinux relabeling.
    hostPath: {
      withPath(path): { spec+: { hostPath+: { path: path } } },
      withType(type): { spec+: { hostPath+: { type: type } } }
    },
    // ISCSIPersistentVolumeSource represents an ISCSI disk. ISCSI volumes can only be mounted as read/write once. ISCSI volumes support ownership management and SELinux relabeling.
    iscsi: {
      // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
      secretRef: {
        withName(name): { spec+: { iscsi+: { secretRef+: { name: name } } } },
        withNamespace(namespace): { spec+: { iscsi+: { secretRef+: { namespace: namespace } } } }
      },
      withChapAuthDiscovery(chapAuthDiscovery): { spec+: { iscsi+: { chapAuthDiscovery: chapAuthDiscovery } } },
      withChapAuthSession(chapAuthSession): { spec+: { iscsi+: { chapAuthSession: chapAuthSession } } },
      withFsType(fsType): { spec+: { iscsi+: { fsType: fsType } } },
      withInitiatorName(initiatorName): { spec+: { iscsi+: { initiatorName: initiatorName } } },
      withIqn(iqn): { spec+: { iscsi+: { iqn: iqn } } },
      withIscsiInterface(iscsiInterface): { spec+: { iscsi+: { iscsiInterface: iscsiInterface } } },
      withLun(lun): { spec+: { iscsi+: { lun: lun } } },
      withPortals(portals): { spec+: { iscsi+: { portals: if std.isArray(v=portals) then portals else [portals] } } },
      withPortalsMixin(portals): { spec+: { iscsi+: { portals+: if std.isArray(v=portals) then portals else [portals] } } },
      withReadOnly(readOnly): { spec+: { iscsi+: { readOnly: readOnly } } },
      withTargetPortal(targetPortal): { spec+: { iscsi+: { targetPortal: targetPortal } } }
    },
    // Local represents directly-attached storage with node affinity (Beta feature)
    'local': {
      withFsType(fsType): { spec+: { 'local'+: { fsType: fsType } } },
      withPath(path): { spec+: { 'local'+: { path: path } } }
    },
    // Represents an NFS mount that lasts the lifetime of a pod. NFS volumes do not support ownership management or SELinux relabeling.
    nfs: {
      withPath(path): { spec+: { nfs+: { path: path } } },
      withReadOnly(readOnly): { spec+: { nfs+: { readOnly: readOnly } } },
      withServer(server): { spec+: { nfs+: { server: server } } }
    },
    // VolumeNodeAffinity defines constraints that limit what nodes this volume can be accessed from.
    nodeAffinity: { required: {
      withNodeSelectorTerms(nodeSelectorTerms): { spec+: { nodeAffinity+: { required+: { nodeSelectorTerms: if std.isArray(v=nodeSelectorTerms) then nodeSelectorTerms else [nodeSelectorTerms] } } } },
      withNodeSelectorTermsMixin(nodeSelectorTerms): { spec+: { nodeAffinity+: { required+: { nodeSelectorTerms+: if std.isArray(v=nodeSelectorTerms) then nodeSelectorTerms else [nodeSelectorTerms] } } } }
    } },
    // Represents a Photon Controller persistent disk resource.
    photonPersistentDisk: {
      withFsType(fsType): { spec+: { photonPersistentDisk+: { fsType: fsType } } },
      withPdID(pdID): { spec+: { photonPersistentDisk+: { pdID: pdID } } }
    },
    // PortworxVolumeSource represents a Portworx volume resource.
    portworxVolume: {
      withFsType(fsType): { spec+: { portworxVolume+: { fsType: fsType } } },
      withReadOnly(readOnly): { spec+: { portworxVolume+: { readOnly: readOnly } } },
      withVolumeID(volumeID): { spec+: { portworxVolume+: { volumeID: volumeID } } }
    },
    // Represents a Quobyte mount that lasts the lifetime of a pod. Quobyte volumes do not support ownership management or SELinux relabeling.
    quobyte: {
      withGroup(group): { spec+: { quobyte+: { group: group } } },
      withReadOnly(readOnly): { spec+: { quobyte+: { readOnly: readOnly } } },
      withRegistry(registry): { spec+: { quobyte+: { registry: registry } } },
      withTenant(tenant): { spec+: { quobyte+: { tenant: tenant } } },
      withUser(user): { spec+: { quobyte+: { user: user } } },
      withVolume(volume): { spec+: { quobyte+: { volume: volume } } }
    },
    // Represents a Rados Block Device mount that lasts the lifetime of a pod. RBD volumes support ownership management and SELinux relabeling.
    rbd: {
      // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
      secretRef: {
        withName(name): { spec+: { rbd+: { secretRef+: { name: name } } } },
        withNamespace(namespace): { spec+: { rbd+: { secretRef+: { namespace: namespace } } } }
      },
      withFsType(fsType): { spec+: { rbd+: { fsType: fsType } } },
      withImage(image): { spec+: { rbd+: { image: image } } },
      withKeyring(keyring): { spec+: { rbd+: { keyring: keyring } } },
      withMonitors(monitors): { spec+: { rbd+: { monitors: if std.isArray(v=monitors) then monitors else [monitors] } } },
      withMonitorsMixin(monitors): { spec+: { rbd+: { monitors+: if std.isArray(v=monitors) then monitors else [monitors] } } },
      withPool(pool): { spec+: { rbd+: { pool: pool } } },
      withReadOnly(readOnly): { spec+: { rbd+: { readOnly: readOnly } } },
      withUser(user): { spec+: { rbd+: { user: user } } }
    },
    // ScaleIOPersistentVolumeSource represents a persistent ScaleIO volume
    scaleIO: {
      // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
      secretRef: {
        withName(name): { spec+: { scaleIO+: { secretRef+: { name: name } } } },
        withNamespace(namespace): { spec+: { scaleIO+: { secretRef+: { namespace: namespace } } } }
      },
      withFsType(fsType): { spec+: { scaleIO+: { fsType: fsType } } },
      withGateway(gateway): { spec+: { scaleIO+: { gateway: gateway } } },
      withProtectionDomain(protectionDomain): { spec+: { scaleIO+: { protectionDomain: protectionDomain } } },
      withReadOnly(readOnly): { spec+: { scaleIO+: { readOnly: readOnly } } },
      withSslEnabled(sslEnabled): { spec+: { scaleIO+: { sslEnabled: sslEnabled } } },
      withStorageMode(storageMode): { spec+: { scaleIO+: { storageMode: storageMode } } },
      withStoragePool(storagePool): { spec+: { scaleIO+: { storagePool: storagePool } } },
      withSystem(system): { spec+: { scaleIO+: { system: system } } },
      withVolumeName(volumeName): { spec+: { scaleIO+: { volumeName: volumeName } } }
    },
    // Represents a StorageOS persistent volume resource.
    storageos: {
      // ObjectReference contains enough information to let you inspect or modify the referred object.
      secretRef: {
        withFieldPath(fieldPath): { spec+: { storageos+: { secretRef+: { fieldPath: fieldPath } } } },
        withKind(kind): { spec+: { storageos+: { secretRef+: { kind: kind } } } },
        withName(name): { spec+: { storageos+: { secretRef+: { name: name } } } },
        withNamespace(namespace): { spec+: { storageos+: { secretRef+: { namespace: namespace } } } },
        withResourceVersion(resourceVersion): { spec+: { storageos+: { secretRef+: { resourceVersion: resourceVersion } } } },
        withUid(uid): { spec+: { storageos+: { secretRef+: { uid: uid } } } }
      },
      withFsType(fsType): { spec+: { storageos+: { fsType: fsType } } },
      withReadOnly(readOnly): { spec+: { storageos+: { readOnly: readOnly } } },
      withVolumeName(volumeName): { spec+: { storageos+: { volumeName: volumeName } } },
      withVolumeNamespace(volumeNamespace): { spec+: { storageos+: { volumeNamespace: volumeNamespace } } }
    },
    // Represents a vSphere volume resource.
    vsphereVolume: {
      withFsType(fsType): { spec+: { vsphereVolume+: { fsType: fsType } } },
      withStoragePolicyID(storagePolicyID): { spec+: { vsphereVolume+: { storagePolicyID: storagePolicyID } } },
      withStoragePolicyName(storagePolicyName): { spec+: { vsphereVolume+: { storagePolicyName: storagePolicyName } } },
      withVolumePath(volumePath): { spec+: { vsphereVolume+: { volumePath: volumePath } } }
    },
    withAccessModes(accessModes): { spec+: { accessModes: if std.isArray(v=accessModes) then accessModes else [accessModes] } },
    withAccessModesMixin(accessModes): { spec+: { accessModes+: if std.isArray(v=accessModes) then accessModes else [accessModes] } },
    withCapacity(capacity): { spec+: { capacity: capacity } },
    withCapacityMixin(capacity): { spec+: { capacity+: capacity } },
    withMountOptions(mountOptions): { spec+: { mountOptions: if std.isArray(v=mountOptions) then mountOptions else [mountOptions] } },
    withMountOptionsMixin(mountOptions): { spec+: { mountOptions+: if std.isArray(v=mountOptions) then mountOptions else [mountOptions] } },
    withPersistentVolumeReclaimPolicy(persistentVolumeReclaimPolicy): { spec+: { persistentVolumeReclaimPolicy: persistentVolumeReclaimPolicy } },
    withStorageClassName(storageClassName): { spec+: { storageClassName: storageClassName } },
    withVolumeMode(volumeMode): { spec+: { volumeMode: volumeMode } }
  },
  mixin: self
}