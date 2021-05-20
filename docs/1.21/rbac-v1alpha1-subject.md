---
permalink: /1.21/rbac/v1alpha1/subject/
---

# package subject

Subject contains a reference to the object or user identities a role binding applies to.  This can either hold a direct API object reference, or a value for non-objects such as user and group names.

## Index

* [`fn fromServiceAccount(service_account)`](#fn-fromserviceaccount)
* [`fn withKind(kind)`](#fn-withkind)
* [`fn withName(name)`](#fn-withname)
* [`fn withNamespace(namespace)`](#fn-withnamespace)

## Fields

### fn fromServiceAccount

```ts
fromServiceAccount(service_account)
```

`fromServiceAccount` returns a subject for a service account.

### fn withKind

```ts
withKind(kind)
```

Kind of object being referenced. Values defined by this API group are "User", "Group", and "ServiceAccount". If the Authorizer does not recognized the kind value, the Authorizer should report an error.

### fn withName

```ts
withName(name)
```

Name of the object being referenced.

### fn withNamespace

```ts
withNamespace(namespace)
```

Namespace of the referenced object.  If the object kind is non-namespace, such as "User" or "Group", and this value is not empty the Authorizer should report an error.