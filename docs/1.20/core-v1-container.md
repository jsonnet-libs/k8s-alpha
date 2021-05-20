---
permalink: /1.20/core/v1/container/
---

# package container

A single application container that you want to run within a pod.

## Index

* [`fn new(name, image)`](#fn-new)
* [`fn withArgs(args)`](#fn-withargs)
* [`fn withArgsMixin(args)`](#fn-withargsmixin)
* [`fn withCommand(command)`](#fn-withcommand)
* [`fn withCommandMixin(command)`](#fn-withcommandmixin)
* [`fn withEnv(env)`](#fn-withenv)
* [`fn withEnvFrom(envFrom)`](#fn-withenvfrom)
* [`fn withEnvFromMixin(envFrom)`](#fn-withenvfrommixin)
* [`fn withEnvMap(env)`](#fn-withenvmap)
* [`fn withEnvMixin(env)`](#fn-withenvmixin)
* [`fn withImage(image)`](#fn-withimage)
* [`fn withImagePullPolicy(imagePullPolicy)`](#fn-withimagepullpolicy)
* [`fn withName(name)`](#fn-withname)
* [`fn withPorts(ports)`](#fn-withports)
* [`fn withPortsMixin(ports)`](#fn-withportsmixin)
* [`fn withStdin(stdin)`](#fn-withstdin)
* [`fn withStdinOnce(stdinOnce)`](#fn-withstdinonce)
* [`fn withTerminationMessagePath(terminationMessagePath)`](#fn-withterminationmessagepath)
* [`fn withTerminationMessagePolicy(terminationMessagePolicy)`](#fn-withterminationmessagepolicy)
* [`fn withTty(tty)`](#fn-withtty)
* [`fn withVolumeDevices(volumeDevices)`](#fn-withvolumedevices)
* [`fn withVolumeDevicesMixin(volumeDevices)`](#fn-withvolumedevicesmixin)
* [`fn withVolumeMounts(volumeMounts)`](#fn-withvolumemounts)
* [`fn withVolumeMountsMixin(volumeMounts)`](#fn-withvolumemountsmixin)
* [`fn withWorkingDir(workingDir)`](#fn-withworkingdir)
* [`obj lifecycle`](#obj-lifecycle)
  * [`obj lifecycle.postStart`](#obj-lifecyclepoststart)
    * [`obj lifecycle.postStart.exec`](#obj-lifecyclepoststartexec)
      * [`fn withCommand(command)`](#fn-lifecyclepoststartexecwithcommand)
      * [`fn withCommandMixin(command)`](#fn-lifecyclepoststartexecwithcommandmixin)
    * [`obj lifecycle.postStart.httpGet`](#obj-lifecyclepoststarthttpget)
      * [`fn withHost(host)`](#fn-lifecyclepoststarthttpgetwithhost)
      * [`fn withHttpHeaders(httpHeaders)`](#fn-lifecyclepoststarthttpgetwithhttpheaders)
      * [`fn withHttpHeadersMixin(httpHeaders)`](#fn-lifecyclepoststarthttpgetwithhttpheadersmixin)
      * [`fn withPath(path)`](#fn-lifecyclepoststarthttpgetwithpath)
      * [`fn withPort(port)`](#fn-lifecyclepoststarthttpgetwithport)
      * [`fn withScheme(scheme)`](#fn-lifecyclepoststarthttpgetwithscheme)
    * [`obj lifecycle.postStart.tcpSocket`](#obj-lifecyclepoststarttcpsocket)
      * [`fn withHost(host)`](#fn-lifecyclepoststarttcpsocketwithhost)
      * [`fn withPort(port)`](#fn-lifecyclepoststarttcpsocketwithport)
  * [`obj lifecycle.preStop`](#obj-lifecycleprestop)
    * [`obj lifecycle.preStop.exec`](#obj-lifecycleprestopexec)
      * [`fn withCommand(command)`](#fn-lifecycleprestopexecwithcommand)
      * [`fn withCommandMixin(command)`](#fn-lifecycleprestopexecwithcommandmixin)
    * [`obj lifecycle.preStop.httpGet`](#obj-lifecycleprestophttpget)
      * [`fn withHost(host)`](#fn-lifecycleprestophttpgetwithhost)
      * [`fn withHttpHeaders(httpHeaders)`](#fn-lifecycleprestophttpgetwithhttpheaders)
      * [`fn withHttpHeadersMixin(httpHeaders)`](#fn-lifecycleprestophttpgetwithhttpheadersmixin)
      * [`fn withPath(path)`](#fn-lifecycleprestophttpgetwithpath)
      * [`fn withPort(port)`](#fn-lifecycleprestophttpgetwithport)
      * [`fn withScheme(scheme)`](#fn-lifecycleprestophttpgetwithscheme)
    * [`obj lifecycle.preStop.tcpSocket`](#obj-lifecycleprestoptcpsocket)
      * [`fn withHost(host)`](#fn-lifecycleprestoptcpsocketwithhost)
      * [`fn withPort(port)`](#fn-lifecycleprestoptcpsocketwithport)
* [`obj livenessProbe`](#obj-livenessprobe)
  * [`fn withFailureThreshold(failureThreshold)`](#fn-livenessprobewithfailurethreshold)
  * [`fn withInitialDelaySeconds(initialDelaySeconds)`](#fn-livenessprobewithinitialdelayseconds)
  * [`fn withPeriodSeconds(periodSeconds)`](#fn-livenessprobewithperiodseconds)
  * [`fn withSuccessThreshold(successThreshold)`](#fn-livenessprobewithsuccessthreshold)
  * [`fn withTimeoutSeconds(timeoutSeconds)`](#fn-livenessprobewithtimeoutseconds)
  * [`obj livenessProbe.exec`](#obj-livenessprobeexec)
    * [`fn withCommand(command)`](#fn-livenessprobeexecwithcommand)
    * [`fn withCommandMixin(command)`](#fn-livenessprobeexecwithcommandmixin)
  * [`obj livenessProbe.httpGet`](#obj-livenessprobehttpget)
    * [`fn withHost(host)`](#fn-livenessprobehttpgetwithhost)
    * [`fn withHttpHeaders(httpHeaders)`](#fn-livenessprobehttpgetwithhttpheaders)
    * [`fn withHttpHeadersMixin(httpHeaders)`](#fn-livenessprobehttpgetwithhttpheadersmixin)
    * [`fn withPath(path)`](#fn-livenessprobehttpgetwithpath)
    * [`fn withPort(port)`](#fn-livenessprobehttpgetwithport)
    * [`fn withScheme(scheme)`](#fn-livenessprobehttpgetwithscheme)
  * [`obj livenessProbe.tcpSocket`](#obj-livenessprobetcpsocket)
    * [`fn withHost(host)`](#fn-livenessprobetcpsocketwithhost)
    * [`fn withPort(port)`](#fn-livenessprobetcpsocketwithport)
* [`obj readinessProbe`](#obj-readinessprobe)
  * [`fn withFailureThreshold(failureThreshold)`](#fn-readinessprobewithfailurethreshold)
  * [`fn withInitialDelaySeconds(initialDelaySeconds)`](#fn-readinessprobewithinitialdelayseconds)
  * [`fn withPeriodSeconds(periodSeconds)`](#fn-readinessprobewithperiodseconds)
  * [`fn withSuccessThreshold(successThreshold)`](#fn-readinessprobewithsuccessthreshold)
  * [`fn withTimeoutSeconds(timeoutSeconds)`](#fn-readinessprobewithtimeoutseconds)
  * [`obj readinessProbe.exec`](#obj-readinessprobeexec)
    * [`fn withCommand(command)`](#fn-readinessprobeexecwithcommand)
    * [`fn withCommandMixin(command)`](#fn-readinessprobeexecwithcommandmixin)
  * [`obj readinessProbe.httpGet`](#obj-readinessprobehttpget)
    * [`fn withHost(host)`](#fn-readinessprobehttpgetwithhost)
    * [`fn withHttpHeaders(httpHeaders)`](#fn-readinessprobehttpgetwithhttpheaders)
    * [`fn withHttpHeadersMixin(httpHeaders)`](#fn-readinessprobehttpgetwithhttpheadersmixin)
    * [`fn withPath(path)`](#fn-readinessprobehttpgetwithpath)
    * [`fn withPort(port)`](#fn-readinessprobehttpgetwithport)
    * [`fn withScheme(scheme)`](#fn-readinessprobehttpgetwithscheme)
  * [`obj readinessProbe.tcpSocket`](#obj-readinessprobetcpsocket)
    * [`fn withHost(host)`](#fn-readinessprobetcpsocketwithhost)
    * [`fn withPort(port)`](#fn-readinessprobetcpsocketwithport)
* [`obj resources`](#obj-resources)
  * [`fn withLimits(limits)`](#fn-resourceswithlimits)
  * [`fn withLimitsMixin(limits)`](#fn-resourceswithlimitsmixin)
  * [`fn withRequests(requests)`](#fn-resourceswithrequests)
  * [`fn withRequestsMixin(requests)`](#fn-resourceswithrequestsmixin)
* [`obj securityContext`](#obj-securitycontext)
  * [`fn withAllowPrivilegeEscalation(allowPrivilegeEscalation)`](#fn-securitycontextwithallowprivilegeescalation)
  * [`fn withPrivileged(privileged)`](#fn-securitycontextwithprivileged)
  * [`fn withProcMount(procMount)`](#fn-securitycontextwithprocmount)
  * [`fn withReadOnlyRootFilesystem(readOnlyRootFilesystem)`](#fn-securitycontextwithreadonlyrootfilesystem)
  * [`fn withRunAsGroup(runAsGroup)`](#fn-securitycontextwithrunasgroup)
  * [`fn withRunAsNonRoot(runAsNonRoot)`](#fn-securitycontextwithrunasnonroot)
  * [`fn withRunAsUser(runAsUser)`](#fn-securitycontextwithrunasuser)
  * [`obj securityContext.capabilities`](#obj-securitycontextcapabilities)
    * [`fn withAdd(add)`](#fn-securitycontextcapabilitieswithadd)
    * [`fn withAddMixin(add)`](#fn-securitycontextcapabilitieswithaddmixin)
    * [`fn withDrop(drop)`](#fn-securitycontextcapabilitieswithdrop)
    * [`fn withDropMixin(drop)`](#fn-securitycontextcapabilitieswithdropmixin)
  * [`obj securityContext.seLinuxOptions`](#obj-securitycontextselinuxoptions)
    * [`fn withLevel(level)`](#fn-securitycontextselinuxoptionswithlevel)
    * [`fn withRole(role)`](#fn-securitycontextselinuxoptionswithrole)
    * [`fn withType(type)`](#fn-securitycontextselinuxoptionswithtype)
    * [`fn withUser(user)`](#fn-securitycontextselinuxoptionswithuser)
  * [`obj securityContext.seccompProfile`](#obj-securitycontextseccompprofile)
    * [`fn withLocalhostProfile(localhostProfile)`](#fn-securitycontextseccompprofilewithlocalhostprofile)
    * [`fn withType(type)`](#fn-securitycontextseccompprofilewithtype)
  * [`obj securityContext.windowsOptions`](#obj-securitycontextwindowsoptions)
    * [`fn withGmsaCredentialSpec(gmsaCredentialSpec)`](#fn-securitycontextwindowsoptionswithgmsacredentialspec)
    * [`fn withGmsaCredentialSpecName(gmsaCredentialSpecName)`](#fn-securitycontextwindowsoptionswithgmsacredentialspecname)
    * [`fn withRunAsUserName(runAsUserName)`](#fn-securitycontextwindowsoptionswithrunasusername)
* [`obj startupProbe`](#obj-startupprobe)
  * [`fn withFailureThreshold(failureThreshold)`](#fn-startupprobewithfailurethreshold)
  * [`fn withInitialDelaySeconds(initialDelaySeconds)`](#fn-startupprobewithinitialdelayseconds)
  * [`fn withPeriodSeconds(periodSeconds)`](#fn-startupprobewithperiodseconds)
  * [`fn withSuccessThreshold(successThreshold)`](#fn-startupprobewithsuccessthreshold)
  * [`fn withTimeoutSeconds(timeoutSeconds)`](#fn-startupprobewithtimeoutseconds)
  * [`obj startupProbe.exec`](#obj-startupprobeexec)
    * [`fn withCommand(command)`](#fn-startupprobeexecwithcommand)
    * [`fn withCommandMixin(command)`](#fn-startupprobeexecwithcommandmixin)
  * [`obj startupProbe.httpGet`](#obj-startupprobehttpget)
    * [`fn withHost(host)`](#fn-startupprobehttpgetwithhost)
    * [`fn withHttpHeaders(httpHeaders)`](#fn-startupprobehttpgetwithhttpheaders)
    * [`fn withHttpHeadersMixin(httpHeaders)`](#fn-startupprobehttpgetwithhttpheadersmixin)
    * [`fn withPath(path)`](#fn-startupprobehttpgetwithpath)
    * [`fn withPort(port)`](#fn-startupprobehttpgetwithport)
    * [`fn withScheme(scheme)`](#fn-startupprobehttpgetwithscheme)
  * [`obj startupProbe.tcpSocket`](#obj-startupprobetcpsocket)
    * [`fn withHost(host)`](#fn-startupprobetcpsocketwithhost)
    * [`fn withPort(port)`](#fn-startupprobetcpsocketwithport)

## Fields

### fn new

```ts
new(name, image)
```

new returns a new `container` of given `name` and `image`

### fn withArgs

```ts
withArgs(args)
```

Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell

### fn withArgsMixin

```ts
withArgsMixin(args)
```

Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell

**Note:** This function appends passed data to existing values

### fn withCommand

```ts
withCommand(command)
```

Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell

### fn withCommandMixin

```ts
withCommandMixin(command)
```

Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell

**Note:** This function appends passed data to existing values

### fn withEnv

```ts
withEnv(env)
```

List of environment variables to set in the container. Cannot be updated.

### fn withEnvFrom

```ts
withEnvFrom(envFrom)
```

List of sources to populate environment variables in the container. The keys defined within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event when the container is starting. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated.

### fn withEnvFromMixin

```ts
withEnvFromMixin(envFrom)
```

List of sources to populate environment variables in the container. The keys defined within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event when the container is starting. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated.

**Note:** This function appends passed data to existing values

### fn withEnvMap

```ts
withEnvMap(env)
```

`withEnvMap` works like `withEnvMixin` but accepts a key/value map, this map is converted a list of core.v1.envVar(key, value)`

### fn withEnvMixin

```ts
withEnvMixin(env)
```

List of environment variables to set in the container. Cannot be updated.

**Note:** This function appends passed data to existing values

### fn withImage

```ts
withImage(image)
```

Docker image name. More info: https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets.

### fn withImagePullPolicy

```ts
withImagePullPolicy(imagePullPolicy)
```

Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: https://kubernetes.io/docs/concepts/containers/images#updating-images

### fn withName

```ts
withName(name)
```

Name of the container specified as a DNS_LABEL. Each container in a pod must have a unique name (DNS_LABEL). Cannot be updated.

### fn withPorts

```ts
withPorts(ports)
```

List of ports to expose from the container. Exposing a port here gives the system additional information about the network connections a container uses, but is primarily informational. Not specifying a port here DOES NOT prevent that port from being exposed. Any port which is listening on the default "0.0.0.0" address inside a container will be accessible from the network. Cannot be updated.

### fn withPortsMixin

```ts
withPortsMixin(ports)
```

List of ports to expose from the container. Exposing a port here gives the system additional information about the network connections a container uses, but is primarily informational. Not specifying a port here DOES NOT prevent that port from being exposed. Any port which is listening on the default "0.0.0.0" address inside a container will be accessible from the network. Cannot be updated.

**Note:** This function appends passed data to existing values

### fn withStdin

```ts
withStdin(stdin)
```

Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF. Default is false.

### fn withStdinOnce

```ts
withStdinOnce(stdinOnce)
```

Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. Default is false

### fn withTerminationMessagePath

```ts
withTerminationMessagePath(terminationMessagePath)
```

Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to /dev/termination-log. Cannot be updated.

### fn withTerminationMessagePolicy

```ts
withTerminationMessagePolicy(terminationMessagePolicy)
```

Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated.

### fn withTty

```ts
withTty(tty)
```

Whether this container should allocate a TTY for itself, also requires 'stdin' to be true. Default is false.

### fn withVolumeDevices

```ts
withVolumeDevices(volumeDevices)
```

volumeDevices is the list of block devices to be used by the container.

### fn withVolumeDevicesMixin

```ts
withVolumeDevicesMixin(volumeDevices)
```

volumeDevices is the list of block devices to be used by the container.

**Note:** This function appends passed data to existing values

### fn withVolumeMounts

```ts
withVolumeMounts(volumeMounts)
```

Pod volumes to mount into the container's filesystem. Cannot be updated.

### fn withVolumeMountsMixin

```ts
withVolumeMountsMixin(volumeMounts)
```

Pod volumes to mount into the container's filesystem. Cannot be updated.

**Note:** This function appends passed data to existing values

### fn withWorkingDir

```ts
withWorkingDir(workingDir)
```

Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated.

## obj lifecycle

Lifecycle describes actions that the management system should take in response to container lifecycle events. For the PostStart and PreStop lifecycle handlers, management of the container blocks until the action is complete, unless the container process fails, in which case the handler is aborted.

## obj lifecycle.postStart



## obj lifecycle.postStart.exec



### fn lifecycle.postStart.exec.withCommand

```ts
withCommand(command)
```

Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy.

### fn lifecycle.postStart.exec.withCommandMixin

```ts
withCommandMixin(command)
```

Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy.

**Note:** This function appends passed data to existing values

## obj lifecycle.postStart.httpGet



### fn lifecycle.postStart.httpGet.withHost

```ts
withHost(host)
```

Host name to connect to, defaults to the pod IP. You probably want to set "Host" in httpHeaders instead.

### fn lifecycle.postStart.httpGet.withHttpHeaders

```ts
withHttpHeaders(httpHeaders)
```

Custom headers to set in the request. HTTP allows repeated headers.

### fn lifecycle.postStart.httpGet.withHttpHeadersMixin

```ts
withHttpHeadersMixin(httpHeaders)
```

Custom headers to set in the request. HTTP allows repeated headers.

**Note:** This function appends passed data to existing values

### fn lifecycle.postStart.httpGet.withPath

```ts
withPath(path)
```

Path to access on the HTTP server.

### fn lifecycle.postStart.httpGet.withPort

```ts
withPort(port)
```

IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.

### fn lifecycle.postStart.httpGet.withScheme

```ts
withScheme(scheme)
```

Scheme to use for connecting to the host. Defaults to HTTP.

## obj lifecycle.postStart.tcpSocket



### fn lifecycle.postStart.tcpSocket.withHost

```ts
withHost(host)
```

Optional: Host name to connect to, defaults to the pod IP.

### fn lifecycle.postStart.tcpSocket.withPort

```ts
withPort(port)
```

IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.

## obj lifecycle.preStop



## obj lifecycle.preStop.exec



### fn lifecycle.preStop.exec.withCommand

```ts
withCommand(command)
```

Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy.

### fn lifecycle.preStop.exec.withCommandMixin

```ts
withCommandMixin(command)
```

Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy.

**Note:** This function appends passed data to existing values

## obj lifecycle.preStop.httpGet

HTTPGetAction describes an action based on HTTP Get requests.

### fn lifecycle.preStop.httpGet.withHost

```ts
withHost(host)
```

Host name to connect to, defaults to the pod IP. You probably want to set "Host" in httpHeaders instead.

### fn lifecycle.preStop.httpGet.withHttpHeaders

```ts
withHttpHeaders(httpHeaders)
```

Custom headers to set in the request. HTTP allows repeated headers.

### fn lifecycle.preStop.httpGet.withHttpHeadersMixin

```ts
withHttpHeadersMixin(httpHeaders)
```

Custom headers to set in the request. HTTP allows repeated headers.

**Note:** This function appends passed data to existing values

### fn lifecycle.preStop.httpGet.withPath

```ts
withPath(path)
```

Path to access on the HTTP server.

### fn lifecycle.preStop.httpGet.withPort

```ts
withPort(port)
```

IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.

### fn lifecycle.preStop.httpGet.withScheme

```ts
withScheme(scheme)
```

Scheme to use for connecting to the host. Defaults to HTTP.

## obj lifecycle.preStop.tcpSocket

TCPSocketAction describes an action based on opening a socket

### fn lifecycle.preStop.tcpSocket.withHost

```ts
withHost(host)
```

Optional: Host name to connect to, defaults to the pod IP.

### fn lifecycle.preStop.tcpSocket.withPort

```ts
withPort(port)
```

IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.

## obj livenessProbe

Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.

### fn livenessProbe.withFailureThreshold

```ts
withFailureThreshold(failureThreshold)
```

Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.

### fn livenessProbe.withInitialDelaySeconds

```ts
withInitialDelaySeconds(initialDelaySeconds)
```

Number of seconds after the container has started before liveness probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes

### fn livenessProbe.withPeriodSeconds

```ts
withPeriodSeconds(periodSeconds)
```

How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1.

### fn livenessProbe.withSuccessThreshold

```ts
withSuccessThreshold(successThreshold)
```

Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1.

### fn livenessProbe.withTimeoutSeconds

```ts
withTimeoutSeconds(timeoutSeconds)
```

Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes

## obj livenessProbe.exec

ExecAction describes a "run in container" action.

### fn livenessProbe.exec.withCommand

```ts
withCommand(command)
```

Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy.

### fn livenessProbe.exec.withCommandMixin

```ts
withCommandMixin(command)
```

Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy.

**Note:** This function appends passed data to existing values

## obj livenessProbe.httpGet

HTTPGetAction describes an action based on HTTP Get requests.

### fn livenessProbe.httpGet.withHost

```ts
withHost(host)
```

Host name to connect to, defaults to the pod IP. You probably want to set "Host" in httpHeaders instead.

### fn livenessProbe.httpGet.withHttpHeaders

```ts
withHttpHeaders(httpHeaders)
```

Custom headers to set in the request. HTTP allows repeated headers.

### fn livenessProbe.httpGet.withHttpHeadersMixin

```ts
withHttpHeadersMixin(httpHeaders)
```

Custom headers to set in the request. HTTP allows repeated headers.

**Note:** This function appends passed data to existing values

### fn livenessProbe.httpGet.withPath

```ts
withPath(path)
```

Path to access on the HTTP server.

### fn livenessProbe.httpGet.withPort

```ts
withPort(port)
```

IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.

### fn livenessProbe.httpGet.withScheme

```ts
withScheme(scheme)
```

Scheme to use for connecting to the host. Defaults to HTTP.

## obj livenessProbe.tcpSocket

TCPSocketAction describes an action based on opening a socket

### fn livenessProbe.tcpSocket.withHost

```ts
withHost(host)
```

Optional: Host name to connect to, defaults to the pod IP.

### fn livenessProbe.tcpSocket.withPort

```ts
withPort(port)
```

IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.

## obj readinessProbe

Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.

### fn readinessProbe.withFailureThreshold

```ts
withFailureThreshold(failureThreshold)
```

Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.

### fn readinessProbe.withInitialDelaySeconds

```ts
withInitialDelaySeconds(initialDelaySeconds)
```

Number of seconds after the container has started before liveness probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes

### fn readinessProbe.withPeriodSeconds

```ts
withPeriodSeconds(periodSeconds)
```

How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1.

### fn readinessProbe.withSuccessThreshold

```ts
withSuccessThreshold(successThreshold)
```

Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1.

### fn readinessProbe.withTimeoutSeconds

```ts
withTimeoutSeconds(timeoutSeconds)
```

Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes

## obj readinessProbe.exec

ExecAction describes a "run in container" action.

### fn readinessProbe.exec.withCommand

```ts
withCommand(command)
```

Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy.

### fn readinessProbe.exec.withCommandMixin

```ts
withCommandMixin(command)
```

Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy.

**Note:** This function appends passed data to existing values

## obj readinessProbe.httpGet

HTTPGetAction describes an action based on HTTP Get requests.

### fn readinessProbe.httpGet.withHost

```ts
withHost(host)
```

Host name to connect to, defaults to the pod IP. You probably want to set "Host" in httpHeaders instead.

### fn readinessProbe.httpGet.withHttpHeaders

```ts
withHttpHeaders(httpHeaders)
```

Custom headers to set in the request. HTTP allows repeated headers.

### fn readinessProbe.httpGet.withHttpHeadersMixin

```ts
withHttpHeadersMixin(httpHeaders)
```

Custom headers to set in the request. HTTP allows repeated headers.

**Note:** This function appends passed data to existing values

### fn readinessProbe.httpGet.withPath

```ts
withPath(path)
```

Path to access on the HTTP server.

### fn readinessProbe.httpGet.withPort

```ts
withPort(port)
```

IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.

### fn readinessProbe.httpGet.withScheme

```ts
withScheme(scheme)
```

Scheme to use for connecting to the host. Defaults to HTTP.

## obj readinessProbe.tcpSocket

TCPSocketAction describes an action based on opening a socket

### fn readinessProbe.tcpSocket.withHost

```ts
withHost(host)
```

Optional: Host name to connect to, defaults to the pod IP.

### fn readinessProbe.tcpSocket.withPort

```ts
withPort(port)
```

IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.

## obj resources

ResourceRequirements describes the compute resource requirements.

### fn resources.withLimits

```ts
withLimits(limits)
```

Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/

### fn resources.withLimitsMixin

```ts
withLimitsMixin(limits)
```

Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/

**Note:** This function appends passed data to existing values

### fn resources.withRequests

```ts
withRequests(requests)
```

Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/

### fn resources.withRequestsMixin

```ts
withRequestsMixin(requests)
```

Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/

**Note:** This function appends passed data to existing values

## obj securityContext

SecurityContext holds security configuration that will be applied to a container. Some fields are present in both SecurityContext and PodSecurityContext.  When both are set, the values in SecurityContext take precedence.

### fn securityContext.withAllowPrivilegeEscalation

```ts
withAllowPrivilegeEscalation(allowPrivilegeEscalation)
```

AllowPrivilegeEscalation controls whether a process can gain more privileges than its parent process. This bool directly controls if the no_new_privs flag will be set on the container process. AllowPrivilegeEscalation is true always when the container is: 1) run as Privileged 2) has CAP_SYS_ADMIN

### fn securityContext.withPrivileged

```ts
withPrivileged(privileged)
```

Run container in privileged mode. Processes in privileged containers are essentially equivalent to root on the host. Defaults to false.

### fn securityContext.withProcMount

```ts
withProcMount(procMount)
```

procMount denotes the type of proc mount to use for the containers. The default is DefaultProcMount which uses the container runtime defaults for readonly paths and masked paths. This requires the ProcMountType feature flag to be enabled.

### fn securityContext.withReadOnlyRootFilesystem

```ts
withReadOnlyRootFilesystem(readOnlyRootFilesystem)
```

Whether this container has a read-only root filesystem. Default is false.

### fn securityContext.withRunAsGroup

```ts
withRunAsGroup(runAsGroup)
```

The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.

### fn securityContext.withRunAsNonRoot

```ts
withRunAsNonRoot(runAsNonRoot)
```

Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.

### fn securityContext.withRunAsUser

```ts
withRunAsUser(runAsUser)
```

The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.

## obj securityContext.capabilities



### fn securityContext.capabilities.withAdd

```ts
withAdd(add)
```

Added capabilities

### fn securityContext.capabilities.withAddMixin

```ts
withAddMixin(add)
```

Added capabilities

**Note:** This function appends passed data to existing values

### fn securityContext.capabilities.withDrop

```ts
withDrop(drop)
```

Removed capabilities

### fn securityContext.capabilities.withDropMixin

```ts
withDropMixin(drop)
```

Removed capabilities

**Note:** This function appends passed data to existing values

## obj securityContext.seLinuxOptions

SELinuxOptions are the labels to be applied to the container

### fn securityContext.seLinuxOptions.withLevel

```ts
withLevel(level)
```

Level is SELinux level label that applies to the container.

### fn securityContext.seLinuxOptions.withRole

```ts
withRole(role)
```

Role is a SELinux role label that applies to the container.

### fn securityContext.seLinuxOptions.withType

```ts
withType(type)
```

Type is a SELinux type label that applies to the container.

### fn securityContext.seLinuxOptions.withUser

```ts
withUser(user)
```

User is a SELinux user label that applies to the container.

## obj securityContext.seccompProfile



### fn securityContext.seccompProfile.withLocalhostProfile

```ts
withLocalhostProfile(localhostProfile)
```

localhostProfile indicates a profile defined in a file on the node should be used. The profile must be preconfigured on the node to work. Must be a descending path, relative to the kubelet's configured seccomp profile location. Must only be set if type is 'Localhost'.

### fn securityContext.seccompProfile.withType

```ts
withType(type)
```

type indicates which kind of seccomp profile will be applied. Valid options are:

Localhost - a profile defined in a file on the node should be used. RuntimeDefault - the container runtime default profile should be used. Unconfined - no profile should be applied.

## obj securityContext.windowsOptions

WindowsSecurityContextOptions contain Windows-specific options and credentials.

### fn securityContext.windowsOptions.withGmsaCredentialSpec

```ts
withGmsaCredentialSpec(gmsaCredentialSpec)
```

GMSACredentialSpec is where the GMSA admission webhook (https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field.

### fn securityContext.windowsOptions.withGmsaCredentialSpecName

```ts
withGmsaCredentialSpecName(gmsaCredentialSpecName)
```

GMSACredentialSpecName is the name of the GMSA credential spec to use.

### fn securityContext.windowsOptions.withRunAsUserName

```ts
withRunAsUserName(runAsUserName)
```

The UserName in Windows to run the entrypoint of the container process. Defaults to the user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.

## obj startupProbe

Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.

### fn startupProbe.withFailureThreshold

```ts
withFailureThreshold(failureThreshold)
```

Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.

### fn startupProbe.withInitialDelaySeconds

```ts
withInitialDelaySeconds(initialDelaySeconds)
```

Number of seconds after the container has started before liveness probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes

### fn startupProbe.withPeriodSeconds

```ts
withPeriodSeconds(periodSeconds)
```

How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1.

### fn startupProbe.withSuccessThreshold

```ts
withSuccessThreshold(successThreshold)
```

Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1.

### fn startupProbe.withTimeoutSeconds

```ts
withTimeoutSeconds(timeoutSeconds)
```

Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes

## obj startupProbe.exec

ExecAction describes a "run in container" action.

### fn startupProbe.exec.withCommand

```ts
withCommand(command)
```

Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy.

### fn startupProbe.exec.withCommandMixin

```ts
withCommandMixin(command)
```

Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy.

**Note:** This function appends passed data to existing values

## obj startupProbe.httpGet



### fn startupProbe.httpGet.withHost

```ts
withHost(host)
```

Host name to connect to, defaults to the pod IP. You probably want to set "Host" in httpHeaders instead.

### fn startupProbe.httpGet.withHttpHeaders

```ts
withHttpHeaders(httpHeaders)
```

Custom headers to set in the request. HTTP allows repeated headers.

### fn startupProbe.httpGet.withHttpHeadersMixin

```ts
withHttpHeadersMixin(httpHeaders)
```

Custom headers to set in the request. HTTP allows repeated headers.

**Note:** This function appends passed data to existing values

### fn startupProbe.httpGet.withPath

```ts
withPath(path)
```

Path to access on the HTTP server.

### fn startupProbe.httpGet.withPort

```ts
withPort(port)
```

IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.

### fn startupProbe.httpGet.withScheme

```ts
withScheme(scheme)
```

Scheme to use for connecting to the host. Defaults to HTTP.

## obj startupProbe.tcpSocket

TCPSocketAction describes an action based on opening a socket

### fn startupProbe.tcpSocket.withHost

```ts
withHost(host)
```

Optional: Host name to connect to, defaults to the pod IP.

### fn startupProbe.tcpSocket.withPort

```ts
withPort(port)
```

IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.