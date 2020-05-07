{
  // LimitResponse defines how to handle requests that can not be executed right now.
  limitResponse: {
    // QueuingConfiguration holds the configuration parameters for queuing
    queuing: {
      withHandSize(handSize): { limitResponse+: { queuing+: { handSize: handSize } } },
      withQueueLengthLimit(queueLengthLimit): { limitResponse+: { queuing+: { queueLengthLimit: queueLengthLimit } } },
      withQueues(queues): { limitResponse+: { queuing+: { queues: queues } } }
    },
    withType(type): { limitResponse+: { type: type } }
  },
  withAssuredConcurrencyShares(assuredConcurrencyShares): { assuredConcurrencyShares: assuredConcurrencyShares },
  mixin: self
}