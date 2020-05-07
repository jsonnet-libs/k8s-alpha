{
  // ContainerStateRunning is a running state of a container.
  running: {
    withStartedAt(startedAt): { running+: { startedAt: startedAt } }
  },
  // ContainerStateTerminated is a terminated state of a container.
  terminated: {
    withContainerID(containerID): { terminated+: { containerID: containerID } },
    withExitCode(exitCode): { terminated+: { exitCode: exitCode } },
    withFinishedAt(finishedAt): { terminated+: { finishedAt: finishedAt } },
    withMessage(message): { terminated+: { message: message } },
    withReason(reason): { terminated+: { reason: reason } },
    withSignal(signal): { terminated+: { signal: signal } },
    withStartedAt(startedAt): { terminated+: { startedAt: startedAt } }
  },
  // ContainerStateWaiting is a waiting state of a container.
  waiting: {
    withMessage(message): { waiting+: { message: message } },
    withReason(reason): { waiting+: { reason: reason } }
  },
  mixin: self
}