{
  withActiveDeadlineSeconds(activeDeadlineSeconds): { activeDeadlineSeconds: activeDeadlineSeconds },
  withBackoffLimit(backoffLimit): { backoffLimit: backoffLimit },
  withCompletions(completions): { completions: completions },
  withManualSelector(manualSelector): { manualSelector: manualSelector },
  withParallelism(parallelism): { parallelism: parallelism },
  withSelector(selector): { selector: selector },
  withTemplate(template): { template: template },
  withTtlSecondsAfterFinished(ttlSecondsAfterFinished): { ttlSecondsAfterFinished: ttlSecondsAfterFinished },
  mixin: self
}