fun zipWithRev xs =
  let
    fun aux [] [] acc = acc
      | aux (x::xs) (y::ys) acc = aux xs ys ((x, y)::acc)
      | aux _ _ _ = raise Fail "Lists are not of equal length"
  in
    aux xs (List.rev xs) []
  end;
