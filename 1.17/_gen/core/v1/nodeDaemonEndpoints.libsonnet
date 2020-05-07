{
  // DaemonEndpoint contains information about a single Daemon endpoint.
  kubeletEndpoint: {
    withPort(port): { kubeletEndpoint+: { port: port } }
  },
  mixin: self
}