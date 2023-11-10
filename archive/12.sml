(* int * int -> int option *)
fun isPrimeSub (k, n) =
  let
    fun findDivisor k =
      if k >= n then NONE
      else if n mod k = 0 then SOME k
      else findDivisor (k + 1)
  in
    findDivisor k
  end
