---
permalink: /1.21/networking/v1beta1/ingressTLS/
---

# package ingressTLS

IngressTLS describes the transport layer security associated with an Ingress.

## Index

* [`fn withHosts(hosts)`](#fn-withhosts)
* [`fn withHostsMixin(hosts)`](#fn-withhostsmixin)
* [`fn withSecretName(secretName)`](#fn-withsecretname)

## Fields

### fn withHosts

```ts
withHosts(hosts)
```

Hosts are a list of hosts included in the TLS certificate. The values in this list must match the name/s used in the tlsSecret. Defaults to the wildcard host setting for the loadbalancer controller fulfilling this Ingress, if left unspecified.

### fn withHostsMixin

```ts
withHostsMixin(hosts)
```

Hosts are a list of hosts included in the TLS certificate. The values in this list must match the name/s used in the tlsSecret. Defaults to the wildcard host setting for the loadbalancer controller fulfilling this Ingress, if left unspecified.

**Note:** This function appends passed data to existing values

### fn withSecretName

```ts
withSecretName(secretName)
```

SecretName is the name of the secret used to terminate TLS traffic on port 443. Field is left optional to allow TLS routing based on SNI hostname alone. If the SNI host in a listener conflicts with the "Host" header field used by an IngressRule, the SNI host is used for termination and value of the Host header is used for routing.