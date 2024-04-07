open P003_nth_element
module F = Format

let%expect_test "Problem 003 Last Two Elements of a List" =
  (*
     # List.nth ["a"; "b"; "c"; "d"; "e"] 2;;
     - : string = "c"
  *)
  let x =
    Option.value (P003_nth_element.nth [ "a"; "b"; "c"; "d" ] 2) ~default:""
  in
  F.printf "%s" x;
  [%expect {| c |}];
  (*
     # List.nth ["a"] 2;;
     Exception: Failure "nth".
  *)
  let x = Option.value (P003_nth_element.nth [ "a" ] 2) ~default:"" in
  F.printf "%s" x;
  [%expect {|  |}]
;;
