{
  local d = (import 'doc-util/main.libsonnet'),
  '#':: d.pkg(name='k', url='github.com/jsonnet-libs/k8s-alpha/1.21/main.libsonnet', help='Generated Kubernetes library'),
  admissionregistration:: (import '_gen/admissionregistration/main.libsonnet'),
  apiserverinternal:: (import '_gen/apiserverinternal/main.libsonnet'),
  apps:: (import '_gen/apps/main.libsonnet'),
  authentication:: (import '_gen/authentication/main.libsonnet'),
  authorization:: (import '_gen/authorization/main.libsonnet'),
  autoscaling:: (import '_gen/autoscaling/main.libsonnet'),
  batch:: (import '_gen/batch/main.libsonnet'),
  certificates:: (import '_gen/certificates/main.libsonnet'),
  coordination:: (import '_gen/coordination/main.libsonnet'),
  core:: (import '_gen/core/main.libsonnet'),
  discovery:: (import '_gen/discovery/main.libsonnet'),
  events:: (import '_gen/events/main.libsonnet'),
  extensions:: (import '_gen/extensions/main.libsonnet'),
  flowcontrol:: (import '_gen/flowcontrol/main.libsonnet'),
  networking:: (import '_gen/networking/main.libsonnet'),
  node:: (import '_gen/node/main.libsonnet'),
  policy:: (import '_gen/policy/main.libsonnet'),
  rbac:: (import '_gen/rbac/main.libsonnet'),
  scheduling:: (import '_gen/scheduling/main.libsonnet'),
  storage:: (import '_gen/storage/main.libsonnet'),
}
