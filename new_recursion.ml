(*自然数再帰*)

(*階乗を再帰を用いて求める*)

let rec fac n =
    if n = 0 then 1
             else n * fac (n - 1)

let test1 = fac 3 = 6
let test2 = fac 4 = 24
let test3 = fac 5 = 120 