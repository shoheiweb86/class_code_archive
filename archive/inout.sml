fun inputInt () =
  case TextIO.inputLine TextIO.stdIn of
    NONE => NONE
    | SOME s => case Int.fromString s of
    NONE => NONE
    | SOME n => SOME n
fun outputInt n =
  print (Int.toString n ˆ"\n")