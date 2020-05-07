{
  withDefault(default): { default: default },
  withDefaultMixin(default): { default+: default },
  withDefaultRequest(defaultRequest): { defaultRequest: defaultRequest },
  withDefaultRequestMixin(defaultRequest): { defaultRequest+: defaultRequest },
  withMax(max): { max: max },
  withMaxLimitRequestRatio(maxLimitRequestRatio): { maxLimitRequestRatio: maxLimitRequestRatio },
  withMaxLimitRequestRatioMixin(maxLimitRequestRatio): { maxLimitRequestRatio+: maxLimitRequestRatio },
  withMaxMixin(max): { max+: max },
  withMin(min): { min: min },
  withMinMixin(min): { min+: min },
  withType(type): { type: type },
  mixin: self
}