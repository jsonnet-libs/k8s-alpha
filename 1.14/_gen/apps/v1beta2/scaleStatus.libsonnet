{
  withReplicas(replicas): { replicas: replicas },
  withSelector(selector): { selector: selector },
  withSelectorMixin(selector): { selector+: selector },
  withTargetSelector(targetSelector): { targetSelector: targetSelector },
  mixin: self
}