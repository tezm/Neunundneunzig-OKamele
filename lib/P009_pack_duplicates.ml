
(*
   === Problem 009 Pack Consecutive Duplicates ===
   Pack consecutive duplicates of list elements into sublists.
*)

module P009_pack_duplicates = struct
  let pack list =
    let rec helper partial_list new_list l =
      match l with
      | [] -> partial_list :: new_list
      | x :: xs ->
        if partial_list = [] then 
          helper [ x ] new_list xs 
        else 
          if x = List.hd partial_list then 
            helper (x :: partial_list) new_list xs
          else
          helper [x] (partial_list :: new_list) xs
    in
    helper [] [] list |> List.rev
  ;;
end
