---
title: Cheatsheet
---

The next few sections will cover these in detail. Feel free to skip this one if nothing makes sense yet!

## Raw JS

```ocaml
let add = [%raw "a + b"]
[%%raw "var a = 1"]
let myFunction = [%raw fun a b -> "return a + b"]
```

```reason
let add = [%raw "a + b"];
[%%raw "var a = 1"];
let myFunction = [%raw (a, b) => "return a + b"];
```

## String Unicode & Interpolation

```ocaml
Js.log {js|你好，
世界|js}

let world = "world"
let helloWorld = {j|hello, $world|j}
```

```reason
Js.log({js|你好，
世界|js});

let world = "world";
let helloWorld = {j|hello, $world|j};
```

## Global Value

```ocaml
external setTimeout : (unit -> unit) -> int -> float = "setTimeout" [@@bs.val]
```

```reason
[@bs.val] external setTimeout : (unit => unit, int) => float = "setTimeout";
```

## Global Module

```ocaml
external random: unit -> float = "random" [@@bs.val][@@bs.scope "Math"]
let someNumber = random ()

external length: int = "length" [@@bs.val][@@bs.scope "window", "location", "ancestorOrigins"]
```

```reason
[@bs.val] [@bs.scope "Math"] external random : unit => float = "random";
let someNumber = random();

[@bs.val] [@bs.scope ("window", "location", "ancestorOrigins")] external length : int = "length";
```

## Nullable

```ocaml
let a = Some 5 (* compiles to 5 *)
let b = None (* compiles to undefined *)
```

```reason
let a = Some(5); /* compiles to 5 */
let b = None; /* compiles to undefined */
```

Handling a value that can be `undefined` and `null`, by ditching the `option` type and using `Js.Nullable.t`:

```ocaml
let jsNull = Js.Nullable.null
let jsUndefined = Js.Nullable.undefined

let result1: string Js.Nullable.t = Js.Nullable.return "hello"
let result2: int Js.Nullable.t  = Js.Nullable.fromOption (Some 10)
let result3: int option  = Js.Nullable.toOption (Js.Nullable.return 10)
```

```reason
let jsNull = Js.Nullable.null;
let jsUndefined = Js.Nullable.undefined;

let result1: Js.Nullable.t(string) = Js.Nullable.return("hello");
let result2: Js.Nullable.t(int) = Js.Nullable.fromOption(Some(10));
let result3: option(int) = Js.Nullable.toOption(Js.Nullable.return(10));
```

## Object

### Hash Map Mode

```ocaml
let myMap = Js.Dict.empty ()
let _ = Js.Dict.set myMap "Allison" 10
```

```reason
let myMap = Js.Dict.empty();
Js.Dict.set(myMap, "Allison", 10);
```

### Record Mode

```ocaml
type person = {
  name: string [@bs.optional];
  age: int;
  mutable job: string;
} [@@bs.deriving abstract]

external getNickname: person -> string = "getNickname" [@@bs.send]

external john : person = "john" [@@bs.val]

let age = john |. ageGet
let () = john |. jobSet "Accountant"
let nick = john |. getNickname
```

```reason
[@bs.deriving abstract]
type person = {
  [@bs.optional] name: string,
  age: int,
  mutable job: string,
};

[@bs.send] external getNickname : person => string = "getNickname";

[@bs.val] external john : person = "john";

let age = john->ageGet;
john->jobSet("Accountant");
let nick = john->getNickname;
```

### New Instance

```ocaml
type t
external createDate : unit -> t = "Date" [@@bs.new]
```

```reason
type t;
[@bs.new] external createDate : unit => t = "Date";
```

## Function

### Object Method & Chaining

```ocaml
external map : 'a array -> ('a -> 'b) -> 'b array = "map" [@@bs.send]
external filter : 'a array -> ('a -> bool) -> 'a array = "filter" [@@bs.send]

(* 2, 4 *)
let () = [|1; 2; 3|]
  |. map (fun a -> a + 1)
  |. filter (fun a -> a mod 2 = 0)
  |. Js.log
```

```reason
[@bs.send] external map : (array('a), 'a => 'b) => array('b) = "map";
[@bs.send] external filter : (array('a), 'a => 'b) => array('b) = "filter";

/* 2, 4 */
[|1, 2, 3|]
->map(a => a + 1)
->filter(a => a mod 2 == 0)
->Js.log;
```

### Variadic (was bs.splice prior to version 4.08)

```ocaml
external join : string array -> string = "join" [@@bs.module "path"] [@@bs.variadic]
```

```reason
[@bs.module "path"] [@bs.variadic]
external join : array(string) => string = "join";
```

### Polymorphic Function

```ocaml
external drawCat: unit -> unit = "draw" [@@bs.module "Drawing"]
external drawDog: giveName:string -> unit = "draw" [@@bs.module "Drawing"]
```

```reason
[@bs.module "Drawing"] external drawCat : unit => unit = "draw";
[@bs.module "Drawing"] external drawDog : (~giveName: string) => unit = "draw";
```

```ocaml
external padLeft :
  string
  -> ([ `Str of string
      | `Int of int
      ] [@bs.unwrap])
  -> string
  = "padLeft" [@@bs.val]

let _ = padLeft "Hello World" (`Int 4)
```

```reason
[@bs.val] external padLeft : (
  string,
  [@bs.unwrap] [
    | `Str(string)
    | `Int(int)
  ]
) => string = "padLeft";

padLeft("Hello World", `Int(4));
```

### Curry/Uncurry

```ocaml
let add = fun [@bs] x y z -> x + y + z
let six = (add 1 2 3) [@bs]
```

```reason
let add = [@bs] ((x, y, z) => x + y + z);
let six = [@bs] add(1, 2, 3);
```

## Module

```ocaml
external dirname: string -> string = "dirname" [@@bs.module "path"]
```

```reason
[@bs.module "path"] external dirname : string => string = "dirname";
```

### Import module.exports

```ocaml
external simpleFunction: string -> string = "simple-module-that-is-a-function" [@@bs.module]
```

```reason
[@bs.module] external simpleFunction : string => string = "simple-module-that-is-a-function";
```

### Import Default

It's important to note that you are not providing the module path to `bs.module`, but instead as the last argument of `external`.

```ocaml
external leftPad: string -> int -> string = "./leftPad" [@@bs.module]
```

```reason
[@bs.module] external leftPad : (string, int) => string = "./leftPad";
```

Import ES6 default compiled from Babel:

```ocaml
external studentName: string = "default" [@@bs.module "./student"]
```

```reason
[@bs.module "./student"] external studentName : string = "default";
```

### Export ES6 default

```ocaml
let default = "Bob"
```

```reason
let default = "Bob";
```

## Identity External

Final escape hatch converter. Do not abuse.

```ocaml
external myShadyConversion : foo -> bar = "%identity"
```

```reason
external myShadyConversion : foo => bar = "%identity";
```

---

You can find more examples for the various `bs.*` attributes [here](https://github.com/moroshko/bs-blabla).
