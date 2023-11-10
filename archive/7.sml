fun rotate (k, xs) =
  if k < 0 then xs
  else let
    fun splitAt 0 xs acc = (List.rev acc, xs)
      | splitAt _ [] acc = (List.rev acc, [])
      | splitAt n (x::xs) acc = splitAt (n-1) xs (x::acc)
    val (front, back) = splitAt k xs []
  in
    back @ front
  end