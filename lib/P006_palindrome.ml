(*
   === Problem 006 Palindrome ===
   Find out whether a list is a palindrome.

   Hint: A palindrome is its own reverse.
*)

module P006_palindrome = struct
  let rec rev new_l l =
    match l with
    | [] -> new_l
    | x :: xs -> rev (x :: new_l) xs
  ;;

  let is_palindrome list =
    let rev_l = rev [] list in
    list = rev_l
  ;;
end
