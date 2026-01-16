let are_balanced s =
  let check stack c =
    match stack, c with
    | _, ('(' | '{' | '[') -> c :: stack
    | '(' :: rest, ')' -> rest
    | '{' :: rest, '}' -> rest
    | '[' :: rest, ']' -> rest
    | _, (')' | ']' | '}') -> failwith "unbalanced"
    | _, _ -> stack
  in
  try
    String.to_seq s
    |> Seq.fold_left check []
    |> (=) []
  with _ -> false
