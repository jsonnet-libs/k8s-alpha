{
  withConcurrencyPolicy(concurrencyPolicy): { concurrencyPolicy: concurrencyPolicy },
  withFailedJobsHistoryLimit(failedJobsHistoryLimit): { failedJobsHistoryLimit: failedJobsHistoryLimit },
  withJobTemplate(jobTemplate): { jobTemplate: jobTemplate },
  withSchedule(schedule): { schedule: schedule },
  withStartingDeadlineSeconds(startingDeadlineSeconds): { startingDeadlineSeconds: startingDeadlineSeconds },
  withSuccessfulJobsHistoryLimit(successfulJobsHistoryLimit): { successfulJobsHistoryLimit: successfulJobsHistoryLimit },
  withSuspend(suspend): { suspend: suspend },
  mixin: self
}