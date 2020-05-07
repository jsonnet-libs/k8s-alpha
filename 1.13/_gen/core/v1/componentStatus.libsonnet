{
  // new returns an instance of Componentstatus
  new(name): {
    apiVersion: 'v1',
    kind: 'ComponentStatus'
  } + self.metadata.withName(name=name),
  withConditions(conditions): { conditions: if std.isArray(v=conditions) then conditions else [conditions] },
  withConditionsMixin(conditions): { conditions+: if std.isArray(v=conditions) then conditions else [conditions] },
  withMetadata(metadata): { metadata: metadata },
  mixin: self
}