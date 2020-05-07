{
  // new returns an instance of Deploymentrollback
  new(name): {
    apiVersion: 'extensions/v1beta1',
    kind: 'DeploymentRollback'
  } + self.metadata.withName(name=name),
  // DEPRECATED.
  rollbackTo: {
    withRevision(revision): { rollbackTo+: { revision: revision } }
  },
  withName(name): { name: name },
  withUpdatedAnnotations(updatedAnnotations): { updatedAnnotations: updatedAnnotations },
  withUpdatedAnnotationsMixin(updatedAnnotations): { updatedAnnotations+: updatedAnnotations },
  mixin: self
}