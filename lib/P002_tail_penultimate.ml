(*
  === Problem 002 Last Two Elements of a List === 
  Find the last but one (last and penultimate) elements of a list.
*)

module P002_tail_penultimate = struct
  let rec last_two xs =
    match xs with
    | [] -> None
    | [ _ ] -> None
    | [ x; y ] -> Some (x, y)
    | _ :: xs -> last_two xs
end
