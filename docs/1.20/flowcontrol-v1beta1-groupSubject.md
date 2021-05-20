---
permalink: /1.20/flowcontrol/v1beta1/groupSubject/
---

# package groupSubject

GroupSubject holds detailed information for group-kind subject.

## Index

* [`fn withName(name)`](#fn-withname)

## Fields

### fn withName

```ts
withName(name)
```

name is the user group that matches, or "*" to match all user groups. See https://github.com/kubernetes/apiserver/blob/master/pkg/authentication/user/user.go for some well-known group names. Required.