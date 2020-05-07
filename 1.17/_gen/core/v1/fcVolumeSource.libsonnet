{
  withFsType(fsType): { fsType: fsType },
  withLun(lun): { lun: lun },
  withReadOnly(readOnly): { readOnly: readOnly },
  withTargetWWNs(targetWWNs): { targetWWNs: if std.isArray(v=targetWWNs) then targetWWNs else [targetWWNs] },
  withTargetWWNsMixin(targetWWNs): { targetWWNs+: if std.isArray(v=targetWWNs) then targetWWNs else [targetWWNs] },
  withWwids(wwids): { wwids: if std.isArray(v=wwids) then wwids else [wwids] },
  withWwidsMixin(wwids): { wwids+: if std.isArray(v=wwids) then wwids else [wwids] },
  mixin: self
}