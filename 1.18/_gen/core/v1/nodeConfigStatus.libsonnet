{
  // NodeConfigSource specifies a source of node configuration. Exactly one subfield (excluding metadata) must be non-nil.
  active: { configMap: {
    withKubeletConfigKey(kubeletConfigKey): { active+: { configMap+: { kubeletConfigKey: kubeletConfigKey } } },
    withName(name): { active+: { configMap+: { name: name } } },
    withNamespace(namespace): { active+: { configMap+: { namespace: namespace } } },
    withResourceVersion(resourceVersion): { active+: { configMap+: { resourceVersion: resourceVersion } } },
    withUid(uid): { active+: { configMap+: { uid: uid } } }
  } },
  // NodeConfigSource specifies a source of node configuration. Exactly one subfield (excluding metadata) must be non-nil.
  assigned: { configMap: {
    withKubeletConfigKey(kubeletConfigKey): { assigned+: { configMap+: { kubeletConfigKey: kubeletConfigKey } } },
    withName(name): { assigned+: { configMap+: { name: name } } },
    withNamespace(namespace): { assigned+: { configMap+: { namespace: namespace } } },
    withResourceVersion(resourceVersion): { assigned+: { configMap+: { resourceVersion: resourceVersion } } },
    withUid(uid): { assigned+: { configMap+: { uid: uid } } }
  } },
  // NodeConfigSource specifies a source of node configuration. Exactly one subfield (excluding metadata) must be non-nil.
  lastKnownGood: { configMap: {
    withKubeletConfigKey(kubeletConfigKey): { lastKnownGood+: { configMap+: { kubeletConfigKey: kubeletConfigKey } } },
    withName(name): { lastKnownGood+: { configMap+: { name: name } } },
    withNamespace(namespace): { lastKnownGood+: { configMap+: { namespace: namespace } } },
    withResourceVersion(resourceVersion): { lastKnownGood+: { configMap+: { resourceVersion: resourceVersion } } },
    withUid(uid): { lastKnownGood+: { configMap+: { uid: uid } } }
  } },
  withError(err): { 'error': err },
  mixin: self
}