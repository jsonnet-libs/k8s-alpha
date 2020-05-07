{
  withMinReadySeconds(minReadySeconds): { minReadySeconds: minReadySeconds },
  withReplicas(replicas): { replicas: replicas },
  withSelector(selector): { selector: selector },
  withSelectorMixin(selector): { selector+: selector },
  withTemplate(template): { template: template },
  mixin: self
}