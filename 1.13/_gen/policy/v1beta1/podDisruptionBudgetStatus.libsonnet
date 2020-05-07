{
  withCurrentHealthy(currentHealthy): { currentHealthy: currentHealthy },
  withDesiredHealthy(desiredHealthy): { desiredHealthy: desiredHealthy },
  withDisruptedPods(disruptedPods): { disruptedPods: disruptedPods },
  withDisruptedPodsMixin(disruptedPods): { disruptedPods+: disruptedPods },
  withDisruptionsAllowed(disruptionsAllowed): { disruptionsAllowed: disruptionsAllowed },
  withExpectedPods(expectedPods): { expectedPods: expectedPods },
  withObservedGeneration(observedGeneration): { observedGeneration: observedGeneration },
  mixin: self
}