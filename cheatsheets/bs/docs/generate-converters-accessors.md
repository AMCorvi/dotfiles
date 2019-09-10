---
title: Generate Converters & Helpers
---

Sometimes, you might want to generate e.g. function accessors from a variant declaration, or a `Js.t` object + converter functions from a record definition. BuckleScript comes with a few annotations that allow you to generate those.

## Functions & Plain Values for Variant

Use `accessors`.

```ocaml
type action =
  | Click
  | Submit of string
  | Cancel
  [@@bs.deriving accessors]
```

```reason
[@bs.deriving accessors]
type action =
  | Click
  | Submit(string)
  | Cancel;
```

Variants constructors with payloads generate functions, payload-less constructors generate plain integers. **Note**:

- The generated accessors are lower-cased.
- You can now use these helpers on the JavaScript side! But don't rely on their actual values please.
- Doesn't work with polymorphic variants yet.

Output:

```js
function submit(param_0) {
  return /* Submit */[param_0];
}

var click = /* Click */0;

var cancel = /* Cancel */1;

exports.click  = click;
exports.submit = submit;
exports.cancel = cancel;
```

### Usage

```ocaml
let s = submit "hello" (* gives Submit "hello" *)
```

```reason
let s = submit("hello"); /* gives Submit("hello") */
```

This is useful:

- When you're passing the accessor function as a higher-order function (which plain variant constructors aren't).
- When you'd like the JS side to use these values & functions opaquely and pass you back a variant constructor (since JS has no such thing).

## Convert Between `Js.t` Object and Record

Use `jsConverter`.

```ocaml
type coordinates = {
  x : int;
  y : int
} [@@bs.deriving jsConverter]
```

```reason
[@bs.deriving jsConverter]
type coordinates = {
  x: int,
  y: int
};
```

Generates 2 functions of the following types:

```ocaml
val coordinatesToJs : coordinates -> <x : int ; y : int > Js.t

val coordinatesFromJs : < x: int ; y : int ; .. > Js.t -> coordinates
```

```reason
let coordinatesToJs: coordinates => {. "x": int, "y": int};

let coordinatesFromJs: {.. "x": int, "y": int} => coordinates;
```

**Note**:

- `coordinatesFromJs` uses an open object type that accepts more fields, just to be more permissive.
- The converters are shallow. They don't recursively drill into the fields and convert them. This preserves the speed and simplicity of output while satisfying 80% of use-cases. If you'd like recursive conversion, upvote and subscribe to this issue: https://github.com/BuckleScript/bucklescript/issues/2294 (note: please don't leave 'I want this too!' comments, it spams all subscribers of the issue ;-)

### Usage

This exports a `jsCoordinates` JS object (not a record!) for JS files to use:

```ocaml
let jsCoordinates = coordinatesToJs {x = 1; y = 2}
```

```reason
let jsCoordinates = coordinatesToJs({x: 1, y: 2});
```

This binds to a `jsCoordinates` record (not a JS object!) that exists on the JS side, presumably created by JS calling the function `coordinatesFromJs`:

```ocaml
external jsCoordinates: coordinates = "jsCoordinates" [@@bs.module "myGame"]
```

```reason
[@bs.module "myGame"] external jsCoordinates : coordinates = "jsCoordinates";
```

### More Safety

The above generated functions use `Js.t` object types. You can also hide this implementation detail by making the object type **abstract** by passing the `newType` option to the `jsConverter` plugin:

```ocaml
type coordinates = {
  x : int;
  y : int
} [@@bs.deriving {jsConverter = newType}]
```

```reason
[@bs.deriving {jsConverter: newType}]
type coordinates = {
  x: int,
  y: int
};
```

Generates 2 functions of the following types:

```ocaml
val coordinatesToJs : coordinates -> abs_coordinates

val coordinatesFromJs : abs_coordinates -> coordinates
```

```reason
let coordinatesToJs: coordinates => abs_coordinates;

let coordinatesFromJs: abs_coordinates => coordinates;
```

#### Usage

Using `newType`, you've now prevented consumers from inadvertently doing the following:

```ocaml
let myCoordinates = {
  x = 10;
  y = 20
}
let jsCoords = coordinatesToJs myCoordinates

let x = jsCoords##x (* disallowed! Don't access the object's internal details *)
```

```reason
let myCoordinates = {
  x: 10,
  y: 20
};
let jsCoords = coordinatesToJs(myCoordinates);

let x = jsCoords##x; /* disallowed! Don't access the object's internal details */
```

Same generated output. Isn't it great that types prevent invalid accesses you'd otherwise have to encode at runtime?

## Convert between JS Integer Enum and BS Variant

