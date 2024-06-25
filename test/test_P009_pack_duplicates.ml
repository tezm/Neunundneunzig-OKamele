
open P009_pack_duplicates
module F = Format

let%expect_test "Problem 009 Pack Consecutive Duplicates" =
(*
    # pack ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "d"; "e"; "e"; "e"; "e"];;
    : string list list =
    [["a"; "a"; "a"; "a"]; ["b"]; ["c"; "c"]; ["a"; "a"]; ["d"; "d"]; ["e"; "e"; "e"; "e"]]
*)
  let x = P009_pack_duplicates.pack ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "d"; "e"; "e"; "e"; "e"] in
  let list_to_string = fun x -> "[ " ^ (String.concat " " x) ^ " ]" in 
  x |> List.map list_to_string |> List.iter (F.printf("%s ")) ;
  [%expect {| [ a a a a ] [ b ] [ c c ] [ a a ] [ d d ] [ e e e e ] |}]
;;
