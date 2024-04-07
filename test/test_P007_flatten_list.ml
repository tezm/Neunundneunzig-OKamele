open P007_flatten_list
module F = Format

let%expect_test "Problem 007 Flatten a List" =
  (*
     # flatten [One "a"; Many [One "b"; Many [One "c" ;One "d"]; One "e"]];;
     - : string list = ["a"; "b"; "c"; "d"; "e"]
  *)
  let x =
    P007_flatten_list.flatten
      [ One "a"; Many [ One "b"; Many [ One "c"; One "d" ]; One "e" ] ]
  in
  List.iter (F.printf "%s ") x;
  [%expect {| a b c d e |}]
;;
