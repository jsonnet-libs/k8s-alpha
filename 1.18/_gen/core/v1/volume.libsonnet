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
    withShareName(shareName): { azureFile+: { shareName: shareName } }
  },
  // Represents a Ceph Filesystem mount that lasts the lifetime of a pod Cephfs volumes do not support ownership management or SELinux relabeling.
  cephfs: {
    // LocalObjectReference contains enough information to let you locate the referenced object inside the same namespace.
    secretRef: {
      withName(name): { cephfs+: { secretRef+: { name: name } } }
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
    // LocalObjectReference contains enough information to let you locate the referenced object inside the same namespace.
    secretRef: {
      withName(name): { cinder+: { secretRef+: { name: name } } }
    },
    withFsType(fsType): { cinder+: { fsType: fsType } },
    withReadOnly(readOnly): { cinder+: { readOnly: readOnly } },
    withVolumeID(volumeID): { cinder+: { volumeID: volumeID } }
  },
  // Adapts a ConfigMap into a volume.
  // 
  // The contents of the target ConfigMap's Data field will be presented in a volume as files using the keys in the Data field as the file names, unless the items element is populated with specific mappings of keys to paths. ConfigMap volumes support ownership management and SELinux relabeling.
  configMap: {
    withDefaultMode(defaultMode): { configMap+: { defaultMode: defaultMode } },
    withItems(items): { configMap+: { items: if std.isArray(v=items) then items else [items] } },
    withItemsMixin(items): { configMap+: { items+: if std.isArray(v=items) then items else [items] } },
    withName(name): { configMap+: { name: name } },
    withOptional(optional): { configMap+: { optional: optional } }
  },
  // Represents a source location of a volume to mount, managed by an external CSI driver
  csi: {
    // LocalObjectReference contains enough information to let you locate the referenced object inside the same namespace.
    nodePublishSecretRef: {
      withName(name): { csi+: { nodePublishSecretRef+: { name: name } } }
    },
    withDriver(driver): { csi+: { driver: driver } },
    withFsType(fsType): { csi+: { fsType: fsType } },
    withReadOnly(readOnly): { csi+: { readOnly: readOnly } },
    withVolumeAttributes(volumeAttributes): { csi+: { volumeAttributes: volumeAttributes } },
    withVolumeAttributesMixin(volumeAttributes): { csi+: { volumeAttributes+: volumeAttributes } }
  },
  // DownwardAPIVolumeSource represents a volume containing downward API info. Downward API volumes support ownership management and SELinux relabeling.
  downwardAPI: {
    withDefaultMode(defaultMode): { downwardAPI+: { defaultMode: defaultMode } },
    withItems(items): { downwardAPI+: { items: if std.isArray(v=items) then items else [items] } },
    withItemsMixin(items): { downwardAPI+: { items+: if std.isArray(v=items) then items else [items] } }
  },
  // Represents an empty directory for a pod. Empty directory volumes support ownership management and SELinux relabeling.
  emptyDir: {
    withMedium(medium): { emptyDir+: { medium: medium } },
    withSizeLimit(sizeLimit): { emptyDir+: { sizeLimit: sizeLimit } }
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
  // FlexVolume represents a generic volume resource that is provisioned/attached using an exec based plugin.
  flexVolume: {
    // LocalObjectReference contains enough information to let you locate the referenced object inside the same namespace.
    secretRef: {
      withName(name): { flexVolume+: { secretRef+: { name: name } } }
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
  // Represents a volume that is populated with the contents of a git repository. Git repo volumes do not support ownership management. Git repo volumes support SELinux relabeling.
  // 
  // DEPRECATED: GitRepo is deprecated. To provision a container with a git repo, mount an EmptyDir into an InitContainer that clones the repo using git, then mount the EmptyDir into the Pod's container.
  gitRepo: {
    withDirectory(directory): { gitRepo+: { directory: directory } },
    withRepository(repository): { gitRepo+: { repository: repository } },
    withRevision(revision): { gitRepo+: { revision: revision } }
  },
  // Represents a Glusterfs mount that lasts the lifetime of a pod. Glusterfs volumes do not support ownership management or SELinux relabeling.
  glusterfs: {
    withEndpoints(endpoints): { glusterfs+: { endpoints: endpoints } },
    withPath(path): { glusterfs+: { path: path } },
    withReadOnly(readOnly): { glusterfs+: { readOnly: readOnly } }
  },
  // Represents a host path mapped into a pod. Host path volumes do not support ownership management or SELinux relabeling.
  hostPath: {
    withPath(path): { hostPath+: { path: path } },
    withType(type): { hostPath+: { type: type } }
  },
  // Represents an ISCSI disk. ISCSI volumes can only be mounted as read/write once. ISCSI volumes support ownership management and SELinux relabeling.
  iscsi: {
    // LocalObjectReference contains enough information to let you locate the referenced object inside the same namespace.
    secretRef: {
      withName(name): { iscsi+: { secretRef+: { name: name } } }
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
  // Represents an NFS mount that lasts the lifetime of a pod. NFS volumes do not support ownership management or SELinux relabeling.
  nfs: {
    withPath(path): { nfs+: { path: path } },
    withReadOnly(readOnly): { nfs+: { readOnly: readOnly } },
    withServer(server): { nfs+: { server: server } }
  },
  // PersistentVolumeClaimVolumeSource references the user's PVC in the same namespace. This volume finds the bound PV and mounts that volume for the pod. A PersistentVolumeClaimVolumeSource is, essentially, a wrapper around another type of volume that is owned by someone else (the system).
  persistentVolumeClaim: {
    withClaimName(claimName): { persistentVolumeClaim+: { claimName: claimName } },
    withReadOnly(readOnly): { persistentVolumeClaim+: { readOnly: readOnly } }
  },
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
  // Represents a projected volume source
  projected: {
    withDefaultMode(defaultMode): { projected+: { defaultMode: defaultMode } },
    withSources(sources): { projected+: { sources: if std.isArray(v=sources) then sources else [sources] } },
    withSourcesMixin(sources): { projected+: { sources+: if std.isArray(v=sources) then sources else [sources] } }
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
    // LocalObjectReference contains enough information to let you locate the referenced object inside the same namespace.
    secretRef: {
      withName(name): { rbd+: { secretRef+: { name: name } } }
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
  // ScaleIOVolumeSource represents a persistent ScaleIO volume
  scaleIO: {
    // LocalObjectReference contains enough information to let you locate the referenced object inside the same namespace.
    secretRef: {
      withName(name): { scaleIO+: { secretRef+: { name: name } } }
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
  // Adapts a Secret into a volume.
  // 
  // The contents of the target Secret's Data field will be presented in a volume as files using the keys in the Data field as the file names. Secret volumes support ownership management and SELinux relabeling.
  secret: {
    withDefaultMode(defaultMode): { secret+: { defaultMode: defaultMode } },
    withItems(items): { secret+: { items: if std.isArray(v=items) then items else [items] } },
    withItemsMixin(items): { secret+: { items+: if std.isArray(v=items) then items else [items] } },
    withOptional(optional): { secret+: { optional: optional } },
    withSecretName(secretName): { secret+: { secretName: secretName } }
  },
  // Represents a StorageOS persistent volume resource.
  storageos: {
    // LocalObjectReference contains enough information to let you locate the referenced object inside the same namespace.
    secretRef: {
      withName(name): { storageos+: { secretRef+: { name: name } } }
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
  withName(name): { name: name },
  mixin: self
}