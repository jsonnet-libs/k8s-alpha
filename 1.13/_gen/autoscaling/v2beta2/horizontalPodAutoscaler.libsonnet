{
  // new returns an instance of Horizontalpodautoscaler
  new(name): {
    apiVersion: 'autoscaling/v2beta2',
    kind: 'HorizontalPodAutoscaler'
  } + self.metadata.withName(name=name),
  withMetadata(metadata): { metadata: metadata },
  withSpec(spec): { spec: spec },
  mixin: self
}