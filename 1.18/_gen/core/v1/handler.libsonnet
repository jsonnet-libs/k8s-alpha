{
  // ExecAction describes a "run in container" action.
  exec: {
    withCommand(command): { exec+: { command: if std.isArray(v=command) then command else [command] } },
    withCommandMixin(command): { exec+: { command+: if std.isArray(v=command) then command else [command] } }
  },
  // HTTPGetAction describes an action based on HTTP Get requests.
  httpGet: {
    withHost(host): { httpGet+: { host: host } },
    withHttpHeaders(httpHeaders): { httpGet+: { httpHeaders: if std.isArray(v=httpHeaders) then httpHeaders else [httpHeaders] } },
    withHttpHeadersMixin(httpHeaders): { httpGet+: { httpHeaders+: if std.isArray(v=httpHeaders) then httpHeaders else [httpHeaders] } },
    withPath(path): { httpGet+: { path: path } },
    withPort(port): { httpGet+: { port: port } },
    withScheme(scheme): { httpGet+: { scheme: scheme } }
  },
  // TCPSocketAction describes an action based on opening a socket
  tcpSocket: {
    withHost(host): { tcpSocket+: { host: host } },
    withPort(port): { tcpSocket+: { port: port } }
  },
  mixin: self
}