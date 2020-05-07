{
  // new returns an instance of Volumeattachment
  new(name): {
    apiVersion: 'storage.k8s.io/v1alpha1',
    kind: 'VolumeAttachment'
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
  // VolumeAttachmentSpec is the specification of a VolumeAttachment request.
  spec: {
    // VolumeAttachmentSource represents a volume that should be attached. Right now only PersistenVolumes can be attached via external attacher, in future we may allow also inline volumes in pods. Exactly one member can be set.
    source: {
      // PersistentVolumeSpec is the specification of a persistent volume.
      inlineVolumeSpec: {
        // Represents a Persistent Disk resource in AWS.
        // 
        // An AWS EBS disk must exist before mounting to a container. The disk must also be in the same AWS zone as the kubelet. An AWS EBS disk can only be mounted as read/write once. AWS EBS volumes support ownership management and SELinux relabeling.
        awsElasticBlockStore: {
          withFsType(fsType): { spec+: { source+: { inlineVolumeSpec+: { awsElasticBlockStore+: { fsType: fsType } } } } },
          withPartition(partition): { spec+: { source+: { inlineVolumeSpec+: { awsElasticBlockStore+: { partition: partition } } } } },
          withReadOnly(readOnly): { spec+: { source+: { inlineVolumeSpec+: { awsElasticBlockStore+: { readOnly: readOnly } } } } },
          withVolumeID(volumeID): { spec+: { source+: { inlineVolumeSpec+: { awsElasticBlockStore+: { volumeID: volumeID } } } } }
        },
        // AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
        azureDisk: {
          withCachingMode(cachingMode): { spec+: { source+: { inlineVolumeSpec+: { azureDisk+: { cachingMode: cachingMode } } } } },
          withDiskName(diskName): { spec+: { source+: { inlineVolumeSpec+: { azureDisk+: { diskName: diskName } } } } },
          withDiskURI(diskURI): { spec+: { source+: { inlineVolumeSpec+: { azureDisk+: { diskURI: diskURI } } } } },
          withFsType(fsType): { spec+: { source+: { inlineVolumeSpec+: { azureDisk+: { fsType: fsType } } } } },
          withKind(kind): { spec+: { source+: { inlineVolumeSpec+: { azureDisk+: { kind: kind } } } } },
          withReadOnly(readOnly): { spec+: { source+: { inlineVolumeSpec+: { azureDisk+: { readOnly: readOnly } } } } }
        },
        // AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
        azureFile: {
          withReadOnly(readOnly): { spec+: { source+: { inlineVolumeSpec+: { azureFile+: { readOnly: readOnly } } } } },
          withSecretName(secretName): { spec+: { source+: { inlineVolumeSpec+: { azureFile+: { secretName: secretName } } } } },
          withSecretNamespace(secretNamespace): { spec+: { source+: { inlineVolumeSpec+: { azureFile+: { secretNamespace: secretNamespace } } } } },
          withShareName(shareName): { spec+: { source+: { inlineVolumeSpec+: { azureFile+: { shareName: shareName } } } } }
        },
        // Represents a Ceph Filesystem mount that lasts the lifetime of a pod Cephfs volumes do not support ownership management or SELinux relabeling.
        cephfs: {
          // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
          secretRef: {
            withName(name): { spec+: { source+: { inlineVolumeSpec+: { cephfs+: { secretRef+: { name: name } } } } } },
            withNamespace(namespace): { spec+: { source+: { inlineVolumeSpec+: { cephfs+: { secretRef+: { namespace: namespace } } } } } }
          },
          withMonitors(monitors): { spec+: { source+: { inlineVolumeSpec+: { cephfs+: { monitors: if std.isArray(v=monitors) then monitors else [monitors] } } } } },
          withMonitorsMixin(monitors): { spec+: { source+: { inlineVolumeSpec+: { cephfs+: { monitors+: if std.isArray(v=monitors) then monitors else [monitors] } } } } },
          withPath(path): { spec+: { source+: { inlineVolumeSpec+: { cephfs+: { path: path } } } } },
          withReadOnly(readOnly): { spec+: { source+: { inlineVolumeSpec+: { cephfs+: { readOnly: readOnly } } } } },
          withSecretFile(secretFile): { spec+: { source+: { inlineVolumeSpec+: { cephfs+: { secretFile: secretFile } } } } },
          withUser(user): { spec+: { source+: { inlineVolumeSpec+: { cephfs+: { user: user } } } } }
        },
        // Represents a cinder volume resource in Openstack. A Cinder volume must exist before mounting to a container. The volume must also be in the same region as the kubelet. Cinder volumes support ownership management and SELinux relabeling.
        cinder: {
          // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
          secretRef: {
            withName(name): { spec+: { source+: { inlineVolumeSpec+: { cinder+: { secretRef+: { name: name } } } } } },
            withNamespace(namespace): { spec+: { source+: { inlineVolumeSpec+: { cinder+: { secretRef+: { namespace: namespace } } } } } }
          },
          withFsType(fsType): { spec+: { source+: { inlineVolumeSpec+: { cinder+: { fsType: fsType } } } } },
          withReadOnly(readOnly): { spec+: { source+: { inlineVolumeSpec+: { cinder+: { readOnly: readOnly } } } } },
          withVolumeID(volumeID): { spec+: { source+: { inlineVolumeSpec+: { cinder+: { volumeID: volumeID } } } } }
        },
        // ObjectReference contains enough information to let you inspect or modify the referred object.
        claimRef: {
          withFieldPath(fieldPath): { spec+: { source+: { inlineVolumeSpec+: { claimRef+: { fieldPath: fieldPath } } } } },
          withKind(kind): { spec+: { source+: { inlineVolumeSpec+: { claimRef+: { kind: kind } } } } },
          withName(name): { spec+: { source+: { inlineVolumeSpec+: { claimRef+: { name: name } } } } },
          withNamespace(namespace): { spec+: { source+: { inlineVolumeSpec+: { claimRef+: { namespace: namespace } } } } },
          withResourceVersion(resourceVersion): { spec+: { source+: { inlineVolumeSpec+: { claimRef+: { resourceVersion: resourceVersion } } } } },
          withUid(uid): { spec+: { source+: { inlineVolumeSpec+: { claimRef+: { uid: uid } } } } }
        },
        // Represents storage that is managed by an external CSI volume driver (Beta feature)
        csi: {
          // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
          controllerExpandSecretRef: {
            withName(name): { spec+: { source+: { inlineVolumeSpec+: { csi+: { controllerExpandSecretRef+: { name: name } } } } } },
            withNamespace(namespace): { spec+: { source+: { inlineVolumeSpec+: { csi+: { controllerExpandSecretRef+: { namespace: namespace } } } } } }
          },
          // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
          controllerPublishSecretRef: {
            withName(name): { spec+: { source+: { inlineVolumeSpec+: { csi+: { controllerPublishSecretRef+: { name: name } } } } } },
            withNamespace(namespace): { spec+: { source+: { inlineVolumeSpec+: { csi+: { controllerPublishSecretRef+: { namespace: namespace } } } } } }
          },
          // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
          nodePublishSecretRef: {
            withName(name): { spec+: { source+: { inlineVolumeSpec+: { csi+: { nodePublishSecretRef+: { name: name } } } } } },
            withNamespace(namespace): { spec+: { source+: { inlineVolumeSpec+: { csi+: { nodePublishSecretRef+: { namespace: namespace } } } } } }
          },
          // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
          nodeStageSecretRef: {
            withName(name): { spec+: { source+: { inlineVolumeSpec+: { csi+: { nodeStageSecretRef+: { name: name } } } } } },
            withNamespace(namespace): { spec+: { source+: { inlineVolumeSpec+: { csi+: { nodeStageSecretRef+: { namespace: namespace } } } } } }
          },
          withDriver(driver): { spec+: { source+: { inlineVolumeSpec+: { csi+: { driver: driver } } } } },
          withFsType(fsType): { spec+: { source+: { inlineVolumeSpec+: { csi+: { fsType: fsType } } } } },
          withReadOnly(readOnly): { spec+: { source+: { inlineVolumeSpec+: { csi+: { readOnly: readOnly } } } } },
          withVolumeAttributes(volumeAttributes): { spec+: { source+: { inlineVolumeSpec+: { csi+: { volumeAttributes: volumeAttributes } } } } },
          withVolumeAttributesMixin(volumeAttributes): { spec+: { source+: { inlineVolumeSpec+: { csi+: { volumeAttributes+: volumeAttributes } } } } },
          withVolumeHandle(volumeHandle): { spec+: { source+: { inlineVolumeSpec+: { csi+: { volumeHandle: volumeHandle } } } } }
        },
        // Represents a Fibre Channel volume. Fibre Channel volumes can only be mounted as read/write once. Fibre Channel volumes support ownership management and SELinux relabeling.
        fc: {
          withFsType(fsType): { spec+: { source+: { inlineVolumeSpec+: { fc+: { fsType: fsType } } } } },
          withLun(lun): { spec+: { source+: { inlineVolumeSpec+: { fc+: { lun: lun } } } } },
          withReadOnly(readOnly): { spec+: { source+: { inlineVolumeSpec+: { fc+: { readOnly: readOnly } } } } },
          withTargetWWNs(targetWWNs): { spec+: { source+: { inlineVolumeSpec+: { fc+: { targetWWNs: if std.isArray(v=targetWWNs) then targetWWNs else [targetWWNs] } } } } },
          withTargetWWNsMixin(targetWWNs): { spec+: { source+: { inlineVolumeSpec+: { fc+: { targetWWNs+: if std.isArray(v=targetWWNs) then targetWWNs else [targetWWNs] } } } } },
          withWwids(wwids): { spec+: { source+: { inlineVolumeSpec+: { fc+: { wwids: if std.isArray(v=wwids) then wwids else [wwids] } } } } },
          withWwidsMixin(wwids): { spec+: { source+: { inlineVolumeSpec+: { fc+: { wwids+: if std.isArray(v=wwids) then wwids else [wwids] } } } } }
        },
        // FlexPersistentVolumeSource represents a generic persistent volume resource that is provisioned/attached using an exec based plugin.
        flexVolume: {
          // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
          secretRef: {
            withName(name): { spec+: { source+: { inlineVolumeSpec+: { flexVolume+: { secretRef+: { name: name } } } } } },
            withNamespace(namespace): { spec+: { source+: { inlineVolumeSpec+: { flexVolume+: { secretRef+: { namespace: namespace } } } } } }
          },
          withDriver(driver): { spec+: { source+: { inlineVolumeSpec+: { flexVolume+: { driver: driver } } } } },
          withFsType(fsType): { spec+: { source+: { inlineVolumeSpec+: { flexVolume+: { fsType: fsType } } } } },
          withOptions(options): { spec+: { source+: { inlineVolumeSpec+: { flexVolume+: { options: options } } } } },
          withOptionsMixin(options): { spec+: { source+: { inlineVolumeSpec+: { flexVolume+: { options+: options } } } } },
          withReadOnly(readOnly): { spec+: { source+: { inlineVolumeSpec+: { flexVolume+: { readOnly: readOnly } } } } }
        },
        // Represents a Flocker volume mounted by the Flocker agent. One and only one of datasetName and datasetUUID should be set. Flocker volumes do not support ownership management or SELinux relabeling.
        flocker: {
          withDatasetName(datasetName): { spec+: { source+: { inlineVolumeSpec+: { flocker+: { datasetName: datasetName } } } } },
          withDatasetUUID(datasetUUID): { spec+: { source+: { inlineVolumeSpec+: { flocker+: { datasetUUID: datasetUUID } } } } }
        },
        // Represents a Persistent Disk resource in Google Compute Engine.
        // 
        // A GCE PD must exist before mounting to a container. The disk must also be in the same GCE project and zone as the kubelet. A GCE PD can only be mounted as read/write once or read-only many times. GCE PDs support ownership management and SELinux relabeling.
        gcePersistentDisk: {
          withFsType(fsType): { spec+: { source+: { inlineVolumeSpec+: { gcePersistentDisk+: { fsType: fsType } } } } },
          withPartition(partition): { spec+: { source+: { inlineVolumeSpec+: { gcePersistentDisk+: { partition: partition } } } } },
          withPdName(pdName): { spec+: { source+: { inlineVolumeSpec+: { gcePersistentDisk+: { pdName: pdName } } } } },
          withReadOnly(readOnly): { spec+: { source+: { inlineVolumeSpec+: { gcePersistentDisk+: { readOnly: readOnly } } } } }
        },
        // Represents a Glusterfs mount that lasts the lifetime of a pod. Glusterfs volumes do not support ownership management or SELinux relabeling.
        glusterfs: {
          withEndpoints(endpoints): { spec+: { source+: { inlineVolumeSpec+: { glusterfs+: { endpoints: endpoints } } } } },
          withEndpointsNamespace(endpointsNamespace): { spec+: { source+: { inlineVolumeSpec+: { glusterfs+: { endpointsNamespace: endpointsNamespace } } } } },
          withPath(path): { spec+: { source+: { inlineVolumeSpec+: { glusterfs+: { path: path } } } } },
          withReadOnly(readOnly): { spec+: { source+: { inlineVolumeSpec+: { glusterfs+: { readOnly: readOnly } } } } }
        },
        // Represents a host path mapped into a pod. Host path volumes do not support ownership management or SELinux relabeling.
        hostPath: {
          withPath(path): { spec+: { source+: { inlineVolumeSpec+: { hostPath+: { path: path } } } } },
          withType(type): { spec+: { source+: { inlineVolumeSpec+: { hostPath+: { type: type } } } } }
        },
        // ISCSIPersistentVolumeSource represents an ISCSI disk. ISCSI volumes can only be mounted as read/write once. ISCSI volumes support ownership management and SELinux relabeling.
        iscsi: {
          // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
          secretRef: {
            withName(name): { spec+: { source+: { inlineVolumeSpec+: { iscsi+: { secretRef+: { name: name } } } } } },
            withNamespace(namespace): { spec+: { source+: { inlineVolumeSpec+: { iscsi+: { secretRef+: { namespace: namespace } } } } } }
          },
          withChapAuthDiscovery(chapAuthDiscovery): { spec+: { source+: { inlineVolumeSpec+: { iscsi+: { chapAuthDiscovery: chapAuthDiscovery } } } } },
          withChapAuthSession(chapAuthSession): { spec+: { source+: { inlineVolumeSpec+: { iscsi+: { chapAuthSession: chapAuthSession } } } } },
          withFsType(fsType): { spec+: { source+: { inlineVolumeSpec+: { iscsi+: { fsType: fsType } } } } },
          withInitiatorName(initiatorName): { spec+: { source+: { inlineVolumeSpec+: { iscsi+: { initiatorName: initiatorName } } } } },
          withIqn(iqn): { spec+: { source+: { inlineVolumeSpec+: { iscsi+: { iqn: iqn } } } } },
          withIscsiInterface(iscsiInterface): { spec+: { source+: { inlineVolumeSpec+: { iscsi+: { iscsiInterface: iscsiInterface } } } } },
          withLun(lun): { spec+: { source+: { inlineVolumeSpec+: { iscsi+: { lun: lun } } } } },
          withPortals(portals): { spec+: { source+: { inlineVolumeSpec+: { iscsi+: { portals: if std.isArray(v=portals) then portals else [portals] } } } } },
          withPortalsMixin(portals): { spec+: { source+: { inlineVolumeSpec+: { iscsi+: { portals+: if std.isArray(v=portals) then portals else [portals] } } } } },
          withReadOnly(readOnly): { spec+: { source+: { inlineVolumeSpec+: { iscsi+: { readOnly: readOnly } } } } },
          withTargetPortal(targetPortal): { spec+: { source+: { inlineVolumeSpec+: { iscsi+: { targetPortal: targetPortal } } } } }
        },
        // Local represents directly-attached storage with node affinity (Beta feature)
        'local': {
          withFsType(fsType): { spec+: { source+: { inlineVolumeSpec+: { 'local'+: { fsType: fsType } } } } },
          withPath(path): { spec+: { source+: { inlineVolumeSpec+: { 'local'+: { path: path } } } } }
        },
        // Represents an NFS mount that lasts the lifetime of a pod. NFS volumes do not support ownership management or SELinux relabeling.
        nfs: {
          withPath(path): { spec+: { source+: { inlineVolumeSpec+: { nfs+: { path: path } } } } },
          withReadOnly(readOnly): { spec+: { source+: { inlineVolumeSpec+: { nfs+: { readOnly: readOnly } } } } },
          withServer(server): { spec+: { source+: { inlineVolumeSpec+: { nfs+: { server: server } } } } }
        },
        // VolumeNodeAffinity defines constraints that limit what nodes this volume can be accessed from.
        nodeAffinity: { required: {
          withNodeSelectorTerms(nodeSelectorTerms): { spec+: { source+: { inlineVolumeSpec+: { nodeAffinity+: { required+: { nodeSelectorTerms: if std.isArray(v=nodeSelectorTerms) then nodeSelectorTerms else [nodeSelectorTerms] } } } } } },
          withNodeSelectorTermsMixin(nodeSelectorTerms): { spec+: { source+: { inlineVolumeSpec+: { nodeAffinity+: { required+: { nodeSelectorTerms+: if std.isArray(v=nodeSelectorTerms) then nodeSelectorTerms else [nodeSelectorTerms] } } } } } }
        } },
        // Represents a Photon Controller persistent disk resource.
        photonPersistentDisk: {
          withFsType(fsType): { spec+: { source+: { inlineVolumeSpec+: { photonPersistentDisk+: { fsType: fsType } } } } },
          withPdID(pdID): { spec+: { source+: { inlineVolumeSpec+: { photonPersistentDisk+: { pdID: pdID } } } } }
        },
        // PortworxVolumeSource represents a Portworx volume resource.
        portworxVolume: {
          withFsType(fsType): { spec+: { source+: { inlineVolumeSpec+: { portworxVolume+: { fsType: fsType } } } } },
          withReadOnly(readOnly): { spec+: { source+: { inlineVolumeSpec+: { portworxVolume+: { readOnly: readOnly } } } } },
          withVolumeID(volumeID): { spec+: { source+: { inlineVolumeSpec+: { portworxVolume+: { volumeID: volumeID } } } } }
        },
        // Represents a Quobyte mount that lasts the lifetime of a pod. Quobyte volumes do not support ownership management or SELinux relabeling.
        quobyte: {
          withGroup(group): { spec+: { source+: { inlineVolumeSpec+: { quobyte+: { group: group } } } } },
          withReadOnly(readOnly): { spec+: { source+: { inlineVolumeSpec+: { quobyte+: { readOnly: readOnly } } } } },
          withRegistry(registry): { spec+: { source+: { inlineVolumeSpec+: { quobyte+: { registry: registry } } } } },
          withTenant(tenant): { spec+: { source+: { inlineVolumeSpec+: { quobyte+: { tenant: tenant } } } } },
          withUser(user): { spec+: { source+: { inlineVolumeSpec+: { quobyte+: { user: user } } } } },
          withVolume(volume): { spec+: { source+: { inlineVolumeSpec+: { quobyte+: { volume: volume } } } } }
        },
        // Represents a Rados Block Device mount that lasts the lifetime of a pod. RBD volumes support ownership management and SELinux relabeling.
        rbd: {
          // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
          secretRef: {
            withName(name): { spec+: { source+: { inlineVolumeSpec+: { rbd+: { secretRef+: { name: name } } } } } },
            withNamespace(namespace): { spec+: { source+: { inlineVolumeSpec+: { rbd+: { secretRef+: { namespace: namespace } } } } } }
          },
          withFsType(fsType): { spec+: { source+: { inlineVolumeSpec+: { rbd+: { fsType: fsType } } } } },
          withImage(image): { spec+: { source+: { inlineVolumeSpec+: { rbd+: { image: image } } } } },
          withKeyring(keyring): { spec+: { source+: { inlineVolumeSpec+: { rbd+: { keyring: keyring } } } } },
          withMonitors(monitors): { spec+: { source+: { inlineVolumeSpec+: { rbd+: { monitors: if std.isArray(v=monitors) then monitors else [monitors] } } } } },
          withMonitorsMixin(monitors): { spec+: { source+: { inlineVolumeSpec+: { rbd+: { monitors+: if std.isArray(v=monitors) then monitors else [monitors] } } } } },
          withPool(pool): { spec+: { source+: { inlineVolumeSpec+: { rbd+: { pool: pool } } } } },
          withReadOnly(readOnly): { spec+: { source+: { inlineVolumeSpec+: { rbd+: { readOnly: readOnly } } } } },
          withUser(user): { spec+: { source+: { inlineVolumeSpec+: { rbd+: { user: user } } } } }
        },
        // ScaleIOPersistentVolumeSource represents a persistent ScaleIO volume
        scaleIO: {
          // SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
          secretRef: {
            withName(name): { spec+: { source+: { inlineVolumeSpec+: { scaleIO+: { secretRef+: { name: name } } } } } },
            withNamespace(namespace): { spec+: { source+: { inlineVolumeSpec+: { scaleIO+: { secretRef+: { namespace: namespace } } } } } }
          },
          withFsType(fsType): { spec+: { source+: { inlineVolumeSpec+: { scaleIO+: { fsType: fsType } } } } },
          withGateway(gateway): { spec+: { source+: { inlineVolumeSpec+: { scaleIO+: { gateway: gateway } } } } },
          withProtectionDomain(protectionDomain): { spec+: { source+: { inlineVolumeSpec+: { scaleIO+: { protectionDomain: protectionDomain } } } } },
          withReadOnly(readOnly): { spec+: { source+: { inlineVolumeSpec+: { scaleIO+: { readOnly: readOnly } } } } },
          withSslEnabled(sslEnabled): { spec+: { source+: { inlineVolumeSpec+: { scaleIO+: { sslEnabled: sslEnabled } } } } },
          withStorageMode(storageMode): { spec+: { source+: { inlineVolumeSpec+: { scaleIO+: { storageMode: storageMode } } } } },
          withStoragePool(storagePool): { spec+: { source+: { inlineVolumeSpec+: { scaleIO+: { storagePool: storagePool } } } } },
          withSystem(system): { spec+: { source+: { inlineVolumeSpec+: { scaleIO+: { system: system } } } } },
          withVolumeName(volumeName): { spec+: { source+: { inlineVolumeSpec+: { scaleIO+: { volumeName: volumeName } } } } }
        },
        // Represents a StorageOS persistent volume resource.
        storageos: {
          // ObjectReference contains enough information to let you inspect or modify the referred object.
          secretRef: {
            withFieldPath(fieldPath): { spec+: { source+: { inlineVolumeSpec+: { storageos+: { secretRef+: { fieldPath: fieldPath } } } } } },
            withKind(kind): { spec+: { source+: { inlineVolumeSpec+: { storageos+: { secretRef+: { kind: kind } } } } } },
            withName(name): { spec+: { source+: { inlineVolumeSpec+: { storageos+: { secretRef+: { name: name } } } } } },
            withNamespace(namespace): { spec+: { source+: { inlineVolumeSpec+: { storageos+: { secretRef+: { namespace: namespace } } } } } },
            withResourceVersion(resourceVersion): { spec+: { source+: { inlineVolumeSpec+: { storageos+: { secretRef+: { resourceVersion: resourceVersion } } } } } },
            withUid(uid): { spec+: { source+: { inlineVolumeSpec+: { storageos+: { secretRef+: { uid: uid } } } } } }
          },
          withFsType(fsType): { spec+: { source+: { inlineVolumeSpec+: { storageos+: { fsType: fsType } } } } },
          withReadOnly(readOnly): { spec+: { source+: { inlineVolumeSpec+: { storageos+: { readOnly: readOnly } } } } },
          withVolumeName(volumeName): { spec+: { source+: { inlineVolumeSpec+: { storageos+: { volumeName: volumeName } } } } },
          withVolumeNamespace(volumeNamespace): { spec+: { source+: { inlineVolumeSpec+: { storageos+: { volumeNamespace: volumeNamespace } } } } }
        },
        // Represents a vSphere volume resource.
        vsphereVolume: {
          withFsType(fsType): { spec+: { source+: { inlineVolumeSpec+: { vsphereVolume+: { fsType: fsType } } } } },
          withStoragePolicyID(storagePolicyID): { spec+: { source+: { inlineVolumeSpec+: { vsphereVolume+: { storagePolicyID: storagePolicyID } } } } },
          withStoragePolicyName(storagePolicyName): { spec+: { source+: { inlineVolumeSpec+: { vsphereVolume+: { storagePolicyName: storagePolicyName } } } } },
          withVolumePath(volumePath): { spec+: { source+: { inlineVolumeSpec+: { vsphereVolume+: { volumePath: volumePath } } } } }
        },
        withAccessModes(accessModes): { spec+: { source+: { inlineVolumeSpec+: { accessModes: if std.isArray(v=accessModes) then accessModes else [accessModes] } } } },
        withAccessModesMixin(accessModes): { spec+: { source+: { inlineVolumeSpec+: { accessModes+: if std.isArray(v=accessModes) then accessModes else [accessModes] } } } },
        withCapacity(capacity): { spec+: { source+: { inlineVolumeSpec+: { capacity: capacity } } } },
        withCapacityMixin(capacity): { spec+: { source+: { inlineVolumeSpec+: { capacity+: capacity } } } },
        withMountOptions(mountOptions): { spec+: { source+: { inlineVolumeSpec+: { mountOptions: if std.isArray(v=mountOptions) then mountOptions else [mountOptions] } } } },
        withMountOptionsMixin(mountOptions): { spec+: { source+: { inlineVolumeSpec+: { mountOptions+: if std.isArray(v=mountOptions) then mountOptions else [mountOptions] } } } },
        withPersistentVolumeReclaimPolicy(persistentVolumeReclaimPolicy): { spec+: { source+: { inlineVolumeSpec+: { persistentVolumeReclaimPolicy: persistentVolumeReclaimPolicy } } } },
        withStorageClassName(storageClassName): { spec+: { source+: { inlineVolumeSpec+: { storageClassName: storageClassName } } } },
        withVolumeMode(volumeMode): { spec+: { source+: { inlineVolumeSpec+: { volumeMode: volumeMode } } } }
      },
      withPersistentVolumeName(persistentVolumeName): { spec+: { source+: { persistentVolumeName: persistentVolumeName } } }
    },
    withAttacher(attacher): { spec+: { attacher: attacher } },
    withNodeName(nodeName): { spec+: { nodeName: nodeName } }
  },
  mixin: self
}