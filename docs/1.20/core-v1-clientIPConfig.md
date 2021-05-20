---
permalink: /1.20/core/v1/clientIPConfig/
---

# package clientIPConfig

ClientIPConfig represents the configurations of Client IP based session affinity.

## Index

* [`fn withTimeoutSeconds(timeoutSeconds)`](#fn-withtimeoutseconds)

## Fields

### fn withTimeoutSeconds

```ts
withTimeoutSeconds(timeoutSeconds)
```

timeoutSeconds specifies the seconds of ClientIP type session sticky time. The value must be >0 && <=86400(for 1 day) if ServiceAffinity == "ClientIP". Default value is 10800(for 3 hours).