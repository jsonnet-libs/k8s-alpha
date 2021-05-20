---
permalink: /1.18/flowcontrol/v1alpha1/priorityLevelConfigurationSpec/
---

# package priorityLevelConfigurationSpec

PriorityLevelConfigurationSpec specifies the configuration of a priority level.

## Index

* [`fn withType(type)`](#fn-withtype)
* [`obj limited`](#obj-limited)
  * [`fn withAssuredConcurrencyShares(assuredConcurrencyShares)`](#fn-limitedwithassuredconcurrencyshares)
  * [`obj limited.limitResponse`](#obj-limitedlimitresponse)
    * [`fn withType(type)`](#fn-limitedlimitresponsewithtype)
    * [`obj limited.limitResponse.queuing`](#obj-limitedlimitresponsequeuing)
      * [`fn withHandSize(handSize)`](#fn-limitedlimitresponsequeuingwithhandsize)
      * [`fn withQueueLengthLimit(queueLengthLimit)`](#fn-limitedlimitresponsequeuingwithqueuelengthlimit)
      * [`fn withQueues(queues)`](#fn-limitedlimitresponsequeuingwithqueues)

## Fields

### fn withType

```ts
withType(type)
```

`type` indicates whether this priority level is subject to limitation on request execution.  A value of `'Exempt'` means that requests of this priority level are not subject to a limit (and thus are never queued) and do not detract from the capacity made available to other priority levels.  A value of `'Limited'` means that (a) requests of this priority level _are_ subject to limits and (b) some of the server's limited capacity is made available exclusively to this priority level. Required.

## obj limited

LimitedPriorityLevelConfiguration specifies how to handle requests that are subject to limits. It addresses two issues:
 * How are requests for this priority level limited?
 * What should be done with requests that exceed the limit?

### fn limited.withAssuredConcurrencyShares

```ts
withAssuredConcurrencyShares(assuredConcurrencyShares)
```

`assuredConcurrencyShares` (ACS) configures the execution limit, which is a limit on the number of requests of this priority level that may be exeucting at a given time.  ACS must be a positive number. The server's concurrency limit (SCL) is divided among the concurrency-controlled priority levels in proportion to their assured concurrency shares. This produces the assured concurrency value (ACV) --- the number of requests that may be executing at a time --- for each such priority level:

            ACV(l) = ceil( SCL * ACS(l) / ( sum[priority levels k] ACS(k) ) )

bigger numbers of ACS mean more reserved concurrent requests (at the expense of every other PL). This field has a default value of 30.

## obj limited.limitResponse



### fn limited.limitResponse.withType

```ts
withType(type)
```

`type` is "Queue" or "Reject". "Queue" means that requests that can not be executed upon arrival are held in a queue until they can be executed or a queuing limit is reached. "Reject" means that requests that can not be executed upon arrival are rejected. Required.

## obj limited.limitResponse.queuing

QueuingConfiguration holds the configuration parameters for queuing

### fn limited.limitResponse.queuing.withHandSize

```ts
withHandSize(handSize)
```

`handSize` is a small positive number that configures the shuffle sharding of requests into queues.  When enqueuing a request at this priority level the request's flow identifier (a string pair) is hashed and the hash value is used to shuffle the list of queues and deal a hand of the size specified here.  The request is put into one of the shortest queues in that hand. `handSize` must be no larger than `queues`, and should be significantly smaller (so that a few heavy flows do not saturate most of the queues).  See the user-facing documentation for more extensive guidance on setting this field.  This field has a default value of 8.

### fn limited.limitResponse.queuing.withQueueLengthLimit

```ts
withQueueLengthLimit(queueLengthLimit)
```

`queueLengthLimit` is the maximum number of requests allowed to be waiting in a given queue of this priority level at a time; excess requests are rejected.  This value must be positive.  If not specified, it will be defaulted to 50.

### fn limited.limitResponse.queuing.withQueues

```ts
withQueues(queues)
```

`queues` is the number of queues for this priority level. The queues exist independently at each apiserver. The value must be positive.  Setting it to 1 effectively precludes shufflesharding and thus makes the distinguisher method of associated flow schemas irrelevant.  This field has a default value of 64.