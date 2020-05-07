{
  // ObjectReference contains enough information to let you inspect or modify the referred object.
  targetRef: {
    withFieldPath(fieldPath): { targetRef+: { fieldPath: fieldPath } },
    withKind(kind): { targetRef+: { kind: kind } },
    withName(name): { targetRef+: { name: name } },
    withNamespace(namespace): { targetRef+: { namespace: namespace } },
    withResourceVersion(resourceVersion): { targetRef+: { resourceVersion: resourceVersion } },
    withUid(uid): { targetRef+: { uid: uid } }
  },
  withHostname(hostname): { hostname: hostname },
  withIp(ip): { ip: ip },
  withNodeName(nodeName): { nodeName: nodeName },
  mixin: self
}