---
permalink: /1.20/authentication/v1/tokenRequestStatus/
---

# package tokenRequestStatus

TokenRequestStatus is the result of a token request.

## Index

* [`fn withExpirationTimestamp(expirationTimestamp)`](#fn-withexpirationtimestamp)
* [`fn withToken(token)`](#fn-withtoken)

## Fields

### fn withExpirationTimestamp

```ts
withExpirationTimestamp(expirationTimestamp)
```

Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.

### fn withToken

```ts
withToken(token)
```

Token is the opaque bearer token.