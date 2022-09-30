(*関数を使用したリスト処理*)
(*変数はメモリに作業スペースを作るイメージ*)

(*関数練習*)

let practice1 price = price * 100
let test1 = practice1 2000 = 200000

(*条件分岐練習*)
(*最初に引数を含めたテストコードを作成して、ゴールを明確にする。*)
(*必ず各ケースに結合させたテストを試すのが重要*)
(*以下の条件分岐は二つだけだが、多数の派生も可能*)

let situation time =
    if time >= 80 then 2000 * time
                  else 1000 *  time


let test1 = situation 100 = 200000
let test2 = situation 50 = 50000 



let time_identify time = 
     if time >= 12 then "午後"
                   else if time <= 12 then "午前"
                                      else "おやすみ"
 
let test1 = time_identify 15 = "午後"
let test2 = time_identify 9 = "午前"


(*パターンマッチと組*)
(*複数のデータを扱うことが目的*)

let add pair = match pair with
    (a,b) -> a + b

let test1 = add (9,8) = 17
let test2 = add (10,10) = 20

(*練習*)

let find_number count = match count with
    (a,b) ->  a + b * 8

let test1 = find_number (5000,5000) = 45000
let test2 = find_number (10,10) = 90


(*レコード*)
(*パターンマッチの個別のデータに名前をつけて保存するイメージ*)
(*パターンマッチと同じように使用が可能*)
(*実際のレコードによるデータ構造などはユーザーに細かく指定されるケースが多い。*)




(*以下のように、データ型を定める*)

type gakusei_t = {
    namae : string; (*名前*)
    tensuu : int ;  (*点数*)
    seiseki : string; (*成績*)
}

(*実際のレコードタイプの問題は以下のような処理が行われる*)

let hyouka gakusei = match gakusei with
    { namae = n; tensuu = t; seiseki = s} ->
        if t >= 80 then { namae = n; tensuu = t; seiseki = "a"}
                   else if t >= 70 then { namae = n; tensuu = t; seiseki = "b"}
                                   else if t >= 60 then { namae = n; tensuu = t; seiseki = "c"}
                                                    else { namae = n; tensuu = t; seiseki = "d"}



let test1 = hyouka { namae = "asai"; tensuu = 90; seiseki = "" } = { namae = "asai"; tensuu = 90; seiseki = "a" }
let test2 = hyouka { namae = "asai"; tensuu = 80; seiseki = "" } = { namae = "asai"; tensuu = 80; seiseki = "a" }
let test3 = hyouka { namae = "asai"; tensuu = 75; seiseki = "" } = { namae = "asai"; tensuu = 75; seiseki = "b" }
let test4 = hyouka { namae = "asai"; tensuu = 65; seiseki = "" } = { namae = "asai"; tensuu = 65; seiseki = "c" }
let test1 = hyouka { namae = "asai"; tensuu = 55; seiseki = "" } = { namae = "asai"; tensuu = 55; seiseki = "d" }


(*データ構造のリスト*)
(*大量のデータを扱うときに優れているデータ構造*)
(*リストの中身は、同じデータ型で統一しなけれならない*)
(*パターンマッチを使用して、リストの操作が可能となっている。*)
(*リストの中のものを全て何かしらの計算などをしたければ、再帰関数を使用する*)

let practice_list data = match data with
    [] -> "nothing"
    | first :: rest -> 
        if first > 50 then "ok"
                      else "no"
    
let test1 = practice_list [90;20] = "ok"
let test2 = practice_list [10;52] = "no"


(*再帰関数について*)

let rec contain_zero list = match list with
    [] -> false
    | first :: rest ->
        if first = 0 then true
                     else contain_zero rest

let test1 = contain_zero [] = false
let test2 = contain_zero [1] = false
let test3 = contain_zero [0;9;8] = true
let test4 = contain_zero [6;7;8;9;0] = true
let test5 = contain_zero [5;6;0;7;8]


(*リストを受け取ったら各要素の和を返す*)
(*無理に条件分岐を使用せずに、再帰関数のRECが振り出しに戻る合図として認識する*)

let rec sum list = match list with
    [] -> 0
    | first :: rest -> first + sum rest


let test1 = sum [] = 0
let test2 = sum [1;2] = 3
let test3 = sum [5;6;7] = 18

(*再帰関数練習*)

let rec length list = match list with
    [] -> 0
    | first :: rest -> length rest + 1

let test1 = length [] = 0
let test2 = length [1] = 1
let test3 = length [1;2] = 2
let test4 = length [1;2;3] = 3


