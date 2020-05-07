{
  // LimitedPriorityLevelConfiguration specifies how to handle requests that are subject to limits. It addresses two issues:
  //  * How are requests for this priority level limited?
  //  * What should be done with requests that exceed the limit?
  limited: {
    // LimitResponse defines how to handle requests that can not be executed right now.
    limitResponse: {
      // QueuingConfiguration holds the configuration parameters for queuing
      queuing: {
        withHandSize(handSize): { limited+: { limitResponse+: { queuing+: { handSize: handSize } } } },
        withQueueLengthLimit(queueLengthLimit): { limited+: { limitResponse+: { queuing+: { queueLengthLimit: queueLengthLimit } } } },
        withQueues(queues): { limited+: { limitResponse+: { queuing+: { queues: queues } } } }
      },
      withType(type): { limited+: { limitResponse+: { type: type } } }
    },
    withAssuredConcurrencyShares(assuredConcurrencyShares): { limited+: { assuredConcurrencyShares: assuredConcurrencyShares } }
  },
  withType(type): { type: type },
  mixin: self
}