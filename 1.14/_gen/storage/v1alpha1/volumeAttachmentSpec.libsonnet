{
  // VolumeAttachmentSource represents a volume that should be attached. Right now only PersistenVolumes can be attached via external attacher, in future we may allow also inline volumes in pods. Exactly one member can be set.
  source: {
    withPersistentVolumeName(persistentVolumeName): { source+: { persistentVolumeName: persistentVolumeName } }
  },
  withAttacher(attacher): { attacher: attacher },
  withNodeName(nodeName): { nodeName: nodeName },
  mixin: self
}