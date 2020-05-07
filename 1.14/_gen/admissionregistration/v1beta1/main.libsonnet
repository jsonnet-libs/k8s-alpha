{
  mutatingWebhookConfiguration: (import 'mutatingWebhookConfiguration.libsonnet'),
  ruleWithOperations: (import 'ruleWithOperations.libsonnet'),
  serviceReference: (import 'serviceReference.libsonnet'),
  validatingWebhookConfiguration: (import 'validatingWebhookConfiguration.libsonnet'),
  webhook: (import 'webhook.libsonnet'),
  webhookClientConfig: (import 'webhookClientConfig.libsonnet')
}