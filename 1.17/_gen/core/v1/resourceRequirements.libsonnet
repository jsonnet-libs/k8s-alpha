{
  withLimits(limits): { limits: limits },
  withLimitsMixin(limits): { limits+: limits },
  withRequests(requests): { requests: requests },
  withRequestsMixin(requests): { requests+: requests },
  mixin: self
}