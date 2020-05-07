{
  // HTTPIngressRuleValue is a list of http selectors pointing to backends. In the example: http://<host>/<path>?<searchpart> -> backend where where parts of the url correspond to RFC 3986, this resource will be used to match against everything after the last '/' and before the first '?' or '#'.
  http: {
    withPaths(paths): { http+: { paths: if std.isArray(v=paths) then paths else [paths] } },
    withPathsMixin(paths): { http+: { paths+: if std.isArray(v=paths) then paths else [paths] } }
  },
  withHost(host): { host: host },
  mixin: self
}