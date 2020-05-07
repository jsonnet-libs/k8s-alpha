{
  withMinReadySeconds(minReadySeconds): { minReadySeconds: minReadySeconds },
  withRevisionHistoryLimit(revisionHistoryLimit): { revisionHistoryLimit: revisionHistoryLimit },
  withSelector(selector): { selector: selector },
  withTemplate(template): { template: template },
  withTemplateGeneration(templateGeneration): { templateGeneration: templateGeneration },
  withUpdateStrategy(updateStrategy): { updateStrategy: updateStrategy },
  mixin: self
}