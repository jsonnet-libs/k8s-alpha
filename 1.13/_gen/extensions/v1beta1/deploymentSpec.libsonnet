{
  withMinReadySeconds(minReadySeconds): { minReadySeconds: minReadySeconds },
  withPaused(paused): { paused: paused },
  withProgressDeadlineSeconds(progressDeadlineSeconds): { progressDeadlineSeconds: progressDeadlineSeconds },
  withReplicas(replicas): { replicas: replicas },
  withRevisionHistoryLimit(revisionHistoryLimit): { revisionHistoryLimit: revisionHistoryLimit },
  withRollbackTo(rollbackTo): { rollbackTo: rollbackTo },
  withSelector(selector): { selector: selector },
  withStrategy(strategy): { strategy: strategy },
  withTemplate(template): { template: template },
  mixin: self
}