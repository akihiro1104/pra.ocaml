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