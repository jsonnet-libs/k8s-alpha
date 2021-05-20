---
permalink: /1.21/certificates/v1beta1/certificateSigningRequestSpec/
---

# package certificateSigningRequestSpec

This information is immutable after the request is created. Only the Request and Usages fields can be set on creation, other fields are derived by Kubernetes and cannot be modified by users.

## Index

* [`fn withExtra(extra)`](#fn-withextra)
* [`fn withExtraMixin(extra)`](#fn-withextramixin)
* [`fn withGroups(groups)`](#fn-withgroups)
* [`fn withGroupsMixin(groups)`](#fn-withgroupsmixin)
* [`fn withRequest(request)`](#fn-withrequest)
* [`fn withSignerName(signerName)`](#fn-withsignername)
* [`fn withUid(uid)`](#fn-withuid)
* [`fn withUsages(usages)`](#fn-withusages)
* [`fn withUsagesMixin(usages)`](#fn-withusagesmixin)
* [`fn withUsername(username)`](#fn-withusername)

## Fields

### fn withExtra

```ts
withExtra(extra)
```

Extra information about the requesting user. See user.Info interface for details.

### fn withExtraMixin

```ts
withExtraMixin(extra)
```

Extra information about the requesting user. See user.Info interface for details.

**Note:** This function appends passed data to existing values

### fn withGroups

```ts
withGroups(groups)
```

Group information about the requesting user. See user.Info interface for details.

### fn withGroupsMixin

```ts
withGroupsMixin(groups)
```

Group information about the requesting user. See user.Info interface for details.

**Note:** This function appends passed data to existing values

### fn withRequest

```ts
withRequest(request)
```

Base64-encoded PKCS#10 CSR data

### fn withSignerName

```ts
withSignerName(signerName)
```

Requested signer for the request. It is a qualified name in the form: `scope-hostname.io/name`. If empty, it will be defaulted:
 1. If it's a kubelet client certificate, it is assigned
    'kubernetes.io/kube-apiserver-client-kubelet'.
 2. If it's a kubelet serving certificate, it is assigned
    'kubernetes.io/kubelet-serving'.
 3. Otherwise, it is assigned 'kubernetes.io/legacy-unknown'.
Distribution of trust for signers happens out of band. You can select on this field using `spec.signerName`.

### fn withUid

```ts
withUid(uid)
```

UID information about the requesting user. See user.Info interface for details.

### fn withUsages

```ts
withUsages(usages)
```

allowedUsages specifies a set of usage contexts the key will be valid for. See: https://tools.ietf.org/html/rfc5280#section-4.2.1.3
     https://tools.ietf.org/html/rfc5280#section-4.2.1.12
Valid values are:
 "signing",
 "digital signature",
 "content commitment",
 "key encipherment",
 "key agreement",
 "data encipherment",
 "cert sign",
 "crl sign",
 "encipher only",
 "decipher only",
 "any",
 "server auth",
 "client auth",
 "code signing",
 "email protection",
 "s/mime",
 "ipsec end system",
 "ipsec tunnel",
 "ipsec user",
 "timestamping",
 "ocsp signing",
 "microsoft sgc",
 "netscape sgc"

### fn withUsagesMixin

```ts
withUsagesMixin(usages)
```

allowedUsages specifies a set of usage contexts the key will be valid for. See: https://tools.ietf.org/html/rfc5280#section-4.2.1.3
     https://tools.ietf.org/html/rfc5280#section-4.2.1.12
Valid values are:
 "signing",
 "digital signature",
 "content commitment",
 "key encipherment",
 "key agreement",
 "data encipherment",
 "cert sign",
 "crl sign",
 "encipher only",
 "decipher only",
 "any",
 "server auth",
 "client auth",
 "code signing",
 "email protection",
 "s/mime",
 "ipsec end system",
 "ipsec tunnel",
 "ipsec user",
 "timestamping",
 "ocsp signing",
 "microsoft sgc",
 "netscape sgc"

**Note:** This function appends passed data to existing values

### fn withUsername

```ts
withUsername(username)
```

Information about the requesting user. See user.Info interface for details.