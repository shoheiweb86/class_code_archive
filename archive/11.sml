(* string -> string option *)
fun unfoldRepeat str =
  let
    val len = size str
  in
    if len mod 2 <> 0 then NONE
    else
      let
        val half = String.substring (str, 0, len div 2)
      in
        if half ^ half = str then SOME half else NONE
      end
  end
