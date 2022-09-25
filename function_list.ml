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











    