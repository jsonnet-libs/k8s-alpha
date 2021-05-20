---
permalink: /1.20/rbac/v1beta1/aggregationRule/
---

# package aggregationRule

AggregationRule describes how to locate ClusterRoles to aggregate into the ClusterRole

## Index

* [`fn withClusterRoleSelectors(clusterRoleSelectors)`](#fn-withclusterroleselectors)
* [`fn withClusterRoleSelectorsMixin(clusterRoleSelectors)`](#fn-withclusterroleselectorsmixin)

## Fields

### fn withClusterRoleSelectors

```ts
withClusterRoleSelectors(clusterRoleSelectors)
```

ClusterRoleSelectors holds a list of selectors which will be used to find ClusterRoles and create the rules. If any of the selectors match, then the ClusterRole's permissions will be added

### fn withClusterRoleSelectorsMixin

```ts
withClusterRoleSelectorsMixin(clusterRoleSelectors)
```

ClusterRoleSelectors holds a list of selectors which will be used to find ClusterRoles and create the rules. If any of the selectors match, then the ClusterRole's permissions will be added

**Note:** This function appends passed data to existing values