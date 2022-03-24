(*条件を満たす要素を取り出す関数*)

let is_mod3_1 n = n mod 3 = 1

let rec filter_positive list = match list with
    [] -> []
    | first :: rest -> let x = filter_positive rest in
        if is_mod3_1 first then first :: x
                           else x

let rec pra_1 list = match list with
    [] -> []
    | first :: rest ->
        if first > 0 then first :: pra_1 rest
                     else pra_1 rest


(*テストコード*)

let test1_1 = filter_positive [3;4;5;6;7]
let test1_2 = filter_positive [8766589;723870]
let test1_3 = pra_1 [3;-1]


(*高階関数*)
let rec filter p list = match list with
    [] -> []
    | first :: rest -> if p first then first :: filter p rest
                                  else  filter p rest



let rec sum list = match list with
    [] -> 0
    | first :: rest -> first + sum rest


let rec length list = match list with
    [] -> 0
    | first :: rest -> 1 + length rest





                    

