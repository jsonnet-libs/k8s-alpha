---
permalink: /1.21/networking/v1beta1/ingressClassSpec/
---

# package ingressClassSpec

IngressClassSpec provides information about the class of an Ingress.

## Index

* [`fn withController(controller)`](#fn-withcontroller)
* [`obj parameters`](#obj-parameters)
  * [`fn withApiGroup(apiGroup)`](#fn-parameterswithapigroup)
  * [`fn withKind(kind)`](#fn-parameterswithkind)
  * [`fn withName(name)`](#fn-parameterswithname)
  * [`fn withNamespace(namespace)`](#fn-parameterswithnamespace)
  * [`fn withScope(scope)`](#fn-parameterswithscope)

## Fields

### fn withController

```ts
withController(controller)
```

Controller refers to the name of the controller that should handle this class. This allows for different "flavors" that are controlled by the same controller. For example, you may have different Parameters for the same implementing controller. This should be specified as a domain-prefixed path no more than 250 characters in length, e.g. "acme.io/ingress-controller". This field is immutable.

## obj parameters

IngressClassParametersReference identifies an API object. This can be used to specify a cluster or namespace-scoped resource.

### fn parameters.withApiGroup

```ts
withApiGroup(apiGroup)
```

APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.

### fn parameters.withKind

```ts
withKind(kind)
```

Kind is the type of resource being referenced.

### fn parameters.withName

```ts
withName(name)
```

Name is the name of resource being referenced.

### fn parameters.withNamespace

```ts
withNamespace(namespace)
```

Namespace is the namespace of the resource being referenced. This field is required when scope is set to "Namespace" and must be unset when scope is set to "Cluster".

### fn parameters.withScope

```ts
withScope(scope)
```

Scope represents if this refers to a cluster or namespace scoped resource. This may be set to "Cluster" (default) or "Namespace". Field can be enabled with IngressClassNamespacedParams feature gate.