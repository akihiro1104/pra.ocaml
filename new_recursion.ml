(*自然数再帰*)

(*階乗を再帰を用いて求める*)

let rec fac n =
    if n = 0 then 1
             else n * fac (n - 1)

let test1 = fac 3 = 6
let test2 = fac 4 = 24
let test3 = fac 5 = 120 


(*ベキ乗を求める関数の作成*)

let rec power n1 n2 =
    if n2 = 0 then 1
              else n1 * power n1 ( n2 - 1 )


let test1 = power 2 2 = 4
let test2 = power 3 2 = 9
let test3 = power 4 2 = 16