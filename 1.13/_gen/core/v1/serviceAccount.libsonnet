{
  // new returns an instance of Serviceaccount
  new(name): {
    apiVersion: 'v1',
    kind: 'ServiceAccount'
  } + self.metadata.withName(name=name),
  withAutomountServiceAccountToken(automountServiceAccountToken): { automountServiceAccountToken: automountServiceAccountToken },
  withImagePullSecrets(imagePullSecrets): { imagePullSecrets: if std.isArray(v=imagePullSecrets) then imagePullSecrets else [imagePullSecrets] },
  withImagePullSecretsMixin(imagePullSecrets): { imagePullSecrets+: if std.isArray(v=imagePullSecrets) then imagePullSecrets else [imagePullSecrets] },
  withMetadata(metadata): { metadata: metadata },
  withSecrets(secrets): { secrets: if std.isArray(v=secrets) then secrets else [secrets] },
  withSecretsMixin(secrets): { secrets+: if std.isArray(v=secrets) then secrets else [secrets] },
  mixin: self
}