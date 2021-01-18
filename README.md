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

#### Can I use it to replace [ksonnet-lib](https://github.com/ksonnet/ksonnet-lib)?

For most, yes, however there might be some incompatibilities. Engineers at
Grafana Labs has been using `ksonnet-util/kausal.libsonnet` and they have replaced
`ksonnet-lib` successfully in combination with aforementioned
`kausal-shim.libsonnet`.

Known incompatibilities:

* `ksonnet-lib` has hidden objects that are exposed as 'Type' objects inside
    other objects, for example `core.v1.container.envType`, these are now
    available as first class citizens, for this example `core.v1.envVar`. The
    `kausal-shim.libsonnet` covers this problem.
* `new(name)` constructors have a mandatory `name` argument, this was not always
    the case in `ksonnet-lib`. If you come across one of these cases, feel free
    to make a PR similar to [#20](https://github.com/jsonnet-libs/k8s/pull/20)
    to make it optional.
* this library does not support chaining of functions, for example
    `container.new(name).withEnv(env)`. Turns out this practice had a big
    performance penalty on the Jsonnet compiler. A mixin pattern is therefor
    encouraged: `container.new(name) + container.withEnv(env)`.

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

The generated docs can be found here: https://jsonnet-libs.github.io/k8s-alpha/.

#### I found a bug, where can I report this?

Great, let's try and fix that, please report issues in https://github.com/jsonnet-libs/k8s.
