{
  withAccessModes(accessModes): { accessModes: if std.isArray(v=accessModes) then accessModes else [accessModes] },
  withAccessModesMixin(accessModes): { accessModes+: if std.isArray(v=accessModes) then accessModes else [accessModes] },
  withDataSource(dataSource): { dataSource: dataSource },
  withResources(resources): { resources: resources },
  withSelector(selector): { selector: selector },
  withStorageClassName(storageClassName): { storageClassName: storageClassName },
  withVolumeMode(volumeMode): { volumeMode: volumeMode },
  withVolumeName(volumeName): { volumeName: volumeName },
  mixin: self
}