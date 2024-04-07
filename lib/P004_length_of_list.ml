(*
   === Problem 004 Length of a List ===
   Find the number of elements of a list.
*)

module P004_length_of_list = struct
  let length list =
    let rec helper n l =
      match l with
      | [] -> n
      | _ :: xs -> helper (n + 1) xs
    in
    helper 0 list
  ;;
end
