(* readIntList : unit -> int list *)
fun readIntList () =
    let
        fun readInts () =
            case TextIO.inputLine TextIO.stdIn of
                NONE => []  (* 入力終了 *)
              | SOME line =>
                (case Int.fromString line of
                     SOME i => i :: readInts ()  (* 整数の場合 *)
                   | NONE => [])  (* 整数に変換できない場合、リストの終了 *)
    in
        readInts ()
    end;
