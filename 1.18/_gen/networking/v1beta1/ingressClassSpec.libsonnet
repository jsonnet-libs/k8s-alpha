{
  // TypedLocalObjectReference contains enough information to let you locate the typed referenced object inside the same namespace.
  parameters: {
    withApiGroup(apiGroup): { parameters+: { apiGroup: apiGroup } },
    withKind(kind): { parameters+: { kind: kind } },
    withName(name): { parameters+: { name: name } }
  },
  withController(controller): { controller: controller },
  mixin: self
}