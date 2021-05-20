---
permalink: /1.21/discovery/v1beta1/endpointConditions/
---

# package endpointConditions

EndpointConditions represents the current condition of an endpoint.

## Index

* [`fn withReady(ready)`](#fn-withready)
* [`fn withServing(serving)`](#fn-withserving)
* [`fn withTerminating(terminating)`](#fn-withterminating)

## Fields

### fn withReady

```ts
withReady(ready)
```

ready indicates that this endpoint is prepared to receive traffic, according to whatever system is managing the endpoint. A nil value indicates an unknown state. In most cases consumers should interpret this unknown state as ready. For compatibility reasons, ready should never be "true" for terminating endpoints.

### fn withServing

```ts
withServing(serving)
```

serving is identical to ready except that it is set regardless of the terminating state of endpoints. This condition should be set to true for a ready endpoint that is terminating. If nil, consumers should defer to the ready condition. This field can be enabled with the EndpointSliceTerminatingCondition feature gate.

### fn withTerminating

```ts
withTerminating(terminating)
```

terminating indicates that this endpoint is terminating. A nil value indicates an unknown state. Consumers should interpret this unknown state to mean that the endpoint is not terminating. This field can be enabled with the EndpointSliceTerminatingCondition feature gate.