# k8s-alpha

This repository contains artifacts of the very new Jsonnet Kubernetes library
generator `k8s-gen`, located at https://github.com/jsonnet-libs/k8s.

## Usage

#### With [Tanka](https://tanka.dev)

```bash
# set up Tanka project, we will install k8s ourselves
$ tk init --k8s=false

# pull k8s-alpha for Kubernetes 1.18
$ jb install github.com/jsonnet-libs/k8s-alpha/1.18
```

Then put the following into `lib/k.libsonnet`:

```jsonnet
(import "github.com/jsonnet-libs/k8s-alpha/1.18/main.libsonnet")

```

> If you happen to use `ksonnet-lib/kausal.libsonnet`, also add:
>
> ```jsonnet
> + (import "github.com/jsonnet-libs/k8s-alpha/1.18/extensions/kausal-shim.libsonnet")
> ```

#### Standalone

```bash
$ jb install github.com/jsonnet-libs/k8s-alpha/1.18
```

Then import it in your project:

```jsonnet
local k = import "github.com/jsonnet-libs/k8s-alpha/1.18/main.libsonnet"
```

## FAQ

#### Is it stable?

We don't know. It seems to work pretty well, but it is very young code, so it is
not battle tested.

The API aims to be very similar to `ksonnet-gen`, but not 100% the same, to
allow enough room for important improvements.

If something does not look as expected, please open an issue at
https://github.com/jsonnet-libs/k8s

#### Shall I use it?

Yes, please! We need to get as much feedback as possible to enhance it, so it's
your chance to be part of that!

#### Why a new generator?

The original generator located at https://github.com/ksonnet/ksonnet-gen is not
maintained anymore, and only provides artifacts for Kubernetes versions up to
`v1.14`

#### What about [kube-jsonnet/k](https://github.com/kube-jsonnet/k)?

The `ksonnet-gen` software was forked and updated at
https://github.com/kube-jsonnet/k, by RedHat and Grafana Labs, the same company
behind this project.

While working on it, we quickly realized that the overall code complexity,
performance and correctness is far from what we desire and decided to switch
efforts to rewriting it from scratch.

The result of that is https://github.com/jsonnet-libs/k8s and expected to
replace both, https://github.com/ksonnet/ksonnet-gen and
https://github.com/kube-jsonnet/k as soon as possible.

#### Where can I find documentation?

[Here](https://jsonnet-libs.github.io/k8s-alpha/)
