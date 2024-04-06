open P001_tail
module F = Format

let%expect_test "Problem 001 Tail" =
  (*
  # last ["a" ; "b" ; "c" ; "d"];;
  - : string option = Some "d"
  *)
  F.printf "%s"
    (Option.value (P001_tail.last [ "a"; "b"; "c"; "d" ]) ~default:"");
  [%expect {| d |}];

  (*
  # last [];;
  - : 'a option = None
  *)
  F.printf "%s" (Option.value (P001_tail.last []) ~default:"");
  [%expect {|  |}]
