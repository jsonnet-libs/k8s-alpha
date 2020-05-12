---
permalink: /
---

# Jsonnet Kubernetes library

The Jsonnet Kubernetes library ([`k8s`](https://github.com/jsonnet-libs/k8s)) is a generated from the OpenAPI
specification (`swagger.json`) of the Kubernetes API.

Currently, artifacts for the following Kubernetes versions are provided:

- [v1.18](1.18/README.md)
- [v1.17](1.17/README.md)
- [v1.16](1.16/README.md)
- [v1.15](1.15/README.md)
- [v1.14](1.14/README.md)

## FAQ

### What is this?

This is a [Jsonnet](https://jsonnet.org) library to create Kubernetes objects
like `Deployment` with as quickly as possible.

This YAML:

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: foo
spec:
  replicas: 1
  template:
    metadata:
      labels:
        app: name
    spec:
      containers:
        - image: foo/bar
          name: foo
```

Can become as short as:

```jsonnet
{
  local k = (import "github.com/jsonnet-libs/k8s-alpha/1.18/main.libsonnet"),
  foo: k.apps.deployment.new(name"foo", containers=[
    k.core.v1.container.new(name="foo", image="foo/bar")
  ])
}
```

Especially [Grafana Tanka](https://tanka.dev) makes this easy in particular.

### Relationship to [ksonnet-lib](https://github.com/ksonnet/ksonnet-lib)

The [ksonnet-lib](https://github.com/ksonnet/ksonnet-lib) was a similar tool.

Being part of the [deprecated ksonnet
project](https://github.com/ksonnet/ksonnet#ksonnet), that library has not seen
much love in the recent days unfortunately.

To continue the success story, community members (especially teams of [Grafana
Labs](https://grafana.com) and [RedHat OpenShift](https://www.openshift.com/)) decided to
pick up the challenge of creating a fresh, more modern and future proof
successor: This project.
