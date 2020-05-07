{
  // new returns an instance of Event
  new(name): {
    apiVersion: 'v1',
    kind: 'Event'
  } + self.metadata.withName(name=name),
  withAction(action): { action: action },
  withCount(count): { count: count },
  withEventTime(eventTime): { eventTime: eventTime },
  withFirstTimestamp(firstTimestamp): { firstTimestamp: firstTimestamp },
  withInvolvedObject(involvedObject): { involvedObject: involvedObject },
  withLastTimestamp(lastTimestamp): { lastTimestamp: lastTimestamp },
  withMessage(message): { message: message },
  withMetadata(metadata): { metadata: metadata },
  withReason(reason): { reason: reason },
  withRelated(related): { related: related },
  withReportingComponent(reportingComponent): { reportingComponent: reportingComponent },
  withReportingInstance(reportingInstance): { reportingInstance: reportingInstance },
  withSeries(series): { series: series },
  withSource(source): { source: source },
  withType(type): { type: type },
  mixin: self
}