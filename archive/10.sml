(* string * string -> string option *)
fun addIntString (str1 : string, str2 : string) =
  case (Int.fromString str1, Int.fromString str2) of
    (SOME i, SOME j) => SOME (Int.toString (i + j))
  | _ => NONE;
