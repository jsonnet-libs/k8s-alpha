{
  withAddresses(addresses): { addresses: if std.isArray(v=addresses) then addresses else [addresses] },
  withAddressesMixin(addresses): { addresses+: if std.isArray(v=addresses) then addresses else [addresses] },
  withNotReadyAddresses(notReadyAddresses): { notReadyAddresses: if std.isArray(v=notReadyAddresses) then notReadyAddresses else [notReadyAddresses] },
  withNotReadyAddressesMixin(notReadyAddresses): { notReadyAddresses+: if std.isArray(v=notReadyAddresses) then notReadyAddresses else [notReadyAddresses] },
  withPorts(ports): { ports: if std.isArray(v=ports) then ports else [ports] },
  withPortsMixin(ports): { ports+: if std.isArray(v=ports) then ports else [ports] },
  mixin: self
}