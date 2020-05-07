{
  // EndpointConditions represents the current condition of an endpoint.
  conditions: {
    withReady(ready): { conditions+: { ready: ready } }
  },
  // ObjectReference contains enough information to let you inspect or modify the referred object.
  targetRef: {
    withFieldPath(fieldPath): { targetRef+: { fieldPath: fieldPath } },
    withKind(kind): { targetRef+: { kind: kind } },
    withName(name): { targetRef+: { name: name } },
    withNamespace(namespace): { targetRef+: { namespace: namespace } },
    withResourceVersion(resourceVersion): { targetRef+: { resourceVersion: resourceVersion } },
    withUid(uid): { targetRef+: { uid: uid } }
  },
  withAddresses(addresses): { addresses: if std.isArray(v=addresses) then addresses else [addresses] },
  withAddressesMixin(addresses): { addresses+: if std.isArray(v=addresses) then addresses else [addresses] },
  withHostname(hostname): { hostname: hostname },
  withTopology(topology): { topology: topology },
  withTopologyMixin(topology): { topology+: topology },
  mixin: self
}