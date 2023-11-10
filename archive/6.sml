fun replaceNth (n, a, xs) =
  if n < 0 orelse n >= length xs then xs (* もしnが0未満、またはリストの長さ以上であれば、元のリストを返す *)
  else
    let
      fun replace [] _ = []
        | replace (x::xs) 0 = a :: xs
        | replace (x::xs) n = x :: replace xs (n-1)
    in
      replace xs n
    end;
