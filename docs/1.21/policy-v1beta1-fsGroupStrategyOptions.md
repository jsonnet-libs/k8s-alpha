---
permalink: /1.21/policy/v1beta1/fsGroupStrategyOptions/
---

# package fsGroupStrategyOptions

FSGroupStrategyOptions defines the strategy type and options used to create the strategy.

## Index

* [`fn withRanges(ranges)`](#fn-withranges)
* [`fn withRangesMixin(ranges)`](#fn-withrangesmixin)
* [`fn withRule(rule)`](#fn-withrule)

## Fields

### fn withRanges

```ts
withRanges(ranges)
```

ranges are the allowed ranges of fs groups.  If you would like to force a single fs group then supply a single range with the same start and end. Required for MustRunAs.

### fn withRangesMixin

```ts
withRangesMixin(ranges)
```

ranges are the allowed ranges of fs groups.  If you would like to force a single fs group then supply a single range with the same start and end. Required for MustRunAs.

**Note:** This function appends passed data to existing values

### fn withRule

```ts
withRule(rule)
```

rule is the strategy that will dictate what FSGroup is used in the SecurityContext.