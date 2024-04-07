open P006_palindrome
module F = Format

let%expect_test "Problem 006 Palindrome" =
  (*
     # is_palindrome ["x"; "a"; "m"; "a"; "x"];;
     - : bool = true
  *)
  let x = P006_palindrome.is_palindrome [ "x"; "a"; "m"; "a"; "x" ] in
  F.printf "%b" x;
  [%expect {| true |}];
  (*
     # not (is_palindrome ["a"; "b"]);;
     - : bool = true
  *)
  let x = not (P006_palindrome.is_palindrome [ "a"; "b" ]) in
  F.printf "%b" x;
  [%expect {| true |}]
;;
