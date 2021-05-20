---
permalink: /1.20/admissionregistration/v1/webhookClientConfig/
---

# package webhookClientConfig

WebhookClientConfig contains the information to make a TLS connection with the webhook

## Index

* [`fn withCaBundle(caBundle)`](#fn-withcabundle)
* [`fn withUrl(url)`](#fn-withurl)
* [`obj service`](#obj-service)
  * [`fn withName(name)`](#fn-servicewithname)
  * [`fn withNamespace(namespace)`](#fn-servicewithnamespace)
  * [`fn withPath(path)`](#fn-servicewithpath)
  * [`fn withPort(port)`](#fn-servicewithport)

## Fields

### fn withCaBundle

```ts
withCaBundle(caBundle)
```

`caBundle` is a PEM encoded CA bundle which will be used to validate the webhook's server certificate. If unspecified, system trust roots on the apiserver are used.

### fn withUrl

```ts
withUrl(url)
```

`url` gives the location of the webhook, in standard URL form (`scheme://host:port/path`). Exactly one of `url` or `service` must be specified.

The `host` should not refer to a service running in the cluster; use the `service` field instead. The host might be resolved via external DNS in some apiservers (e.g., `kube-apiserver` cannot resolve in-cluster DNS as that would be a layering violation). `host` may also be an IP address.

Please note that using `localhost` or `127.0.0.1` as a `host` is risky unless you take great care to run this webhook on all hosts which run an apiserver which might need to make calls to this webhook. Such installs are likely to be non-portable, i.e., not easy to turn up in a new cluster.

The scheme must be "https"; the URL must begin with "https://".

A path is optional, and if present may be any string permissible in a URL. You may use the path to pass an arbitrary string to the webhook, for example, a cluster identifier.

Attempting to use a user or basic auth e.g. "user:password@" is not allowed. Fragments ("#...") and query parameters ("?...") are not allowed, either.

## obj service

ServiceReference holds a reference to Service.legacy.k8s.io

### fn service.withName

```ts
withName(name)
```

`name` is the name of the service. Required

### fn service.withNamespace

```ts
withNamespace(namespace)
```

`namespace` is the namespace of the service. Required

### fn service.withPath

```ts
withPath(path)
```

`path` is an optional URL path which will be sent in any request to this service.

### fn service.withPort

```ts
withPort(port)
```

If specified, the port on the service that hosting webhook. Default to 443 for backward compatibility. `port` should be a valid port number (1-65535, inclusive).