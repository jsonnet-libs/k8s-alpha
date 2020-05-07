{
  // new returns an instance of Deploymentrollback
  new(name): {
    apiVersion: 'apps/v1beta1',
    kind: 'DeploymentRollback'
  } + self.metadata.withName(name=name),
  withName(name): { name: name },
  withRollbackTo(rollbackTo): { rollbackTo: rollbackTo },
  withUpdatedAnnotations(updatedAnnotations): { updatedAnnotations: updatedAnnotations },
  withUpdatedAnnotationsMixin(updatedAnnotations): { updatedAnnotations+: updatedAnnotations },
  mixin: self
}