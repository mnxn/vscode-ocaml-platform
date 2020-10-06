val iter_set : Ojs.t -> string -> ('a -> Ojs.t) -> 'a option -> unit

type 'a or_undefined = 'a option

val or_undefined_of_js : (Ojs.t -> 'a) -> Ojs.t -> 'a option

val or_undefined_to_js : ('a -> Ojs.t) -> 'a option -> Ojs.t

type 'a maybe_list = 'a list

val maybe_list_of_js : (Ojs.t -> 'a) -> Ojs.t -> 'a list

val maybe_list_to_js : ('a -> Ojs.t) -> 'a list -> Ojs.t

module Regexp : sig
  type t = Js_of_ocaml.Regexp.regexp

  val t_to_js : Js_of_ocaml.Regexp.regexp -> Ojs.t

  val t_of_js : Ojs.t -> Js_of_ocaml.Regexp.regexp
end

module JsDict : sig
  type 'a t = (string, 'a) Core_kernel.Map.Poly.t

  val t_to_js : ('a -> Ojs.t) -> (string, 'a) Core_kernel.Map.Poly.t -> Ojs.t

  val t_of_js : (Ojs.t -> 'a) -> Ojs.t -> (string, 'a) Core_kernel.Map.Poly.t
end