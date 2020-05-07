{
  withConditions(conditions): { conditions: if std.isArray(v=conditions) then conditions else [conditions] },
  withConditionsMixin(conditions): { conditions+: if std.isArray(v=conditions) then conditions else [conditions] },
  withContainerStatuses(containerStatuses): { containerStatuses: if std.isArray(v=containerStatuses) then containerStatuses else [containerStatuses] },
  withContainerStatusesMixin(containerStatuses): { containerStatuses+: if std.isArray(v=containerStatuses) then containerStatuses else [containerStatuses] },
  withHostIP(hostIP): { hostIP: hostIP },
  withInitContainerStatuses(initContainerStatuses): { initContainerStatuses: if std.isArray(v=initContainerStatuses) then initContainerStatuses else [initContainerStatuses] },
  withInitContainerStatusesMixin(initContainerStatuses): { initContainerStatuses+: if std.isArray(v=initContainerStatuses) then initContainerStatuses else [initContainerStatuses] },
  withMessage(message): { message: message },
  withNominatedNodeName(nominatedNodeName): { nominatedNodeName: nominatedNodeName },
  withPhase(phase): { phase: phase },
  withPodIP(podIP): { podIP: podIP },
  withQosClass(qosClass): { qosClass: qosClass },
  withReason(reason): { reason: reason },
  withStartTime(startTime): { startTime: startTime },
  mixin: self
}