open P005_reverse_list
module F = Format

let%expect_test "Problem 004 Length of a List" =
  (*
     # rev ["a"; "b"; "c"];;
     - : string list = ["c"; "b"; "a"]
  *)
  let x = P005_reverse_list.rev [ "a"; "b"; "c" ] in
  List.iter (F.printf "%s ") x;
  [%expect {| c b a |}];
  (*
     # rev [];;
     - : a' list = []
  *)
  let x = P005_reverse_list.rev [] in
  List.iter (F.printf "%s ") x;
  [%expect {|  |}]
;;
