(*
   === Problem 004 Length of a List ===
   Find the number of elements of a list.
*)

module P004_length_of_list = struct
  let rec length xs =
    match xs with
    | [] -> 0
    | _ :: xs -> 1 + length xs
  ;;
end
