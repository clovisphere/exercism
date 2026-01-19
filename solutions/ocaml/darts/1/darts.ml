let score (x: float) (y: float): int =
  match sqrt (x *. x +. y *. y) with
  | d when d <= 1.0  -> 10
  | d when d <= 5.0  -> 5
  | d when d <= 10.0 -> 1
  | _                -> 0