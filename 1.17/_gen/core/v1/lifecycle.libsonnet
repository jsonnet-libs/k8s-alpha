{
  // Handler defines a specific action that should be taken
  postStart: {
    // ExecAction describes a "run in container" action.
    exec: {
      withCommand(command): { postStart+: { exec+: { command: if std.isArray(v=command) then command else [command] } } },
      withCommandMixin(command): { postStart+: { exec+: { command+: if std.isArray(v=command) then command else [command] } } }
    },
    // HTTPGetAction describes an action based on HTTP Get requests.
    httpGet: {
      withHost(host): { postStart+: { httpGet+: { host: host } } },
      withHttpHeaders(httpHeaders): { postStart+: { httpGet+: { httpHeaders: if std.isArray(v=httpHeaders) then httpHeaders else [httpHeaders] } } },
      withHttpHeadersMixin(httpHeaders): { postStart+: { httpGet+: { httpHeaders+: if std.isArray(v=httpHeaders) then httpHeaders else [httpHeaders] } } },
      withPath(path): { postStart+: { httpGet+: { path: path } } },
      withPort(port): { postStart+: { httpGet+: { port: port } } },
      withScheme(scheme): { postStart+: { httpGet+: { scheme: scheme } } }
    },
    // TCPSocketAction describes an action based on opening a socket
    tcpSocket: {
      withHost(host): { postStart+: { tcpSocket+: { host: host } } },
      withPort(port): { postStart+: { tcpSocket+: { port: port } } }
    }
  },
  // Handler defines a specific action that should be taken
  preStop: {
    // ExecAction describes a "run in container" action.
    exec: {
      withCommand(command): { preStop+: { exec+: { command: if std.isArray(v=command) then command else [command] } } },
      withCommandMixin(command): { preStop+: { exec+: { command+: if std.isArray(v=command) then command else [command] } } }
    },
    // HTTPGetAction describes an action based on HTTP Get requests.
    httpGet: {
      withHost(host): { preStop+: { httpGet+: { host: host } } },
      withHttpHeaders(httpHeaders): { preStop+: { httpGet+: { httpHeaders: if std.isArray(v=httpHeaders) then httpHeaders else [httpHeaders] } } },
      withHttpHeadersMixin(httpHeaders): { preStop+: { httpGet+: { httpHeaders+: if std.isArray(v=httpHeaders) then httpHeaders else [httpHeaders] } } },
      withPath(path): { preStop+: { httpGet+: { path: path } } },
      withPort(port): { preStop+: { httpGet+: { port: port } } },
      withScheme(scheme): { preStop+: { httpGet+: { scheme: scheme } } }
    },
    // TCPSocketAction describes an action based on opening a socket
    tcpSocket: {
      withHost(host): { preStop+: { tcpSocket+: { host: host } } },
      withPort(port): { preStop+: { tcpSocket+: { port: port } } }
    }
  },
  mixin: self
}