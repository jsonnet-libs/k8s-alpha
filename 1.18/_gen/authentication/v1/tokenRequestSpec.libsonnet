{
  // BoundObjectReference is a reference to an object that a token is bound to.
  boundObjectRef: {
    withKind(kind): { boundObjectRef+: { kind: kind } },
    withName(name): { boundObjectRef+: { name: name } },
    withUid(uid): { boundObjectRef+: { uid: uid } }
  },
  withAudiences(audiences): { audiences: if std.isArray(v=audiences) then audiences else [audiences] },
  withAudiencesMixin(audiences): { audiences+: if std.isArray(v=audiences) then audiences else [audiences] },
  withExpirationSeconds(expirationSeconds): { expirationSeconds: expirationSeconds },
  mixin: self
}