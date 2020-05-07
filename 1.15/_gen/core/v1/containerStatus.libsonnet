{
  // ContainerState holds a possible state of container. Only one of its members may be specified. If none of them is specified, the default one is ContainerStateWaiting.
  lastState: {
    // ContainerStateRunning is a running state of a container.
    running: {
      withStartedAt(startedAt): { lastState+: { running+: { startedAt: startedAt } } }
    },
    // ContainerStateTerminated is a terminated state of a container.
    terminated: {
      withContainerID(containerID): { lastState+: { terminated+: { containerID: containerID } } },
      withExitCode(exitCode): { lastState+: { terminated+: { exitCode: exitCode } } },
      withFinishedAt(finishedAt): { lastState+: { terminated+: { finishedAt: finishedAt } } },
      withMessage(message): { lastState+: { terminated+: { message: message } } },
      withReason(reason): { lastState+: { terminated+: { reason: reason } } },
      withSignal(signal): { lastState+: { terminated+: { signal: signal } } },
      withStartedAt(startedAt): { lastState+: { terminated+: { startedAt: startedAt } } }
    },
    // ContainerStateWaiting is a waiting state of a container.
    waiting: {
      withMessage(message): { lastState+: { waiting+: { message: message } } },
      withReason(reason): { lastState+: { waiting+: { reason: reason } } }
    }
  },
  // ContainerState holds a possible state of container. Only one of its members may be specified. If none of them is specified, the default one is ContainerStateWaiting.
  state: {
    // ContainerStateRunning is a running state of a container.
    running: {
      withStartedAt(startedAt): { state+: { running+: { startedAt: startedAt } } }
    },
    // ContainerStateTerminated is a terminated state of a container.
    terminated: {
      withContainerID(containerID): { state+: { terminated+: { containerID: containerID } } },
      withExitCode(exitCode): { state+: { terminated+: { exitCode: exitCode } } },
      withFinishedAt(finishedAt): { state+: { terminated+: { finishedAt: finishedAt } } },
      withMessage(message): { state+: { terminated+: { message: message } } },
      withReason(reason): { state+: { terminated+: { reason: reason } } },
      withSignal(signal): { state+: { terminated+: { signal: signal } } },
      withStartedAt(startedAt): { state+: { terminated+: { startedAt: startedAt } } }
    },
    // ContainerStateWaiting is a waiting state of a container.
    waiting: {
      withMessage(message): { state+: { waiting+: { message: message } } },
      withReason(reason): { state+: { waiting+: { reason: reason } } }
    }
  },
  withContainerID(containerID): { containerID: containerID },
  withImage(image): { image: image },
  withImageID(imageID): { imageID: imageID },
  withName(name): { name: name },
  withReady(ready): { ready: ready },
  withRestartCount(restartCount): { restartCount: restartCount },
  mixin: self
}