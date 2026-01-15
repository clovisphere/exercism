open Base

(* let empty = Map.empty (module Char) *)

let find_invalid_char s =
  String.to_sequence s
  |> Sequence.find ~f:(fun c -> not (String.contains "ACGT" c))

let count_nucleotide s target =
  if not (String.contains "ACGT" target) then
    Error target
  else
    match find_invalid_char s with
    | Some invalid -> Error invalid
    | _ -> Ok (String.fold s ~init:0 ~f:(fun acc c -> if Char.equal c target then acc + 1 else acc))

  
let count_nucleotides s =
  match find_invalid_char s with
  | Some invalid -> Error invalid
  | _ ->
    let alist = 
        ['A'; 'C'; 'G'; 'T']
        |> List.map ~f:(fun c ->
             match count_nucleotide s c with
             | Ok count -> (c, count)
             | Error _ -> failwith "Should not happen")
        |> List.filter ~f:(fun (_char, count) -> count > 0) 
      in
      Ok (Map.of_alist_exn (module Char) alist)