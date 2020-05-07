{
  withItems(items): { items: if std.isArray(v=items) then items else [items] },
  withItemsMixin(items): { items+: if std.isArray(v=items) then items else [items] },
  mixin: self
}