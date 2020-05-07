{
  // new returns an instance of Priorityclass
  new(name): {
    apiVersion: 'scheduling.k8s.io/v1beta1',
    kind: 'PriorityClass'
  } + self.metadata.withName(name=name),
  withDescription(description): { description: description },
  withGlobalDefault(globalDefault): { globalDefault: globalDefault },
  withMetadata(metadata): { metadata: metadata },
  withValue(value): { value: value },
  mixin: self
}