(*
  === Problem 001 Tail === 
  Write a function last : 'a list -> 'a option 
  that returns the last element of a list.
*)

module P001_tail = struct
  let rec last xs =
    match xs with [] -> None | [ x ] -> Some x | _ :: xs -> last xs
end
