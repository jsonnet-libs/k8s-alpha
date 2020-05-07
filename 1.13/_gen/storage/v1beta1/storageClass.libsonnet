{
  // new returns an instance of Storageclass
  new(name): {
    apiVersion: 'storage.k8s.io/v1beta1',
    kind: 'StorageClass'
  } + self.metadata.withName(name=name),
  withAllowVolumeExpansion(allowVolumeExpansion): { allowVolumeExpansion: allowVolumeExpansion },
  withAllowedTopologies(allowedTopologies): { allowedTopologies: if std.isArray(v=allowedTopologies) then allowedTopologies else [allowedTopologies] },
  withAllowedTopologiesMixin(allowedTopologies): { allowedTopologies+: if std.isArray(v=allowedTopologies) then allowedTopologies else [allowedTopologies] },
  withMetadata(metadata): { metadata: metadata },
  withMountOptions(mountOptions): { mountOptions: if std.isArray(v=mountOptions) then mountOptions else [mountOptions] },
  withMountOptionsMixin(mountOptions): { mountOptions+: if std.isArray(v=mountOptions) then mountOptions else [mountOptions] },
  withParameters(parameters): { parameters: parameters },
  withParametersMixin(parameters): { parameters+: parameters },
  withProvisioner(provisioner): { provisioner: provisioner },
  withReclaimPolicy(reclaimPolicy): { reclaimPolicy: reclaimPolicy },
  withVolumeBindingMode(volumeBindingMode): { volumeBindingMode: volumeBindingMode },
  mixin: self
}