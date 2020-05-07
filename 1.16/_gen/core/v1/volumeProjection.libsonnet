{
  // Adapts a ConfigMap into a projected volume.
  // 
  // The contents of the target ConfigMap's Data field will be presented in a projected volume as files using the keys in the Data field as the file names, unless the items element is populated with specific mappings of keys to paths. Note that this is identical to a configmap volume source without the default mode.
  configMap: {
    withItems(items): { configMap+: { items: if std.isArray(v=items) then items else [items] } },
    withItemsMixin(items): { configMap+: { items+: if std.isArray(v=items) then items else [items] } },
    withName(name): { configMap+: { name: name } },
    withOptional(optional): { configMap+: { optional: optional } }
  },
  // Represents downward API info for projecting into a projected volume. Note that this is identical to a downwardAPI volume source without the default mode.
  downwardAPI: {
    withItems(items): { downwardAPI+: { items: if std.isArray(v=items) then items else [items] } },
    withItemsMixin(items): { downwardAPI+: { items+: if std.isArray(v=items) then items else [items] } }
  },
  // Adapts a secret into a projected volume.
  // 
  // The contents of the target Secret's Data field will be presented in a projected volume as files using the keys in the Data field as the file names. Note that this is identical to a secret volume source without the default mode.
  secret: {
    withItems(items): { secret+: { items: if std.isArray(v=items) then items else [items] } },
    withItemsMixin(items): { secret+: { items+: if std.isArray(v=items) then items else [items] } },
    withName(name): { secret+: { name: name } },
    withOptional(optional): { secret+: { optional: optional } }
  },
  // ServiceAccountTokenProjection represents a projected service account token volume. This projection can be used to insert a service account token into the pods runtime filesystem for use against APIs (Kubernetes API Server or otherwise).
  serviceAccountToken: {
    withAudience(audience): { serviceAccountToken+: { audience: audience } },
    withExpirationSeconds(expirationSeconds): { serviceAccountToken+: { expirationSeconds: expirationSeconds } },
    withPath(path): { serviceAccountToken+: { path: path } }
  },
  mixin: self
}