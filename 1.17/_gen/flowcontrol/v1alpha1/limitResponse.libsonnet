{
  // QueuingConfiguration holds the configuration parameters for queuing
  queuing: {
    withHandSize(handSize): { queuing+: { handSize: handSize } },
    withQueueLengthLimit(queueLengthLimit): { queuing+: { queueLengthLimit: queueLengthLimit } },
    withQueues(queues): { queuing+: { queues: queues } }
  },
  withType(type): { type: type },
  mixin: self
}