---
permalink: /1.18/autoscaling/v2beta2/metricStatus/
---

# package metricStatus

MetricStatus describes the last-read state of a single metric.

## Index

* [`fn withType(type)`](#fn-withtype)
* [`obj external`](#obj-external)
  * [`obj external.current`](#obj-externalcurrent)
    * [`fn withAverageUtilization(averageUtilization)`](#fn-externalcurrentwithaverageutilization)
    * [`fn withAverageValue(averageValue)`](#fn-externalcurrentwithaveragevalue)
    * [`fn withValue(value)`](#fn-externalcurrentwithvalue)
  * [`obj external.metric`](#obj-externalmetric)
    * [`fn withName(name)`](#fn-externalmetricwithname)
    * [`obj external.metric.selector`](#obj-externalmetricselector)
      * [`fn withMatchExpressions(matchExpressions)`](#fn-externalmetricselectorwithmatchexpressions)
      * [`fn withMatchExpressionsMixin(matchExpressions)`](#fn-externalmetricselectorwithmatchexpressionsmixin)
      * [`fn withMatchLabels(matchLabels)`](#fn-externalmetricselectorwithmatchlabels)
      * [`fn withMatchLabelsMixin(matchLabels)`](#fn-externalmetricselectorwithmatchlabelsmixin)
* [`obj object`](#obj-object)
  * [`obj object.current`](#obj-objectcurrent)
    * [`fn withAverageUtilization(averageUtilization)`](#fn-objectcurrentwithaverageutilization)
    * [`fn withAverageValue(averageValue)`](#fn-objectcurrentwithaveragevalue)
    * [`fn withValue(value)`](#fn-objectcurrentwithvalue)
  * [`obj object.describedObject`](#obj-objectdescribedobject)
    * [`fn withKind(kind)`](#fn-objectdescribedobjectwithkind)
    * [`fn withName(name)`](#fn-objectdescribedobjectwithname)
  * [`obj object.metric`](#obj-objectmetric)
    * [`fn withName(name)`](#fn-objectmetricwithname)
    * [`obj object.metric.selector`](#obj-objectmetricselector)
      * [`fn withMatchExpressions(matchExpressions)`](#fn-objectmetricselectorwithmatchexpressions)
      * [`fn withMatchExpressionsMixin(matchExpressions)`](#fn-objectmetricselectorwithmatchexpressionsmixin)
      * [`fn withMatchLabels(matchLabels)`](#fn-objectmetricselectorwithmatchlabels)
      * [`fn withMatchLabelsMixin(matchLabels)`](#fn-objectmetricselectorwithmatchlabelsmixin)
* [`obj pods`](#obj-pods)
  * [`obj pods.current`](#obj-podscurrent)
    * [`fn withAverageUtilization(averageUtilization)`](#fn-podscurrentwithaverageutilization)
    * [`fn withAverageValue(averageValue)`](#fn-podscurrentwithaveragevalue)
    * [`fn withValue(value)`](#fn-podscurrentwithvalue)
  * [`obj pods.metric`](#obj-podsmetric)
    * [`fn withName(name)`](#fn-podsmetricwithname)
    * [`obj pods.metric.selector`](#obj-podsmetricselector)
      * [`fn withMatchExpressions(matchExpressions)`](#fn-podsmetricselectorwithmatchexpressions)
      * [`fn withMatchExpressionsMixin(matchExpressions)`](#fn-podsmetricselectorwithmatchexpressionsmixin)
      * [`fn withMatchLabels(matchLabels)`](#fn-podsmetricselectorwithmatchlabels)
      * [`fn withMatchLabelsMixin(matchLabels)`](#fn-podsmetricselectorwithmatchlabelsmixin)
* [`obj resource`](#obj-resource)
  * [`fn withName(name)`](#fn-resourcewithname)
  * [`obj resource.current`](#obj-resourcecurrent)
    * [`fn withAverageUtilization(averageUtilization)`](#fn-resourcecurrentwithaverageutilization)
    * [`fn withAverageValue(averageValue)`](#fn-resourcecurrentwithaveragevalue)
    * [`fn withValue(value)`](#fn-resourcecurrentwithvalue)

## Fields

### fn withType

```ts
withType(type)
```

type is the type of metric source.  It will be one of "Object", "Pods" or "Resource", each corresponds to a matching field in the object.

## obj external

ExternalMetricStatus indicates the current value of a global metric not associated with any Kubernetes object.

## obj external.current



### fn external.current.withAverageUtilization

```ts
withAverageUtilization(averageUtilization)
```

currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.

### fn external.current.withAverageValue

```ts
withAverageValue(averageValue)
```

Quantity is a fixed-point representation of a number. It provides convenient marshaling/unmarshaling in JSON and YAML, in addition to String() and AsInt64() accessors.

The serialization format is:

<quantity>        ::= <signedNumber><suffix>
  (Note that <suffix> may be empty, from the '' case in <decimalSI>.)
<digit>           ::= 0 | 1 | ... | 9 <digits>          ::= <digit> | <digit><digits> <number>          ::= <digits> | <digits>.<digits> | <digits>. | .<digits> <sign>            ::= '+' | '-' <signedNumber>    ::= <number> | <sign><number> <suffix>          ::= <binarySI> | <decimalExponent> | <decimalSI> <binarySI>        ::= Ki | Mi | Gi | Ti | Pi | Ei
  (International System of units; See: http://physics.nist.gov/cuu/Units/binary.html)
<decimalSI>       ::= m | '' | k | M | G | T | P | E
  (Note that 1024 = 1Ki but 1000 = 1k; I didn't choose the capitalization.)
<decimalExponent> ::= 'e' <signedNumber> | 'E' <signedNumber>

No matter which of the three exponent forms is used, no quantity may represent a number greater than 2^63-1 in magnitude, nor may it have more than 3 decimal places. Numbers larger or more precise will be capped or rounded up. (E.g.: 0.1m will rounded up to 1m.) This may be extended in the future if we require larger or smaller quantities.

When a Quantity is parsed from a string, it will remember the type of suffix it had, and will use the same type again when it is serialized.

Before serializing, Quantity will be put in 'canonical form'. This means that Exponent/suffix will be adjusted up or down (with a corresponding increase or decrease in Mantissa) such that:
  a. No precision is lost
  b. No fractional digits will be emitted
  c. The exponent (or suffix) is as large as possible.
The sign will be omitted unless the number is negative.

Examples:
  1.5 will be serialized as '1500m'
  1.5Gi will be serialized as '1536Mi'

Note that the quantity will NEVER be internally represented by a floating point number. That is the whole point of this exercise.

Non-canonical values will still parse as long as they are well formed, but will be re-emitted in their canonical form. (So always use canonical form, or don't diff.)

This format is intended to make it difficult to use these numbers without writing some sort of special handling code in the hopes that that will cause implementors to also use a fixed point implementation.

### fn external.current.withValue

```ts
withValue(value)
```

Quantity is a fixed-point representation of a number. It provides convenient marshaling/unmarshaling in JSON and YAML, in addition to String() and AsInt64() accessors.

The serialization format is:

<quantity>        ::= <signedNumber><suffix>
  (Note that <suffix> may be empty, from the '' case in <decimalSI>.)
<digit>           ::= 0 | 1 | ... | 9 <digits>          ::= <digit> | <digit><digits> <number>          ::= <digits> | <digits>.<digits> | <digits>. | .<digits> <sign>            ::= '+' | '-' <signedNumber>    ::= <number> | <sign><number> <suffix>          ::= <binarySI> | <decimalExponent> | <decimalSI> <binarySI>        ::= Ki | Mi | Gi | Ti | Pi | Ei
  (International System of units; See: http://physics.nist.gov/cuu/Units/binary.html)
<decimalSI>       ::= m | '' | k | M | G | T | P | E
  (Note that 1024 = 1Ki but 1000 = 1k; I didn't choose the capitalization.)
<decimalExponent> ::= 'e' <signedNumber> | 'E' <signedNumber>

No matter which of the three exponent forms is used, no quantity may represent a number greater than 2^63-1 in magnitude, nor may it have more than 3 decimal places. Numbers larger or more precise will be capped or rounded up. (E.g.: 0.1m will rounded up to 1m.) This may be extended in the future if we require larger or smaller quantities.

When a Quantity is parsed from a string, it will remember the type of suffix it had, and will use the same type again when it is serialized.

Before serializing, Quantity will be put in 'canonical form'. This means that Exponent/suffix will be adjusted up or down (with a corresponding increase or decrease in Mantissa) such that:
  a. No precision is lost
  b. No fractional digits will be emitted
  c. The exponent (or suffix) is as large as possible.
The sign will be omitted unless the number is negative.

Examples:
  1.5 will be serialized as '1500m'
  1.5Gi will be serialized as '1536Mi'

Note that the quantity will NEVER be internally represented by a floating point number. That is the whole point of this exercise.

Non-canonical values will still parse as long as they are well formed, but will be re-emitted in their canonical form. (So always use canonical form, or don't diff.)

This format is intended to make it difficult to use these numbers without writing some sort of special handling code in the hopes that that will cause implementors to also use a fixed point implementation.

## obj external.metric



### fn external.metric.withName

```ts
withName(name)
```

name is the name of the given metric

## obj external.metric.selector

A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.

### fn external.metric.selector.withMatchExpressions

```ts
withMatchExpressions(matchExpressions)
```

matchExpressions is a list of label selector requirements. The requirements are ANDed.

### fn external.metric.selector.withMatchExpressionsMixin

```ts
withMatchExpressionsMixin(matchExpressions)
```

matchExpressions is a list of label selector requirements. The requirements are ANDed.

**Note:** This function appends passed data to existing values

### fn external.metric.selector.withMatchLabels

```ts
withMatchLabels(matchLabels)
```

matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is "key", the operator is "In", and the values array contains only "value". The requirements are ANDed.

### fn external.metric.selector.withMatchLabelsMixin

```ts
withMatchLabelsMixin(matchLabels)
```

matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is "key", the operator is "In", and the values array contains only "value". The requirements are ANDed.

**Note:** This function appends passed data to existing values

## obj object

ObjectMetricStatus indicates the current value of a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).

## obj object.current

MetricValueStatus holds the current value for a metric

### fn object.current.withAverageUtilization

```ts
withAverageUtilization(averageUtilization)
```

currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.

### fn object.current.withAverageValue

```ts
withAverageValue(averageValue)
```

Quantity is a fixed-point representation of a number. It provides convenient marshaling/unmarshaling in JSON and YAML, in addition to String() and AsInt64() accessors.

The serialization format is:

<quantity>        ::= <signedNumber><suffix>
  (Note that <suffix> may be empty, from the '' case in <decimalSI>.)
<digit>           ::= 0 | 1 | ... | 9 <digits>          ::= <digit> | <digit><digits> <number>          ::= <digits> | <digits>.<digits> | <digits>. | .<digits> <sign>            ::= '+' | '-' <signedNumber>    ::= <number> | <sign><number> <suffix>          ::= <binarySI> | <decimalExponent> | <decimalSI> <binarySI>        ::= Ki | Mi | Gi | Ti | Pi | Ei
  (International System of units; See: http://physics.nist.gov/cuu/Units/binary.html)
<decimalSI>       ::= m | '' | k | M | G | T | P | E
  (Note that 1024 = 1Ki but 1000 = 1k; I didn't choose the capitalization.)
<decimalExponent> ::= 'e' <signedNumber> | 'E' <signedNumber>

No matter which of the three exponent forms is used, no quantity may represent a number greater than 2^63-1 in magnitude, nor may it have more than 3 decimal places. Numbers larger or more precise will be capped or rounded up. (E.g.: 0.1m will rounded up to 1m.) This may be extended in the future if we require larger or smaller quantities.

When a Quantity is parsed from a string, it will remember the type of suffix it had, and will use the same type again when it is serialized.

Before serializing, Quantity will be put in 'canonical form'. This means that Exponent/suffix will be adjusted up or down (with a corresponding increase or decrease in Mantissa) such that:
  a. No precision is lost
  b. No fractional digits will be emitted
  c. The exponent (or suffix) is as large as possible.
The sign will be omitted unless the number is negative.

Examples:
  1.5 will be serialized as '1500m'
  1.5Gi will be serialized as '1536Mi'

Note that the quantity will NEVER be internally represented by a floating point number. That is the whole point of this exercise.

Non-canonical values will still parse as long as they are well formed, but will be re-emitted in their canonical form. (So always use canonical form, or don't diff.)

This format is intended to make it difficult to use these numbers without writing some sort of special handling code in the hopes that that will cause implementors to also use a fixed point implementation.

### fn object.current.withValue

```ts
withValue(value)
```

Quantity is a fixed-point representation of a number. It provides convenient marshaling/unmarshaling in JSON and YAML, in addition to String() and AsInt64() accessors.

The serialization format is:

<quantity>        ::= <signedNumber><suffix>
  (Note that <suffix> may be empty, from the '' case in <decimalSI>.)
<digit>           ::= 0 | 1 | ... | 9 <digits>          ::= <digit> | <digit><digits> <number>          ::= <digits> | <digits>.<digits> | <digits>. | .<digits> <sign>            ::= '+' | '-' <signedNumber>    ::= <number> | <sign><number> <suffix>          ::= <binarySI> | <decimalExponent> | <decimalSI> <binarySI>        ::= Ki | Mi | Gi | Ti | Pi | Ei
  (International System of units; See: http://physics.nist.gov/cuu/Units/binary.html)
<decimalSI>       ::= m | '' | k | M | G | T | P | E
  (Note that 1024 = 1Ki but 1000 = 1k; I didn't choose the capitalization.)
<decimalExponent> ::= 'e' <signedNumber> | 'E' <signedNumber>

No matter which of the three exponent forms is used, no quantity may represent a number greater than 2^63-1 in magnitude, nor may it have more than 3 decimal places. Numbers larger or more precise will be capped or rounded up. (E.g.: 0.1m will rounded up to 1m.) This may be extended in the future if we require larger or smaller quantities.

When a Quantity is parsed from a string, it will remember the type of suffix it had, and will use the same type again when it is serialized.

Before serializing, Quantity will be put in 'canonical form'. This means that Exponent/suffix will be adjusted up or down (with a corresponding increase or decrease in Mantissa) such that:
  a. No precision is lost
  b. No fractional digits will be emitted
  c. The exponent (or suffix) is as large as possible.
The sign will be omitted unless the number is negative.

Examples:
  1.5 will be serialized as '1500m'
  1.5Gi will be serialized as '1536Mi'

Note that the quantity will NEVER be internally represented by a floating point number. That is the whole point of this exercise.

Non-canonical values will still parse as long as they are well formed, but will be re-emitted in their canonical form. (So always use canonical form, or don't diff.)

This format is intended to make it difficult to use these numbers without writing some sort of special handling code in the hopes that that will cause implementors to also use a fixed point implementation.

## obj object.describedObject



### fn object.describedObject.withKind

```ts
withKind(kind)
```

Kind of the referent; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds"

### fn object.describedObject.withName

```ts
withName(name)
```

Name of the referent; More info: http://kubernetes.io/docs/user-guide/identifiers#names

## obj object.metric



### fn object.metric.withName

```ts
withName(name)
```

name is the name of the given metric

## obj object.metric.selector



### fn object.metric.selector.withMatchExpressions

```ts
withMatchExpressions(matchExpressions)
```

matchExpressions is a list of label selector requirements. The requirements are ANDed.

### fn object.metric.selector.withMatchExpressionsMixin

```ts
withMatchExpressionsMixin(matchExpressions)
```

matchExpressions is a list of label selector requirements. The requirements are ANDed.

**Note:** This function appends passed data to existing values

### fn object.metric.selector.withMatchLabels

```ts
withMatchLabels(matchLabels)
```

matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is "key", the operator is "In", and the values array contains only "value". The requirements are ANDed.

### fn object.metric.selector.withMatchLabelsMixin

```ts
withMatchLabelsMixin(matchLabels)
```

matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is "key", the operator is "In", and the values array contains only "value". The requirements are ANDed.

**Note:** This function appends passed data to existing values

## obj pods

PodsMetricStatus indicates the current value of a metric describing each pod in the current scale target (for example, transactions-processed-per-second).

## obj pods.current



### fn pods.current.withAverageUtilization

```ts
withAverageUtilization(averageUtilization)
```

currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.

### fn pods.current.withAverageValue

```ts
withAverageValue(averageValue)
```

Quantity is a fixed-point representation of a number. It provides convenient marshaling/unmarshaling in JSON and YAML, in addition to String() and AsInt64() accessors.

The serialization format is:

<quantity>        ::= <signedNumber><suffix>
  (Note that <suffix> may be empty, from the '' case in <decimalSI>.)
<digit>           ::= 0 | 1 | ... | 9 <digits>          ::= <digit> | <digit><digits> <number>          ::= <digits> | <digits>.<digits> | <digits>. | .<digits> <sign>            ::= '+' | '-' <signedNumber>    ::= <number> | <sign><number> <suffix>          ::= <binarySI> | <decimalExponent> | <decimalSI> <binarySI>        ::= Ki | Mi | Gi | Ti | Pi | Ei
  (International System of units; See: http://physics.nist.gov/cuu/Units/binary.html)
<decimalSI>       ::= m | '' | k | M | G | T | P | E
  (Note that 1024 = 1Ki but 1000 = 1k; I didn't choose the capitalization.)
<decimalExponent> ::= 'e' <signedNumber> | 'E' <signedNumber>

No matter which of the three exponent forms is used, no quantity may represent a number greater than 2^63-1 in magnitude, nor may it have more than 3 decimal places. Numbers larger or more precise will be capped or rounded up. (E.g.: 0.1m will rounded up to 1m.) This may be extended in the future if we require larger or smaller quantities.

When a Quantity is parsed from a string, it will remember the type of suffix it had, and will use the same type again when it is serialized.

Before serializing, Quantity will be put in 'canonical form'. This means that Exponent/suffix will be adjusted up or down (with a corresponding increase or decrease in Mantissa) such that:
  a. No precision is lost
  b. No fractional digits will be emitted
  c. The exponent (or suffix) is as large as possible.
The sign will be omitted unless the number is negative.

Examples:
  1.5 will be serialized as '1500m'
  1.5Gi will be serialized as '1536Mi'

Note that the quantity will NEVER be internally represented by a floating point number. That is the whole point of this exercise.

Non-canonical values will still parse as long as they are well formed, but will be re-emitted in their canonical form. (So always use canonical form, or don't diff.)

This format is intended to make it difficult to use these numbers without writing some sort of special handling code in the hopes that that will cause implementors to also use a fixed point implementation.

### fn pods.current.withValue

```ts
withValue(value)
```

Quantity is a fixed-point representation of a number. It provides convenient marshaling/unmarshaling in JSON and YAML, in addition to String() and AsInt64() accessors.

The serialization format is:

<quantity>        ::= <signedNumber><suffix>
  (Note that <suffix> may be empty, from the '' case in <decimalSI>.)
<digit>           ::= 0 | 1 | ... | 9 <digits>          ::= <digit> | <digit><digits> <number>          ::= <digits> | <digits>.<digits> | <digits>. | .<digits> <sign>            ::= '+' | '-' <signedNumber>    ::= <number> | <sign><number> <suffix>          ::= <binarySI> | <decimalExponent> | <decimalSI> <binarySI>        ::= Ki | Mi | Gi | Ti | Pi | Ei
  (International System of units; See: http://physics.nist.gov/cuu/Units/binary.html)
<decimalSI>       ::= m | '' | k | M | G | T | P | E
  (Note that 1024 = 1Ki but 1000 = 1k; I didn't choose the capitalization.)
<decimalExponent> ::= 'e' <signedNumber> | 'E' <signedNumber>

No matter which of the three exponent forms is used, no quantity may represent a number greater than 2^63-1 in magnitude, nor may it have more than 3 decimal places. Numbers larger or more precise will be capped or rounded up. (E.g.: 0.1m will rounded up to 1m.) This may be extended in the future if we require larger or smaller quantities.

When a Quantity is parsed from a string, it will remember the type of suffix it had, and will use the same type again when it is serialized.

Before serializing, Quantity will be put in 'canonical form'. This means that Exponent/suffix will be adjusted up or down (with a corresponding increase or decrease in Mantissa) such that:
  a. No precision is lost
  b. No fractional digits will be emitted
  c. The exponent (or suffix) is as large as possible.
The sign will be omitted unless the number is negative.

Examples:
  1.5 will be serialized as '1500m'
  1.5Gi will be serialized as '1536Mi'

Note that the quantity will NEVER be internally represented by a floating point number. That is the whole point of this exercise.

Non-canonical values will still parse as long as they are well formed, but will be re-emitted in their canonical form. (So always use canonical form, or don't diff.)

This format is intended to make it difficult to use these numbers without writing some sort of special handling code in the hopes that that will cause implementors to also use a fixed point implementation.

## obj pods.metric



### fn pods.metric.withName

```ts
withName(name)
```

name is the name of the given metric

## obj pods.metric.selector



### fn pods.metric.selector.withMatchExpressions

```ts
withMatchExpressions(matchExpressions)
```

matchExpressions is a list of label selector requirements. The requirements are ANDed.

### fn pods.metric.selector.withMatchExpressionsMixin

```ts
withMatchExpressionsMixin(matchExpressions)
```

matchExpressions is a list of label selector requirements. The requirements are ANDed.

**Note:** This function appends passed data to existing values

### fn pods.metric.selector.withMatchLabels

```ts
withMatchLabels(matchLabels)
```

matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is "key", the operator is "In", and the values array contains only "value". The requirements are ANDed.

### fn pods.metric.selector.withMatchLabelsMixin

```ts
withMatchLabelsMixin(matchLabels)
```

matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is "key", the operator is "In", and the values array contains only "value". The requirements are ANDed.

**Note:** This function appends passed data to existing values

## obj resource

ResourceMetricStatus indicates the current value of a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.

### fn resource.withName

```ts
withName(name)
```

Name is the name of the resource in question.

## obj resource.current



### fn resource.current.withAverageUtilization

```ts
withAverageUtilization(averageUtilization)
```

currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.

### fn resource.current.withAverageValue

```ts
withAverageValue(averageValue)
```

Quantity is a fixed-point representation of a number. It provides convenient marshaling/unmarshaling in JSON and YAML, in addition to String() and AsInt64() accessors.

The serialization format is:

<quantity>        ::= <signedNumber><suffix>
  (Note that <suffix> may be empty, from the '' case in <decimalSI>.)
<digit>           ::= 0 | 1 | ... | 9 <digits>          ::= <digit> | <digit><digits> <number>          ::= <digits> | <digits>.<digits> | <digits>. | .<digits> <sign>            ::= '+' | '-' <signedNumber>    ::= <number> | <sign><number> <suffix>          ::= <binarySI> | <decimalExponent> | <decimalSI> <binarySI>        ::= Ki | Mi | Gi | Ti | Pi | Ei
  (International System of units; See: http://physics.nist.gov/cuu/Units/binary.html)
<decimalSI>       ::= m | '' | k | M | G | T | P | E
  (Note that 1024 = 1Ki but 1000 = 1k; I didn't choose the capitalization.)
<decimalExponent> ::= 'e' <signedNumber> | 'E' <signedNumber>

No matter which of the three exponent forms is used, no quantity may represent a number greater than 2^63-1 in magnitude, nor may it have more than 3 decimal places. Numbers larger or more precise will be capped or rounded up. (E.g.: 0.1m will rounded up to 1m.) This may be extended in the future if we require larger or smaller quantities.

When a Quantity is parsed from a string, it will remember the type of suffix it had, and will use the same type again when it is serialized.

Before serializing, Quantity will be put in 'canonical form'. This means that Exponent/suffix will be adjusted up or down (with a corresponding increase or decrease in Mantissa) such that:
  a. No precision is lost
  b. No fractional digits will be emitted
  c. The exponent (or suffix) is as large as possible.
The sign will be omitted unless the number is negative.

Examples:
  1.5 will be serialized as '1500m'
  1.5Gi will be serialized as '1536Mi'

Note that the quantity will NEVER be internally represented by a floating point number. That is the whole point of this exercise.

Non-canonical values will still parse as long as they are well formed, but will be re-emitted in their canonical form. (So always use canonical form, or don't diff.)

This format is intended to make it difficult to use these numbers without writing some sort of special handling code in the hopes that that will cause implementors to also use a fixed point implementation.

### fn resource.current.withValue

```ts
withValue(value)
```

Quantity is a fixed-point representation of a number. It provides convenient marshaling/unmarshaling in JSON and YAML, in addition to String() and AsInt64() accessors.

The serialization format is:

<quantity>        ::= <signedNumber><suffix>
  (Note that <suffix> may be empty, from the '' case in <decimalSI>.)
<digit>           ::= 0 | 1 | ... | 9 <digits>          ::= <digit> | <digit><digits> <number>          ::= <digits> | <digits>.<digits> | <digits>. | .<digits> <sign>            ::= '+' | '-' <signedNumber>    ::= <number> | <sign><number> <suffix>          ::= <binarySI> | <decimalExponent> | <decimalSI> <binarySI>        ::= Ki | Mi | Gi | Ti | Pi | Ei
  (International System of units; See: http://physics.nist.gov/cuu/Units/binary.html)
<decimalSI>       ::= m | '' | k | M | G | T | P | E
  (Note that 1024 = 1Ki but 1000 = 1k; I didn't choose the capitalization.)
<decimalExponent> ::= 'e' <signedNumber> | 'E' <signedNumber>

No matter which of the three exponent forms is used, no quantity may represent a number greater than 2^63-1 in magnitude, nor may it have more than 3 decimal places. Numbers larger or more precise will be capped or rounded up. (E.g.: 0.1m will rounded up to 1m.) This may be extended in the future if we require larger or smaller quantities.

When a Quantity is parsed from a string, it will remember the type of suffix it had, and will use the same type again when it is serialized.

Before serializing, Quantity will be put in 'canonical form'. This means that Exponent/suffix will be adjusted up or down (with a corresponding increase or decrease in Mantissa) such that:
  a. No precision is lost
  b. No fractional digits will be emitted
  c. The exponent (or suffix) is as large as possible.
The sign will be omitted unless the number is negative.

Examples:
  1.5 will be serialized as '1500m'
  1.5Gi will be serialized as '1536Mi'

Note that the quantity will NEVER be internally represented by a floating point number. That is the whole point of this exercise.

Non-canonical values will still parse as long as they are well formed, but will be re-emitted in their canonical form. (So always use canonical form, or don't diff.)

This format is intended to make it difficult to use these numbers without writing some sort of special handling code in the hopes that that will cause implementors to also use a fixed point implementation.