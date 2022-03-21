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