{
  // ConfigMapNodeConfigSource contains the information to reference a ConfigMap as a config source for the Node.
  configMap: {
    withKubeletConfigKey(kubeletConfigKey): { configMap+: { kubeletConfigKey: kubeletConfigKey } },
    withName(name): { configMap+: { name: name } },
    withNamespace(namespace): { configMap+: { namespace: namespace } },
    withResourceVersion(resourceVersion): { configMap+: { resourceVersion: resourceVersion } },
    withUid(uid): { configMap+: { uid: uid } }
  },
  mixin: self
}