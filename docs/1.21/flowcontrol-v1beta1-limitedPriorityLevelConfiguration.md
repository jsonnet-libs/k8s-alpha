---
permalink: /1.21/flowcontrol/v1beta1/limitedPriorityLevelConfiguration/
---

# package limitedPriorityLevelConfiguration

LimitedPriorityLevelConfiguration specifies how to handle requests that are subject to limits. It addresses two issues:
 * How are requests for this priority level limited?
 * What should be done with requests that exceed the limit?

## Index

* [`fn withAssuredConcurrencyShares(assuredConcurrencyShares)`](#fn-withassuredconcurrencyshares)
* [`obj limitResponse`](#obj-limitresponse)
  * [`fn withType(type)`](#fn-limitresponsewithtype)
  * [`obj limitResponse.queuing`](#obj-limitresponsequeuing)
    * [`fn withHandSize(handSize)`](#fn-limitresponsequeuingwithhandsize)
    * [`fn withQueueLengthLimit(queueLengthLimit)`](#fn-limitresponsequeuingwithqueuelengthlimit)
    * [`fn withQueues(queues)`](#fn-limitresponsequeuingwithqueues)

## Fields

### fn withAssuredConcurrencyShares

```ts
withAssuredConcurrencyShares(assuredConcurrencyShares)
```

`assuredConcurrencyShares` (ACS) configures the execution limit, which is a limit on the number of requests of this priority level that may be exeucting at a given time.  ACS must be a positive number. The server's concurrency limit (SCL) is divided among the concurrency-controlled priority levels in proportion to their assured concurrency shares. This produces the assured concurrency value (ACV) --- the number of requests that may be executing at a time --- for each such priority level:

            ACV(l) = ceil( SCL * ACS(l) / ( sum[priority levels k] ACS(k) ) )

bigger numbers of ACS mean more reserved concurrent requests (at the expense of every other PL). This field has a default value of 30.

## obj limitResponse

LimitResponse defines how to handle requests that can not be executed right now.

### fn limitResponse.withType

```ts
withType(type)
```

`type` is "Queue" or "Reject". "Queue" means that requests that can not be executed upon arrival are held in a queue until they can be executed or a queuing limit is reached. "Reject" means that requests that can not be executed upon arrival are rejected. Required.

## obj limitResponse.queuing



### fn limitResponse.queuing.withHandSize

```ts
withHandSize(handSize)
```

`handSize` is a small positive number that configures the shuffle sharding of requests into queues.  When enqueuing a request at this priority level the request's flow identifier (a string pair) is hashed and the hash value is used to shuffle the list of queues and deal a hand of the size specified here.  The request is put into one of the shortest queues in that hand. `handSize` must be no larger than `queues`, and should be significantly smaller (so that a few heavy flows do not saturate most of the queues).  See the user-facing documentation for more extensive guidance on setting this field.  This field has a default value of 8.

### fn limitResponse.queuing.withQueueLengthLimit

```ts
withQueueLengthLimit(queueLengthLimit)
```

`queueLengthLimit` is the maximum number of requests allowed to be waiting in a given queue of this priority level at a time; excess requests are rejected.  This value must be positive.  If not specified, it will be defaulted to 50.

### fn limitResponse.queuing.withQueues

```ts
withQueues(queues)
```

`queues` is the number of queues for this priority level. The queues exist independently at each apiserver. The value must be positive.  Setting it to 1 effectively precludes shufflesharding and thus makes the distinguisher method of associated flow schemas irrelevant.  This field has a default value of 64.