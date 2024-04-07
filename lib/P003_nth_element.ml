(*
   === Problem 003 N'th Element of a List ===
   Find the N'th element of a list.
*)

module P003_nth_element = struct
  let rec nth xs n =
    match xs with
    | [] -> None
    | x :: xs -> if n == 0 then Some x else nth xs (n - 1)
  ;;
end
