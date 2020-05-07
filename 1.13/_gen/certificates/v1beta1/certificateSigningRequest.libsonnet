{
  // new returns an instance of Certificatesigningrequest
  new(name): {
    apiVersion: 'certificates.k8s.io/v1beta1',
    kind: 'CertificateSigningRequest'
  } + self.metadata.withName(name=name),
  withMetadata(metadata): { metadata: metadata },
  withSpec(spec): { spec: spec },
  mixin: self
}