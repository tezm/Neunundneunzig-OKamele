(*
   === Problem 010 Run-Length Encoding ===
   If you need so, refresh your memory about run-length encoding.
   http://en.wikipedia.org/wiki/Run-length_encoding
*)

module P010_run_length_encoding = struct
  let encode list =
    let rec helper num new_list l =
      match l with
      | [] -> new_list
      | [ x ] -> (num, x) :: new_list
      | x :: (y :: _ as xs) ->
        if x = y
        then helper (num + 1) new_list xs
        else helper 1 ((num, x) :: new_list) xs
    in
    helper 1 [] list |> List.rev
  ;;
end
