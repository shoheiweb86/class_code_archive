(* string list -> unit *)
fun printLines [] = ()
  | printLines (x::xs) = (print (x ^ "\n"); printLines xs)