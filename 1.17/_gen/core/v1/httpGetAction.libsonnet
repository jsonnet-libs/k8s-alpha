{
  withHost(host): { host: host },
  withHttpHeaders(httpHeaders): { httpHeaders: if std.isArray(v=httpHeaders) then httpHeaders else [httpHeaders] },
  withHttpHeadersMixin(httpHeaders): { httpHeaders+: if std.isArray(v=httpHeaders) then httpHeaders else [httpHeaders] },
  withPath(path): { path: path },
  withPort(port): { port: port },
  withScheme(scheme): { scheme: scheme },
  mixin: self
}