{
  // Overhead structure represents the resource overhead associated with running a pod.
  overhead: {
    withPodFixed(podFixed): { overhead+: { podFixed: podFixed } },
    withPodFixedMixin(podFixed): { overhead+: { podFixed+: podFixed } }
  },
  // Scheduling specifies the scheduling constraints for nodes supporting a RuntimeClass.
  scheduling: {
    withNodeSelector(nodeSelector): { scheduling+: { nodeSelector: nodeSelector } },
    withNodeSelectorMixin(nodeSelector): { scheduling+: { nodeSelector+: nodeSelector } },
    withTolerations(tolerations): { scheduling+: { tolerations: if std.isArray(v=tolerations) then tolerations else [tolerations] } },
    withTolerationsMixin(tolerations): { scheduling+: { tolerations+: if std.isArray(v=tolerations) then tolerations else [tolerations] } }
  },
  withRuntimeHandler(runtimeHandler): { runtimeHandler: runtimeHandler },
  mixin: self
}