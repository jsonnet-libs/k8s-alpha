---
permalink: /1.18/core/v1/weightedPodAffinityTerm/
---

# package weightedPodAffinityTerm

The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to find the most preferred node(s)

## Index

* [`fn withWeight(weight)`](#fn-withweight)
* [`obj podAffinityTerm`](#obj-podaffinityterm)
  * [`fn withNamespaces(namespaces)`](#fn-podaffinitytermwithnamespaces)
  * [`fn withNamespacesMixin(namespaces)`](#fn-podaffinitytermwithnamespacesmixin)
  * [`fn withTopologyKey(topologyKey)`](#fn-podaffinitytermwithtopologykey)
  * [`obj podAffinityTerm.labelSelector`](#obj-podaffinitytermlabelselector)
    * [`fn withMatchExpressions(matchExpressions)`](#fn-podaffinitytermlabelselectorwithmatchexpressions)
    * [`fn withMatchExpressionsMixin(matchExpressions)`](#fn-podaffinitytermlabelselectorwithmatchexpressionsmixin)
    * [`fn withMatchLabels(matchLabels)`](#fn-podaffinitytermlabelselectorwithmatchlabels)
    * [`fn withMatchLabelsMixin(matchLabels)`](#fn-podaffinitytermlabelselectorwithmatchlabelsmixin)

## Fields

### fn withWeight

```ts
withWeight(weight)
```

weight associated with matching the corresponding podAffinityTerm, in the range 1-100.

## obj podAffinityTerm

Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key <topologyKey> matches that of any node on which a pod of the set of pods is running

### fn podAffinityTerm.withNamespaces

```ts
withNamespaces(namespaces)
```

namespaces specifies which namespaces the labelSelector applies to (matches against); null or empty list means 'this pod's namespace'

### fn podAffinityTerm.withNamespacesMixin

```ts
withNamespacesMixin(namespaces)
```

namespaces specifies which namespaces the labelSelector applies to (matches against); null or empty list means 'this pod's namespace'

**Note:** This function appends passed data to existing values

### fn podAffinityTerm.withTopologyKey

```ts
withTopologyKey(topologyKey)
```

This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.

## obj podAffinityTerm.labelSelector

A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.

### fn podAffinityTerm.labelSelector.withMatchExpressions

```ts
withMatchExpressions(matchExpressions)
```

matchExpressions is a list of label selector requirements. The requirements are ANDed.

### fn podAffinityTerm.labelSelector.withMatchExpressionsMixin

```ts
withMatchExpressionsMixin(matchExpressions)
```

matchExpressions is a list of label selector requirements. The requirements are ANDed.

**Note:** This function appends passed data to existing values

### fn podAffinityTerm.labelSelector.withMatchLabels

```ts
withMatchLabels(matchLabels)
```

matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is "key", the operator is "In", and the values array contains only "value". The requirements are ANDed.

### fn podAffinityTerm.labelSelector.withMatchLabelsMixin

```ts
withMatchLabelsMixin(matchLabels)
```

matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is "key", the operator is "In", and the values array contains only "value". The requirements are ANDed.

**Note:** This function appends passed data to existing values