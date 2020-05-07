{
  // new returns an instance of Event
  new(name): {
    apiVersion: 'events.k8s.io/v1beta1',
    kind: 'Event'
  } + self.metadata.withName(name=name),
  withAction(action): { action: action },
  withDeprecatedCount(deprecatedCount): { deprecatedCount: deprecatedCount },
  withDeprecatedFirstTimestamp(deprecatedFirstTimestamp): { deprecatedFirstTimestamp: deprecatedFirstTimestamp },
  withDeprecatedLastTimestamp(deprecatedLastTimestamp): { deprecatedLastTimestamp: deprecatedLastTimestamp },
  withDeprecatedSource(deprecatedSource): { deprecatedSource: deprecatedSource },
  withEventTime(eventTime): { eventTime: eventTime },
  withMetadata(metadata): { metadata: metadata },
  withNote(note): { note: note },
  withReason(reason): { reason: reason },
  withRegarding(regarding): { regarding: regarding },
  withRelated(related): { related: related },
  withReportingController(reportingController): { reportingController: reportingController },
  withReportingInstance(reportingInstance): { reportingInstance: reportingInstance },
  withSeries(series): { series: series },
  withType(type): { type: type },
  mixin: self
}