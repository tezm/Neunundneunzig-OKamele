open P002_tail_penultimate
module F = Format

let%expect_test "Problem 002 Last Two Elements of a List" =
  (*
  # last_two ["a"; "b"; "c"; "d"];;
  - : (string * string) option = Some ("c", "d")
  *)
  let x, y =
    Option.value
      (P002_tail_penultimate.last_two [ "a"; "b"; "c"; "d" ])
      ~default:("", "")
  in
  F.printf "%s %s" x y;
  [%expect {| c d |}];

  (*
  # last_two ["a"];;
  - : (string * string) option = None
  *)
  let x, y =
    Option.value (P002_tail_penultimate.last_two [ "a" ]) ~default:("", "")
  in
  F.printf "%s %s" x y;
  [%expect {|  |}]
