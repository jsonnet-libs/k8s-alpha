---
permalink: /1.21/networking/v1/ingressServiceBackend/
---

# package ingressServiceBackend

IngressServiceBackend references a Kubernetes Service as a Backend.

## Index

* [`fn withName(name)`](#fn-withname)
* [`obj port`](#obj-port)
  * [`fn withName(name)`](#fn-portwithname)
  * [`fn withNumber(number)`](#fn-portwithnumber)

## Fields

### fn withName

```ts
withName(name)
```

Name is the referenced service. The service must exist in the same namespace as the Ingress object.

## obj port

ServiceBackendPort is the service port being referenced.

### fn port.withName

```ts
withName(name)
```

Name is the name of the port on the Service. This is a mutually exclusive setting with "Number".

### fn port.withNumber

```ts
withNumber(number)
```

Number is the numerical port number (e.g. 80) on the Service. This is a mutually exclusive setting with "Name".