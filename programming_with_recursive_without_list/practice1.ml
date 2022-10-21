(*階乗を求める。*)
(*等倍で吐き出しを行うため、真＝１*)

let rec fac n =
    if n = 0 then 1
             else n * fac (n-1) 

let test1 = fac 0 = 1
let test2 = fac 3 = 6
let test3 = fac 4 = 24


(*冪乗を求める*)

let rec power m n = 
    if n = 0 then 1
             else m * power m (n-1)

let test1 = power 0 0 = 0
let test2 = power 1 2 = 1
let test3 = power 2 2 = 4

