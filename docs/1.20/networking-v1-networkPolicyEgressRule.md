---
permalink: /1.20/networking/v1/networkPolicyEgressRule/
---

# package networkPolicyEgressRule

NetworkPolicyEgressRule describes a particular set of traffic that is allowed out of pods matched by a NetworkPolicySpec's podSelector. The traffic must match both ports and to. This type is beta-level in 1.8

## Index

* [`fn withPorts(ports)`](#fn-withports)
* [`fn withPortsMixin(ports)`](#fn-withportsmixin)
* [`fn withTo(to)`](#fn-withto)
* [`fn withToMixin(to)`](#fn-withtomixin)

## Fields

### fn withPorts

```ts
withPorts(ports)
```

List of destination ports for outgoing traffic. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.

### fn withPortsMixin

```ts
withPortsMixin(ports)
```

List of destination ports for outgoing traffic. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.

**Note:** This function appends passed data to existing values

### fn withTo

```ts
withTo(to)
```

List of destinations for outgoing traffic of pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all destinations (traffic not restricted by destination). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the to list.

### fn withToMixin

```ts
withToMixin(to)
```

List of destinations for outgoing traffic of pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all destinations (traffic not restricted by destination). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the to list.

**Note:** This function appends passed data to existing values