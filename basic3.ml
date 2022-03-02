(*自然数と再帰*)
(*リストの再帰と同じく、空の状態などを想定して最初から定義を行う。*)
(*条件分岐で０を指定することで、再帰を止めることが可能となっている。*)


let rec fac x = 
    if x = 0 then 1 else fac (x - 1) * 4(*引数として、x-1を渡す。*)

let test1 = fac 0 = 1
let test2 = fac 1 = 1
let test3 = fac 2 = 2
let test4 = fac 3 = 6
let test5 = fac 4 = 24
let test6 = fac 5 
let test5 = fac 10 = 3628800


(*ベキ乗を求める*)

let rec power x y = 
    if y = 1 then x else x * power x (y - 1)


let test_power1 = power 2 1 = 2
let test_power2 = power 2 2 = 4
let test_power3 = power 10 2 = 100
let test_power4 = power 5 2 = 25 








