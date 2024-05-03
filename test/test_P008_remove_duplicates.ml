open P008_remove_duplicates
module F = Format

let%expect_test "Problem 008 Eliminate Duplicates" =
  (*
     # compress ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e"];;
     - : string list = ["a"; "b"; "c"; "a"; "d"; "e"]
  *)
  let x =
    P008_remove_duplicates.compress
      [ "a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e" ]
  in
  List.iter (F.printf "%s ") x;
  [%expect {| a b c a d e |}]
;;
