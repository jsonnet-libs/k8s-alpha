---
permalink: /1.19/networking/v1/httpIngressPath/
---

# package httpIngressPath

HTTPIngressPath associates a path with a backend. Incoming urls matching the path are forwarded to the backend.

## Index

* [`fn withPath(path)`](#fn-withpath)
* [`fn withPathType(pathType)`](#fn-withpathtype)
* [`obj backend`](#obj-backend)
  * [`obj backend.resource`](#obj-backendresource)
    * [`fn withApiGroup(apiGroup)`](#fn-backendresourcewithapigroup)
    * [`fn withKind(kind)`](#fn-backendresourcewithkind)
    * [`fn withName(name)`](#fn-backendresourcewithname)
  * [`obj backend.service`](#obj-backendservice)
    * [`fn withName(name)`](#fn-backendservicewithname)
    * [`obj backend.service.port`](#obj-backendserviceport)
      * [`fn withName(name)`](#fn-backendserviceportwithname)
      * [`fn withNumber(number)`](#fn-backendserviceportwithnumber)

## Fields

### fn withPath

```ts
withPath(path)
```

Path is matched against the path of an incoming request. Currently it can contain characters disallowed from the conventional 'path' part of a URL as defined by RFC 3986. Paths must begin with a '/'. When unspecified, all paths from incoming requests are matched.

### fn withPathType

```ts
withPathType(pathType)
```

PathType determines the interpretation of the Path matching. PathType can be one of the following values: * Exact: Matches the URL path exactly. * Prefix: Matches based on a URL path prefix split by '/'. Matching is
  done on a path element by element basis. A path element refers is the
  list of labels in the path split by the '/' separator. A request is a
  match for path p if every p is an element-wise prefix of p of the
  request path. Note that if the last element of the path is a substring
  of the last element in request path, it is not a match (e.g. /foo/bar
  matches /foo/bar/baz, but does not match /foo/barbaz).
* ImplementationSpecific: Interpretation of the Path matching is up to
  the IngressClass. Implementations can treat this as a separate PathType
  or treat it identically to Prefix or Exact path types.
Implementations are required to support all path types.

## obj backend

IngressBackend describes all endpoints for a given service and port.

## obj backend.resource



### fn backend.resource.withApiGroup

```ts
withApiGroup(apiGroup)
```

APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.

### fn backend.resource.withKind

```ts
withKind(kind)
```

Kind is the type of resource being referenced

### fn backend.resource.withName

```ts
withName(name)
```

Name is the name of resource being referenced

## obj backend.service



### fn backend.service.withName

```ts
withName(name)
```

Name is the referenced service. The service must exist in the same namespace as the Ingress object.

## obj backend.service.port

ServiceBackendPort is the service port being referenced.

### fn backend.service.port.withName

```ts
withName(name)
```

Name is the name of the port on the Service. This is a mutually exclusive setting with "Number".

### fn backend.service.port.withNumber

```ts
withNumber(number)
```

Number is the numerical port number (e.g. 80) on the Service. This is a mutually exclusive setting with "Name".