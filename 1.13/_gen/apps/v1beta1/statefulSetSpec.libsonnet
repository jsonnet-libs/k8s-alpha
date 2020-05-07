{
  withPodManagementPolicy(podManagementPolicy): { podManagementPolicy: podManagementPolicy },
  withReplicas(replicas): { replicas: replicas },
  withRevisionHistoryLimit(revisionHistoryLimit): { revisionHistoryLimit: revisionHistoryLimit },
  withSelector(selector): { selector: selector },
  withServiceName(serviceName): { serviceName: serviceName },
  withTemplate(template): { template: template },
  withUpdateStrategy(updateStrategy): { updateStrategy: updateStrategy },
  withVolumeClaimTemplates(volumeClaimTemplates): { volumeClaimTemplates: if std.isArray(v=volumeClaimTemplates) then volumeClaimTemplates else [volumeClaimTemplates] },
  withVolumeClaimTemplatesMixin(volumeClaimTemplates): { volumeClaimTemplates+: if std.isArray(v=volumeClaimTemplates) then volumeClaimTemplates else [volumeClaimTemplates] },
  mixin: self
}