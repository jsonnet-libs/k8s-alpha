---
permalink: /1.20/core/v1/downwardAPIVolumeFile/
---

# package downwardAPIVolumeFile

DownwardAPIVolumeFile represents information to create the file containing the pod field

## Index

* [`fn withMode(mode)`](#fn-withmode)
* [`fn withPath(path)`](#fn-withpath)
* [`obj fieldRef`](#obj-fieldref)
  * [`fn withFieldPath(fieldPath)`](#fn-fieldrefwithfieldpath)
* [`obj resourceFieldRef`](#obj-resourcefieldref)
  * [`fn withContainerName(containerName)`](#fn-resourcefieldrefwithcontainername)
  * [`fn withDivisor(divisor)`](#fn-resourcefieldrefwithdivisor)
  * [`fn withResource(resource)`](#fn-resourcefieldrefwithresource)

## Fields

### fn withMode

```ts
withMode(mode)
```

Optional: mode bits used to set permissions on this file, must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.

### fn withPath

```ts
withPath(path)
```

Required: Path is  the relative path name of the file to be created. Must not be absolute or contain the '..' path. Must be utf-8 encoded. The first item of the relative path must not start with '..'

## obj fieldRef

ObjectFieldSelector selects an APIVersioned field of an object.

### fn fieldRef.withFieldPath

```ts
withFieldPath(fieldPath)
```

Path of the field to select in the specified API version.

## obj resourceFieldRef

ResourceFieldSelector represents container resources (cpu, memory) and their output format

### fn resourceFieldRef.withContainerName

```ts
withContainerName(containerName)
```

Container name: required for volumes, optional for env vars

### fn resourceFieldRef.withDivisor

```ts
withDivisor(divisor)
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

### fn resourceFieldRef.withResource

```ts
withResource(resource)
```

Required: resource to select