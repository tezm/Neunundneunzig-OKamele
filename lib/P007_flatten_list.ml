(*
   === Problem 007 Flatten a List ===
   Flatten a nested list structure.
*)

module P007_flatten_list = struct
  type 'a node =
    | One of 'a
    | Many of 'a node list

  let flatten list =
    let rec helper new_l l =
      match l with
      | [] -> new_l
      | One x :: xs -> helper (new_l @ [ x ]) xs
      | Many x :: xs -> helper (helper new_l x) xs
    in
    helper [] list
  ;;
end
