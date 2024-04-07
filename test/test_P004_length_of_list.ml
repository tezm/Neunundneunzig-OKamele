open P004_length_of_list
module F = Format

let%expect_test "Problem 004 Length of a List" =
  (*
     # List.nth ["a"; "b"; "c"; "d"; "e"] 2;;
     - : string = "c"
  *)
  let x = P004_length_of_list.length [ "a"; "b"; "c" ] in
  F.printf "%d" x;
  [%expect {| 3 |}];
  (*
     # List.nth ["a"] 2;;
     Exception: Failure "nth".
  *)
  let x = P004_length_of_list.length [] in
  F.printf "%d" x;
  [%expect {| 0 |}]
;;
