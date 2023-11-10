(* int * int -> real option *)
fun divInt (x : int, y : int) =
  if y <> 0
  then SOME (real(x) / real(y))
  else NONE;