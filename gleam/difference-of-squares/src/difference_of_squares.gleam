import gleam/list.{range, map}
import gleam/int.{sum}
import gleam/function.{apply1}

pub fn square_of_sum(n: Int) -> Int {
  range(1, n) 
  |> sum
  |> apply1(fn(x) { x * x }, _)
}

pub fn sum_of_squares(n: Int) -> Int {
  range(1, n)
  |> map(fn(x) { x * x })
  |> sum
}

pub fn difference(n: Int) -> Int {
  square_of_sum(n) - sum_of_squares(n)
}
