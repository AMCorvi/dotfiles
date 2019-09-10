---
title: Common Data Types
---

## Shared Data Types

BuckleScript's primitives such as `string`, `float`, `array` and a few others have a rather interesting property: they compile to the exact same thing in JavaScript! Thanks to this, there's close to no API to learn for these data types.

This means that if you receive e.g. a string from the JS side, you can use it **without conversion** on the BS side, and vice-versa. In other words, string and others are "_guaranteed public representations_".

P.S. if you need an overview of the language primitives themselves, see [the Reason docs](https://reasonml.github.io/docs/en/overview.html).

**BuckleScript uses the same standard library as OCaml**; see the docs [here](https://reasonml.github.io/api/) (in Reason syntax). **Additionally**, we provide access to all the familiar JS primitives [here](https://bucklescript.github.io/bucklescript/api/Js). You can mix and match these two.

### String

Immutable on both sides, as expected. [BuckleScript String API](https://reasonml.github.io/api/String.html). [JS String API](https://bucklescript.github.io/bucklescript/api/Js.String.html).

#### Unicode Support

OCaml string is an immutable byte sequence. If the user types some unicode:

```ocaml
Js.log "你好"
```

```reason
Js.log("你好")
```

It'll compile to the following JS:

```js
console.log("\xe4\xbd\xa0\xe5\xa5\xbd");
```

Which gives you cryptic console output. To rectify this, BuckleScript exposes a special `js` annotation to the default [quoted string syntax](https://reasonml.github.io/docs/en/string-and-char.html#quoted-string) built into the language. Use it like this:

```ocaml
Js.log {js|你好，
世界|js}
```

```reason
Js.log({js|你好，
世界|js})
```

This'll correctly output:

```js
console.log("你好，\n世界");
```

#### Interpolation

For convenience, we also expose another special tag quoted string annotation, `j`, which supports the equivalent of JS' string interpolation:

```ocaml
let world = {j|世界|j}
let helloWorld = {j|你好，$world|j}
```

```reason
let world = {j|世界|j};
let helloWorld = {j|你好，$world|j};
```

You can surround the variable in parentheses too: `{j|你好，$(world)|j}`.

### Float

BuckleScript floats are JS numbers, vice-versa. The OCaml standard library doesn't come with a Float module. JS Float API is [here](https://bucklescript.github.io/bucklescript/api/Js.Float.html).

### Int

**Ints are 32-bits**! Be careful, you can potentially treat them as JS numbers and vice-versa, but if the number's large, then you better treat JS numbers as floats. For example, we bind to Js.Date using `float`s. Js Int API [here](https://bucklescript.github.io/bucklescript/api/Js.Int.html).

### Array

Idiomatic OCaml arrays are supposed to be fix-sized. This constraint is relaxed on the BuckleScript size. You can change its length using the usual [JS Array API](https://bucklescript.github.io/bucklescript/api/Js.Array.html#VALdefault). BuckleScript's own Array API is [here](https://reasonml.github.io/api/Array.html).

### Tuple

OCaml tuples are compiled to JS arrays. Convenient when you're interop-ing with a JS array that contains heterogeneous values, but happens to have a fixed length. Model it as a tuple on the BS side!

### Bool

Since BuckleScript 3, OCaml/Reason bool now compile to JS boolean.

## Non-shared Data Types

Record, variant (including `option` and `list`), object and others can be exported as well, but you should **not** rely on their internal representation on the JS side. Aka, don't grab a BS list and start manipulating its structure on the JS side.

However, for record and variant, we provide [generation of converters and accessors](generate-converters-accessors.md). Once you convert e.g. a record to a JS object, you can naturally use them on the JS side.

For list, use `Array.of_list` and `Array.to_list` in the [Array](https://reasonml.github.io/api/Array.html) module. `option` will be treated later on.

### Design Decisions

As to why we don't compile list to JS array or vice-versa, it's because OCaml array and JS array share similar characteristics: mutable, similar read/write performance, etc. List, on the other hand, is immutable and has different access perf characteristics.

The same justification applies for records. OCaml records are fixed, nominally typed, and in general doesn't work well with JS objects. We do provide excellent facilities to bind to JS objects in the [object section](object.md).

<!-- TODO: playground link -->

## Cheat Sheet

### Shared

OCaml/BS/Reason Type | JavaScript Type
---------------------|---------------
int | number
nativeint | number
int32 | number
float | number
string | string
array | array
tuple | array. `(3, 4)` -> `[3, 4]`
bool | boolean
Js.Nullable.t | `null`/`undefined`
option | `None` -> `undefined`
option | `Some( Some .. Some (None))` -> internal representation
option | `Some other` -> other
special `bs.deriving abstract` record | object

### Non-shared

Again, the representations are subject to change.

OCaml/BS/Reason Type | JavaScript Value
---------------------|---------------
int64 | array. [high, low]. high is signed, low unsigned
char | `'a'` -> `97`
bytes | number array (we might encode it as buffer in NodeJS)
record | array. `{x: 1; y: 2}` -> `[1, 2]`
list | `[]` -> `0`, `[x, y]` -> `[x, [y, 0]]`, `[1, 2, 3]` -> `[ 1, [ 2, [ 3, 0 ] ] ]`
Variant | \*
Polymorphic variant | \*\*
exception | -
extension | -
object | -

\* Variants with a single non-nullary constructor:

```ocaml
type tree = Leaf | Node of int * tree * tree
(* Leaf -> 0 *)
(* Node a b c -> [a, b, c] *)
```

```reason
type tree = Leaf | Node(int, tree, tree);
/* Leaf -> 0 */
/* Node a b c -> [a, b, c] */
```

Variants with more than one non-nullary constructor:

```ocaml
type u = A of string | B of int
(* A a -> [a].tag = 0 -- tag 0 assignment is optional *)
(* B b -> [b].tag = 1 *)
```

```reason
type u = A(string) | B(int);
/* A(a) -> [a].tag = 0 -- tag 0 assignment is optional */
/* B(b) -> [b].tag = 1 */
```

\*\* Polymorphic Variant:

```ocaml
`a (* 97 *)
`a (1, 2) (* [ 97, [1, 2] ] *)
```

```reason
`a /* 97 */
`a(1, 2) (* [ 97, [1, 2] ] *)
```
