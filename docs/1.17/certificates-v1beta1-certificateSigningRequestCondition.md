---
permalink: /1.17/certificates/v1beta1/certificateSigningRequestCondition/
---

# package certificateSigningRequestCondition



## Index

* [`fn withLastUpdateTime(lastUpdateTime)`](#fn-withlastupdatetime)
* [`fn withMessage(message)`](#fn-withmessage)
* [`fn withReason(reason)`](#fn-withreason)
* [`fn withType(type)`](#fn-withtype)

## Fields

### fn withLastUpdateTime

```ts
withLastUpdateTime(lastUpdateTime)
```

Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.

### fn withMessage

```ts
withMessage(message)
```

human readable message with details about the request state

### fn withReason

```ts
withReason(reason)
```

brief reason for the request state

### fn withType

```ts
withType(type)
```

request approval state, currently Approved or Denied.