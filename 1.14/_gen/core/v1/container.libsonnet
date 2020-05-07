{
  // Lifecycle describes actions that the management system should take in response to container lifecycle events. For the PostStart and PreStop lifecycle handlers, management of the container blocks until the action is complete, unless the container process fails, in which case the handler is aborted.
  lifecycle: {
    // Handler defines a specific action that should be taken
    postStart: {
      // ExecAction describes a "run in container" action.
      exec: {
        withCommand(command): { lifecycle+: { postStart+: { exec+: { command: if std.isArray(v=command) then command else [command] } } } },
        withCommandMixin(command): { lifecycle+: { postStart+: { exec+: { command+: if std.isArray(v=command) then command else [command] } } } }
      },
      // HTTPGetAction describes an action based on HTTP Get requests.
      httpGet: {
        withHost(host): { lifecycle+: { postStart+: { httpGet+: { host: host } } } },
        withHttpHeaders(httpHeaders): { lifecycle+: { postStart+: { httpGet+: { httpHeaders: if std.isArray(v=httpHeaders) then httpHeaders else [httpHeaders] } } } },
        withHttpHeadersMixin(httpHeaders): { lifecycle+: { postStart+: { httpGet+: { httpHeaders+: if std.isArray(v=httpHeaders) then httpHeaders else [httpHeaders] } } } },
        withPath(path): { lifecycle+: { postStart+: { httpGet+: { path: path } } } },
        withPort(port): { lifecycle+: { postStart+: { httpGet+: { port: port } } } },
        withScheme(scheme): { lifecycle+: { postStart+: { httpGet+: { scheme: scheme } } } }
      },
      // TCPSocketAction describes an action based on opening a socket
      tcpSocket: {
        withHost(host): { lifecycle+: { postStart+: { tcpSocket+: { host: host } } } },
        withPort(port): { lifecycle+: { postStart+: { tcpSocket+: { port: port } } } }
      }
    },
    // Handler defines a specific action that should be taken
    preStop: {
      // ExecAction describes a "run in container" action.
      exec: {
        withCommand(command): { lifecycle+: { preStop+: { exec+: { command: if std.isArray(v=command) then command else [command] } } } },
        withCommandMixin(command): { lifecycle+: { preStop+: { exec+: { command+: if std.isArray(v=command) then command else [command] } } } }
      },
      // HTTPGetAction describes an action based on HTTP Get requests.
      httpGet: {
        withHost(host): { lifecycle+: { preStop+: { httpGet+: { host: host } } } },
        withHttpHeaders(httpHeaders): { lifecycle+: { preStop+: { httpGet+: { httpHeaders: if std.isArray(v=httpHeaders) then httpHeaders else [httpHeaders] } } } },
        withHttpHeadersMixin(httpHeaders): { lifecycle+: { preStop+: { httpGet+: { httpHeaders+: if std.isArray(v=httpHeaders) then httpHeaders else [httpHeaders] } } } },
        withPath(path): { lifecycle+: { preStop+: { httpGet+: { path: path } } } },
        withPort(port): { lifecycle+: { preStop+: { httpGet+: { port: port } } } },
        withScheme(scheme): { lifecycle+: { preStop+: { httpGet+: { scheme: scheme } } } }
      },
      // TCPSocketAction describes an action based on opening a socket
      tcpSocket: {
        withHost(host): { lifecycle+: { preStop+: { tcpSocket+: { host: host } } } },
        withPort(port): { lifecycle+: { preStop+: { tcpSocket+: { port: port } } } }
      }
    }
  },
  // Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.
  livenessProbe: {
    // ExecAction describes a "run in container" action.
    exec: {
      withCommand(command): { livenessProbe+: { exec+: { command: if std.isArray(v=command) then command else [command] } } },
      withCommandMixin(command): { livenessProbe+: { exec+: { command+: if std.isArray(v=command) then command else [command] } } }
    },
    // HTTPGetAction describes an action based on HTTP Get requests.
    httpGet: {
      withHost(host): { livenessProbe+: { httpGet+: { host: host } } },
      withHttpHeaders(httpHeaders): { livenessProbe+: { httpGet+: { httpHeaders: if std.isArray(v=httpHeaders) then httpHeaders else [httpHeaders] } } },
      withHttpHeadersMixin(httpHeaders): { livenessProbe+: { httpGet+: { httpHeaders+: if std.isArray(v=httpHeaders) then httpHeaders else [httpHeaders] } } },
      withPath(path): { livenessProbe+: { httpGet+: { path: path } } },
      withPort(port): { livenessProbe+: { httpGet+: { port: port } } },
      withScheme(scheme): { livenessProbe+: { httpGet+: { scheme: scheme } } }
    },
    // TCPSocketAction describes an action based on opening a socket
    tcpSocket: {
      withHost(host): { livenessProbe+: { tcpSocket+: { host: host } } },
      withPort(port): { livenessProbe+: { tcpSocket+: { port: port } } }
    },
    withFailureThreshold(failureThreshold): { livenessProbe+: { failureThreshold: failureThreshold } },
    withInitialDelaySeconds(initialDelaySeconds): { livenessProbe+: { initialDelaySeconds: initialDelaySeconds } },
    withPeriodSeconds(periodSeconds): { livenessProbe+: { periodSeconds: periodSeconds } },
    withSuccessThreshold(successThreshold): { livenessProbe+: { successThreshold: successThreshold } },
    withTimeoutSeconds(timeoutSeconds): { livenessProbe+: { timeoutSeconds: timeoutSeconds } }
  },
  // Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.
  readinessProbe: {
    // ExecAction describes a "run in container" action.
    exec: {
      withCommand(command): { readinessProbe+: { exec+: { command: if std.isArray(v=command) then command else [command] } } },
      withCommandMixin(command): { readinessProbe+: { exec+: { command+: if std.isArray(v=command) then command else [command] } } }
    },
    // HTTPGetAction describes an action based on HTTP Get requests.
    httpGet: {
      withHost(host): { readinessProbe+: { httpGet+: { host: host } } },
      withHttpHeaders(httpHeaders): { readinessProbe+: { httpGet+: { httpHeaders: if std.isArray(v=httpHeaders) then httpHeaders else [httpHeaders] } } },
      withHttpHeadersMixin(httpHeaders): { readinessProbe+: { httpGet+: { httpHeaders+: if std.isArray(v=httpHeaders) then httpHeaders else [httpHeaders] } } },
      withPath(path): { readinessProbe+: { httpGet+: { path: path } } },
      withPort(port): { readinessProbe+: { httpGet+: { port: port } } },
      withScheme(scheme): { readinessProbe+: { httpGet+: { scheme: scheme } } }
    },
    // TCPSocketAction describes an action based on opening a socket
    tcpSocket: {
      withHost(host): { readinessProbe+: { tcpSocket+: { host: host } } },
      withPort(port): { readinessProbe+: { tcpSocket+: { port: port } } }
    },
    withFailureThreshold(failureThreshold): { readinessProbe+: { failureThreshold: failureThreshold } },
    withInitialDelaySeconds(initialDelaySeconds): { readinessProbe+: { initialDelaySeconds: initialDelaySeconds } },
    withPeriodSeconds(periodSeconds): { readinessProbe+: { periodSeconds: periodSeconds } },
    withSuccessThreshold(successThreshold): { readinessProbe+: { successThreshold: successThreshold } },
    withTimeoutSeconds(timeoutSeconds): { readinessProbe+: { timeoutSeconds: timeoutSeconds } }
  },
  // ResourceRequirements describes the compute resource requirements.
  resources: {
    withLimits(limits): { resources+: { limits: limits } },
    withLimitsMixin(limits): { resources+: { limits+: limits } },
    withRequests(requests): { resources+: { requests: requests } },
    withRequestsMixin(requests): { resources+: { requests+: requests } }
  },
  // SecurityContext holds security configuration that will be applied to a container. Some fields are present in both SecurityContext and PodSecurityContext.  When both are set, the values in SecurityContext take precedence.
  securityContext: {
    // Adds and removes POSIX capabilities from running containers.
    capabilities: {
      withAdd(add): { securityContext+: { capabilities+: { add: if std.isArray(v=add) then add else [add] } } },
      withAddMixin(add): { securityContext+: { capabilities+: { add+: if std.isArray(v=add) then add else [add] } } },
      withDrop(drop): { securityContext+: { capabilities+: { drop: if std.isArray(v=drop) then drop else [drop] } } },
      withDropMixin(drop): { securityContext+: { capabilities+: { drop+: if std.isArray(v=drop) then drop else [drop] } } }
    },
    // SELinuxOptions are the labels to be applied to the container
    seLinuxOptions: {
      withLevel(level): { securityContext+: { seLinuxOptions+: { level: level } } },
      withRole(role): { securityContext+: { seLinuxOptions+: { role: role } } },
      withType(type): { securityContext+: { seLinuxOptions+: { type: type } } },
      withUser(user): { securityContext+: { seLinuxOptions+: { user: user } } }
    },
    withAllowPrivilegeEscalation(allowPrivilegeEscalation): { securityContext+: { allowPrivilegeEscalation: allowPrivilegeEscalation } },
    withPrivileged(privileged): { securityContext+: { privileged: privileged } },
    withProcMount(procMount): { securityContext+: { procMount: procMount } },
    withReadOnlyRootFilesystem(readOnlyRootFilesystem): { securityContext+: { readOnlyRootFilesystem: readOnlyRootFilesystem } },
    withRunAsGroup(runAsGroup): { securityContext+: { runAsGroup: runAsGroup } },
    withRunAsNonRoot(runAsNonRoot): { securityContext+: { runAsNonRoot: runAsNonRoot } },
    withRunAsUser(runAsUser): { securityContext+: { runAsUser: runAsUser } }
  },
  withArgs(args): { args: if std.isArray(v=args) then args else [args] },
  withArgsMixin(args): { args+: if std.isArray(v=args) then args else [args] },
  withCommand(command): { command: if std.isArray(v=command) then command else [command] },
  withCommandMixin(command): { command+: if std.isArray(v=command) then command else [command] },
  withEnv(env): { env: if std.isArray(v=env) then env else [env] },
  withEnvFrom(envFrom): { envFrom: if std.isArray(v=envFrom) then envFrom else [envFrom] },
  withEnvFromMixin(envFrom): { envFrom+: if std.isArray(v=envFrom) then envFrom else [envFrom] },
  withEnvMixin(env): { env+: if std.isArray(v=env) then env else [env] },
  withImage(image): { image: image },
  withImagePullPolicy(imagePullPolicy): { imagePullPolicy: imagePullPolicy },
  withName(name): { name: name },
  withPorts(ports): { ports: if std.isArray(v=ports) then ports else [ports] },
  withPortsMixin(ports): { ports+: if std.isArray(v=ports) then ports else [ports] },
  withStdin(stdin): { stdin: stdin },
  withStdinOnce(stdinOnce): { stdinOnce: stdinOnce },
  withTerminationMessagePath(terminationMessagePath): { terminationMessagePath: terminationMessagePath },
  withTerminationMessagePolicy(terminationMessagePolicy): { terminationMessagePolicy: terminationMessagePolicy },
  withTty(tty): { tty: tty },
  withVolumeDevices(volumeDevices): { volumeDevices: if std.isArray(v=volumeDevices) then volumeDevices else [volumeDevices] },
  withVolumeDevicesMixin(volumeDevices): { volumeDevices+: if std.isArray(v=volumeDevices) then volumeDevices else [volumeDevices] },
  withVolumeMounts(volumeMounts): { volumeMounts: if std.isArray(v=volumeMounts) then volumeMounts else [volumeMounts] },
  withVolumeMountsMixin(volumeMounts): { volumeMounts+: if std.isArray(v=volumeMounts) then volumeMounts else [volumeMounts] },
  withWorkingDir(workingDir): { workingDir: workingDir },
  mixin: self
}