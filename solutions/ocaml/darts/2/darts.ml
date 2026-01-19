let score (x: float) (y: float): int =
  let d = sqrt (x *. x +. y *. y) in
  match d with
  | _ when d <= 1.0  -> 10
  | _ when d <= 5.0  -> 5
  | _ when d <= 10.0 -> 1
  | _                -> 0