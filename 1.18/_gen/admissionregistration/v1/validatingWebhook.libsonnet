{
  // WebhookClientConfig contains the information to make a TLS connection with the webhook
  clientConfig: {
    // ServiceReference holds a reference to Service.legacy.k8s.io
    service: {
      withName(name): { clientConfig+: { service+: { name: name } } },
      withNamespace(namespace): { clientConfig+: { service+: { namespace: namespace } } },
      withPath(path): { clientConfig+: { service+: { path: path } } },
      withPort(port): { clientConfig+: { service+: { port: port } } }
    },
    withCaBundle(caBundle): { clientConfig+: { caBundle: caBundle } },
    withUrl(url): { clientConfig+: { url: url } }
  },
  // A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
  namespaceSelector: {
    withMatchExpressions(matchExpressions): { namespaceSelector+: { matchExpressions: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } },
    withMatchExpressionsMixin(matchExpressions): { namespaceSelector+: { matchExpressions+: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } },
    withMatchLabels(matchLabels): { namespaceSelector+: { matchLabels: matchLabels } },
    withMatchLabelsMixin(matchLabels): { namespaceSelector+: { matchLabels+: matchLabels } }
  },
  // A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
  objectSelector: {
    withMatchExpressions(matchExpressions): { objectSelector+: { matchExpressions: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } },
    withMatchExpressionsMixin(matchExpressions): { objectSelector+: { matchExpressions+: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } },
    withMatchLabels(matchLabels): { objectSelector+: { matchLabels: matchLabels } },
    withMatchLabelsMixin(matchLabels): { objectSelector+: { matchLabels+: matchLabels } }
  },
  withAdmissionReviewVersions(admissionReviewVersions): { admissionReviewVersions: if std.isArray(v=admissionReviewVersions) then admissionReviewVersions else [admissionReviewVersions] },
  withAdmissionReviewVersionsMixin(admissionReviewVersions): { admissionReviewVersions+: if std.isArray(v=admissionReviewVersions) then admissionReviewVersions else [admissionReviewVersions] },
  withFailurePolicy(failurePolicy): { failurePolicy: failurePolicy },
  withMatchPolicy(matchPolicy): { matchPolicy: matchPolicy },
  withName(name): { name: name },
  withRules(rules): { rules: if std.isArray(v=rules) then rules else [rules] },
  withRulesMixin(rules): { rules+: if std.isArray(v=rules) then rules else [rules] },
  withSideEffects(sideEffects): { sideEffects: sideEffects },
  withTimeoutSeconds(timeoutSeconds): { timeoutSeconds: timeoutSeconds },
  mixin: self
}