(*条件分岐*)



(*視力を入力して各数値に対してAからDまでのランクを示す*)

let eye_power x =
    if x >= 2.0 then "AA" 
                else if x >= 1.0 then "A" 
                                 else if x >= 0.5 then "B"
                                                  else if x >= 0.1 then "C" else "D"

let test1_1 = eye_power 4.0 = "AA"
let test1_2 = eye_power 1.3 = "A"
let test1_3 = eye_power 0.8 = "B"
let test1_4 = eye_power 0.4 = "C"
let test1_5 = eye_power 0.01 = "D"

(*練習*)

let pra_1 x =
    if x <= 10 then x + 20 else x - 20


let pra = pra_1 90 = 70
let pra = pra_1 100 = 80



 (*倫理演算子の練習*)

 let pra_and x = 
    if x <= 30  && x >= 10 then "a" else "b" 


let test2_1 = pra_and 30 = "a"
let test2_2 = pra_and 20 = "a"
let test2_3 = pra_and 50 = "b"


let pra_or x = 
    if x >= 10 || x >= 30 then "a" else "b"

let test3_1 = pra_or 20 = "a"
let test3_2 = pra_or 1 =  "b"