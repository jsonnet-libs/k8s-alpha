{
  withAttachRequired(attachRequired): { attachRequired: attachRequired },
  withPodInfoOnMount(podInfoOnMount): { podInfoOnMount: podInfoOnMount },
  withVolumeLifecycleModes(volumeLifecycleModes): { volumeLifecycleModes: if std.isArray(v=volumeLifecycleModes) then volumeLifecycleModes else [volumeLifecycleModes] },
  withVolumeLifecycleModesMixin(volumeLifecycleModes): { volumeLifecycleModes+: if std.isArray(v=volumeLifecycleModes) then volumeLifecycleModes else [volumeLifecycleModes] },
  mixin: self
}