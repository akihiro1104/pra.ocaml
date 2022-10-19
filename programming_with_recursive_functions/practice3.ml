(*スコープ変数*)
(*複数の変数を統一する*)

(*リストの中の最小値の値を返す*)
(*スコープ変数なし*)

let rec minimum_int list = match list with
    [] -> max_int
    | first :: rest ->
        if first < minimum_int rest then first
                                    else minimum_int rest

let test1 = minimum_int [1;2] = 1
let test2 = minimum_int [2;3] = 2
let test3 = minimum_int [5;6;7;8;9;0] = 0



(*スコープ変数あり*)

let rec minimum_int list = match list with
    [] -> max_int
    | first :: rest -> let scope_minimum = minimum_int rest in
         if first < scope_minimum then first
                                  else scope_minimum

let test1 = minimum_int [1;2] = 1
let test2 = minimum_int [2;3] = 2
let test3 = minimum_int [5;6;7;8;9;0] = 0



(*gakusei_t型のデータ構造を受け取ったら、各成績の人数を返す*)

(*gakusei_t型*)

type gakusei_t = {
    namae : string;
    tensuu : int;
    seiseki : string;
}

let list1 = [namae = "aki"; tensuu = 89; seiseki = "a"]
let list2 = [list1]


let rec shukei list = match list with
    [] -> (0,0,0,0)
    | { namae = n; tensuu = t; seiseki = s} :: rest -> match shukei rest with
        (a,b,c,d) -> if s = "a" then (a+1,b,c,d)
                                else if if s = "b" then (a,b+1,c,d)
                                                   else if s = "c" then (a,b,c+1,d)
                                                                   else (a,b,c,d+1)
                                                                   


(*スコープ変数使用*)
(*吐き出したいデータ型の意識が必要*)
let rec shukei list = match list with
    [] -> (0,0,0,0)
    | { namae = n; tensuu = t; seiseki = s} :: rest -> match shukei rest with
        (a,b,c,d) -> if s = "a" then (a+1,b,c,d)
                                else if if s = "b" then (a,b+1,c,d)
                                                   else if s = "c" then (a,b,c+1,d)
                                                                   else (a,b,c,d+1)