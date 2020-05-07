{
  withActive(active): { active: if std.isArray(v=active) then active else [active] },
  withActiveMixin(active): { active+: if std.isArray(v=active) then active else [active] },
  withLastScheduleTime(lastScheduleTime): { lastScheduleTime: lastScheduleTime },
  mixin: self
}