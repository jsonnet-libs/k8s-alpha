{
  withMinReadySeconds(minReadySeconds): { minReadySeconds: minReadySeconds },
  withReplicas(replicas): { replicas: replicas },
  withSelector(selector): { selector: selector },
  withTemplate(template): { template: template },
  mixin: self
}