Use `jsConverter`.

```ocaml
type fruit =
  | Apple
  | Orange
  | Kiwi
  | Watermelon
  [@@bs.deriving jsConverter]
```

```reason
[@bs.deriving jsConverter]
type fruit =
  | Apple
  | Orange
  | Kiwi
  | Watermelon;
```

This option causes `jsConverter` to, again, generate functions of the following types:

```ocaml
val fruitToJs : fruit -> int

val fruitFromJs : int -> fruit option
```

```reason
let fruitToJs: fruit => int;

let fruitFromJs: int => option(fruit);
```

For `fruitToJs`, each fruit variant constructor would map into an integer, starting at 0, in the order they're declared.

For `fruitFromJs`, the return value is an `option`, because not every int maps to a constructor.

You can also attach a `[@bs.as alternativeIntValue]` to each constructor to customize their output.

### Usage

```ocaml
type fruit =
  | Apple
  | Orange [@bs.as 10]
  | Kiwi [@bs.as 100]
  | Watermelon
  [@@bs.deriving jsConverter]

let zero = fruitToJs Apple (* 0 *)

let _ = match fruitFromJs 100 with
| Some Kiwi -> Js.log "this is Kiwi"
| _ -> Js.log "received something wrong from the JS side"
```

```reason
[@bs.deriving jsConverter]
type fruit =
  | Apple
  | [@bs.as 10] Orange
  | [@bs.as 100] Kiwi
  | Watermelon;

let zero = fruitToJs(Apple); /* 0 */

switch (fruitFromJs(100)) {
| Some(Kiwi) => Js.log("this is Kiwi")
| _ => Js.log("received something wrong from the JS side")
};
```

**Note**: by using `bs.as` here, all subsequent number encoding changes. `Apple` is still `0`, `Orange` is `10`, `Kiwi` is `100` and `Watermelon` is **`101`**!

### More Safety

Similar to the JS object <-> record deriving, you can hide the fact that the JS enum are ints by passing the same `newType` option to the `jsConverter` plugin:

```ocaml
type fruit =
  | Apple
  | Kiwi [@bs.as 100]
  | Watermelon
  [@@bs.deriving {jsConverter = newType}]
```

```reason
[@bs.deriving {jsConverter: newType}]
type fruit =
  | Apple
  | [@bs.as 100] Kiwi
  | Watermelon;
```

This option causes `jsConverter` to generate functions of the following types:

```ocaml
val fruitToJs : fruit -> abs_fruit

val fruitFromJs : abs_fruit -> fruit
```

```reason
let fruitToJs: fruit => abs_fruit;

let fruitFromJs: abs_fruit => fruit;
```

For `fruitFromJs`, the return value, unlike the previous non-abstract type case, doesn't contain an `option`, because there's no way a bad value can be passed into it; the only creator of `abs_fruit` values is `fruitToJs`!

#### Usage

```ocaml
type fruit =
  | Apple
  | Kiwi [@bs.as 100]
  | Watermelon
  [@@bs.deriving {jsConverter = newType}]

let opaqueValue = fruitToJs Apple

external jsKiwi: abs_fruit = "iSwearThisIsAKiwi" [@@bs.module "myJSFruits"]
let kiwi = fruitFromJs jsKiwi

let error = fruitFromJs 100 (* nope, can't take a random int *)
```

```reason
[@bs.deriving {jsConverter: newType}]
type fruit =
  | Apple
  | [@bs.as 100] Kiwi
  | Watermelon;

let opaqueValue = fruitToJs(Apple);

[@bs.module "myJSFruits"] external jsKiwi : abs_fruit = "iSwearThisIsAKiwi";
let kiwi = fruitFromJs(jsKiwi);

let error = fruitFromJs(100); /* nope, can't take a random int */
```

## Convert between JS String Enum and BS Polymorphic Variant

Similar to previous section, except polymorphic variants are converted to `string` instead of `int`.

### Usage

```ocaml
type fruit = [
  | `Apple
  | `Kiwi [@bs.as "miniCoconut"]
  | `Watermelon
] [@@bs.deriving jsConverter]

let appleString = fruitToJs `Apple (* "Apple" *)
let kiwiString = fruitToJs `Kiwi (* "miniCoconut" *)
```

```reason
[@bs.deriving jsConverter]
type fruit = [
  | `Apple
  | [@bs.as "miniCoconut"] `Kiwi
  | `Watermelon
];

let appleString = fruitToJs(`Apple); /* "Apple" */
let kiwiString = fruitToJs(`Kiwi); /* "miniCoconut" */
```

Deriving converters with abstract type through `newType` also still works.
