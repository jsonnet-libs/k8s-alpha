{
  withRanges(ranges): { ranges: if std.isArray(v=ranges) then ranges else [ranges] },
  withRangesMixin(ranges): { ranges+: if std.isArray(v=ranges) then ranges else [ranges] },
  withRule(rule): { rule: rule },
  mixin: self
}