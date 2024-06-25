open P010_run_length_encoding
module F = Format

let%expect_test "Problem 010 Run-Length Encoding" =
  (*
     # encode ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e"];;
     - : (int * string) list =
       [(4, "a"); (1, "b"); (2, "c"); (2, "a"); (1, "d"); (4, "e")]
  *)
  let x =
    P010_run_length_encoding.encode
      [ "a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e" ]
  in
  let pair_to_string l = "( " ^ string_of_int (fst l) ^ ", " ^ snd l ^ " )" in
  x |> List.map pair_to_string |> List.iter (F.printf "%s ");
  [%expect {| ( 4, a ) ( 1, b ) ( 2, c ) ( 2, a ) ( 1, d ) ( 4, e )|}]
;;
