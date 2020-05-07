{
  // SELinuxOptions are the labels to be applied to the container
  seLinuxOptions: {
    withLevel(level): { seLinuxOptions+: { level: level } },
    withRole(role): { seLinuxOptions+: { role: role } },
    withType(type): { seLinuxOptions+: { type: type } },
    withUser(user): { seLinuxOptions+: { user: user } }
  },
  withRule(rule): { rule: rule },
  mixin: self
}