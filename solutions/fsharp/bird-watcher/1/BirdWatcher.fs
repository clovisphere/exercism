module BirdWatcher

let lastWeek: int[] =
   [|0; 2; 5; 3; 7; 8; 4|]

let rec yesterday(counts: int[]): int =
    counts[(Array.length counts) - 2]

let total(counts: int[]): int =
  counts |> Array.sum

let dayWithoutBirds(counts: int[]): bool =
  counts |> Array.contains 0
  
let incrementTodaysCount(counts: int[]): int[] =
 counts |> Array.updateAt (Array.length counts - 1) (Array.last counts + 1)

let unusualWeek (counts: int[]) : bool =
    let same (arr: int[]) : bool =
        arr |> Array.distinct |> Array.length = 1

    let evens = counts |> Array.mapi (fun i x -> (i+1), x) |> Array.filter (fun (i,_) -> i % 2 = 0) |> Array.map snd
    let odds = counts |> Array.mapi (fun i x -> (i+1), x) |> Array.filter (fun (i,_) -> i % 2 <> 0) |> Array.map snd

    same evens || same odds
