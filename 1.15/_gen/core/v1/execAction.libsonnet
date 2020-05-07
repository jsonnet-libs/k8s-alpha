{
  withCommand(command): { command: if std.isArray(v=command) then command else [command] },
  withCommandMixin(command): { command+: if std.isArray(v=command) then command else [command] },
  mixin: self
}