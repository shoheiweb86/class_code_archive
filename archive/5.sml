fun exchangeAppleAndOrange(s: string): string =
    case s of
        "apple" => "orange"
      | "orange" => "apple"
      | _ => s;