(*文字列を使用した再帰関数の問題練習*)

let rec concat list = match list with
    [] -> ""
    | first :: rest -> first ^ concat rest

let test1 = concat [] = ""
let test2 = concat ["おはよう"] = "おはよう"
let test3 = concat ["おはよう、"; "花子さん"] = "おはよう、花子さん"

(*複数のレコードを一つのリストとして扱う。*)

let rec find_grade list = match list with
    [] -> 0
    | { namae = n; tensuu = t; seiseki = s; } :: rest ->
        if s = "a" then find_grade rest + 1
                   else find_grade rest

let test1 = find_grade [] = 0
let test2 = find_grade [{ namae = "asai"; tensuu = 90; seiseki = "b"}] = 0
let test3 = find_grade [{ namae = "asai"; tensuu = 90; seiseki = "c" }; { namae = "asai"; tensuu = 90; seiseki = "c"}] = 0
let test4 = find_grade [{ namae = "asai"; tensuu = 90; seiseki = "a"}] = 1
let test5 = find_grade [{ namae = "asai"; tensuu = 90; seiseki = "a"}; { namae = "asai"; tensuu = 90; seiseki = "a"}] = 2



(*再帰関数を使ったプログラミング*)


(*再帰関数のネスト*)

let rec add_to_each n list = match list with
 [] -> []
 | first :: rest ->
    ( n :: first ) :: add_to_each n rest

let test1 = add_to_each 1 [] = []
let test2 = add_to_each 1 [[2]] = [[1;2]]
let test2 = add_to_each 1 [[2];[2;3]] = [[1;2]; [1;2;3]]



(*本命の関数の作成*)
(*add_to_eachの補助関数を使用を以下のように使用する。*)

let rec prefix list = match list with
    [] -> []
    | first :: rest -> [first] :: add_to_each first (prefix rest)


let test1 = prefix [1;2;3;4;5;6] = [[1]; [1; 2]; [1; 2; 3]; [1; 2; 3; 4]; [1; 2; 3; 4; 5]; [1; 2; 3; 4; 5; 6]]


(*練習*)

let rec insert n list = match list with
  [] -> [n]
    | first :: rest -> if first > n then n :: list
                                    else first :: insert n rest

let test1 = insert 1 [] = [0]
let test2 = insert 1 [2; 3] = [1; 2; 3]
let test3 = insert 1 [2; 3] = [2; 3; 4]
let test4 = insert 1 [2; 5] = [2; 4; 5]


(*複数の整数リストを受け取ったら昇降順に並び替えて返す*)
(*補助関数のなど複数の関数を使用する場合には、戻り値や各関数やなどでやりとりを行うデータ型を意識して作成する*)

let rec insert_sort list = match list with
    [] -> []
    | first :: rest -> insert first (insert_sort rest) 



let test1 = insert_sort [] = []
let test00 = insert_sort [9;8;7] = [7;8;9]
let test2 = insert_sort [9;8;7;6] = [6;7;8;9]
let test3 = insert_sort [7;6;5;4] = [4;5;6;7]


(*リストから最小の数字だけを整数型として戻す*)
(*以下の関数にスコープ変数を施した*)

let rec minimum list = match list with
    [] -> max_int
    | first :: rest -> let mini_list = minimum rest in
        if first <= mini_list then first
                              else mini_list

let test1 = minimum [] = max_int
let test2 = minimum [1;2;3;4;5] = 1
let test3 = minimum [90;879;769;68;5;68;2] = 2


(*二つのリストを受け取ったら、結合させて返す*)

let rec append list1 list2 = match list1 with
    [] -> list2
    | first :: rest -> first :: append rest list2

let test1 = append [] [] = []
let test2 = append [1] [] = [1]
let test3 = append [] [1] = [1]
let test4 = append [1;2] [1] = [1;2;1]


(*二つのリストを受け取った昇降順に変更して一つのリストとして返す*)
(*未完成*)

let rec merge list1 list2 = match (list1,list2) with
    ([],[]) -> []
    | ([],first2 :: rest2) -> list2
    | (first1 :: rest1, []) -> list1
    | (first1 :: rest1, first2 :: rest2) -> 
        if first1 < first2 then first1 :: merge rest1 list2
                           else first2 :: merge list1 rest2

let test1 = merge [] [] = []
let test2 = merge [4;3] [] = [4;3]
let test3 = merge [] [4;3] = [4;3]
let test4 = merge [3;2] [5;4] = [2;3;4;5]




