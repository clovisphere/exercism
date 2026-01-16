let are_balanced s =
  let check stack c =
    match stack, c with
    | _, ('(' | '{' | '[') -> Some (c :: stack)
    | '(' :: rest, ')' | '{' :: rest, '}' | '[' :: rest, ']'-> Some rest
    | _, (')' | ']' | '}') -> None
    | _ -> Some stack
  in
  String.fold_left (fun acc c ->
    match acc with
    | Some stack' -> check stack' c
    | None -> None
  ) (Some []) s
  |> function
    | Some [] -> true
    | _ -> false
