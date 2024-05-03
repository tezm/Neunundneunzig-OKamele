(*
   === Problem 008 Eliminate Duplicates ===
   Eliminate consecutive duplicates of list elements.
*)

module P008_remove_duplicates = struct
  let compress list =
    let rec helper new_l l =
      match l with
      | [] -> new_l
      | [ x ] -> x :: new_l
      | x :: y :: xs ->
        if x = y then helper new_l (y :: xs) else helper (x :: new_l) (y :: xs)
    in
    helper [] list |> List.rev
  ;;
end
