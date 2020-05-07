{
  withDefaultMode(defaultMode): { defaultMode: defaultMode },
  withItems(items): { items: if std.isArray(v=items) then items else [items] },
  withItemsMixin(items): { items+: if std.isArray(v=items) then items else [items] },
  withOptional(optional): { optional: optional },
  withSecretName(secretName): { secretName: secretName },
  mixin: self
}