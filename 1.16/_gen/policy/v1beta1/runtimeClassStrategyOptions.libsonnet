{
  withAllowedRuntimeClassNames(allowedRuntimeClassNames): { allowedRuntimeClassNames: if std.isArray(v=allowedRuntimeClassNames) then allowedRuntimeClassNames else [allowedRuntimeClassNames] },
  withAllowedRuntimeClassNamesMixin(allowedRuntimeClassNames): { allowedRuntimeClassNames+: if std.isArray(v=allowedRuntimeClassNames) then allowedRuntimeClassNames else [allowedRuntimeClassNames] },
  withDefaultRuntimeClassName(defaultRuntimeClassName): { defaultRuntimeClassName: defaultRuntimeClassName },
  mixin: self
}