(*
   === Problem 005 Reverse a List ===
   Reverse a List.
*)

module P005_reverse_list = struct
  let rev list =
    let rec helper new_l l =
      match l with
      | [] -> new_l
      | x :: xs -> helper (x :: new_l) xs
    in
    helper [] list
  ;;
end
