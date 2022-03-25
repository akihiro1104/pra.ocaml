(*新しい形の再帰*)
(*一般の再帰を行う際にはクイックソートといったものがある。*)
(*クイックソート⇨分割倒置法を使用してリストの整備を行っている。*)
(*関数一つに対して、割り振る役割や仕事などは一つにするのが正しい。*)



(*練習*)

type about_blood = {
  a_amount : int;   
  b_amount : int;
  c_amount : int;
}

(*各血液型の在庫関連するものを一般化したい。。。*)

let b_part_1 list = match list with
    [] -> ""
    | { a_amount = a; b_amount = b; c_amount = c;} :: rest -> 
        if a > 0 then "補給が可能です" 
                 else "補給が不可能です"

let b_amout_and_type1 = [{ a_amount=0; b_amount=0; c_amount=0;}]
let b_amout_and_type2 = [{ a_amount=1; b_amount=0; c_amount=0;}]


let b_part_2 list = match list with
    [] -> ""
    | { a_amount = a; b_amount = b; c_amount = c;} :: rest -> 
        if b > 0 then "補給が可能です" 
                 else "補給が不可能です"

let b_amout_and_type3 = [{ a_amount=0; b_amount=0; c_amount=0;}]
let b_amout_and_type4 = [{ a_amount=0; b_amount=1; c_amount=0;}]


let b_part_3 list = match list with
    [] -> ""
    | { a_amount = a; b_amount = b; c_amount = c;} :: rest -> 
        if c > 0 then "補給が可能です" 
                 else "補給が不可能です"
                  
let b_amout_and_type5 = [{ a_amount=0; b_amount=0; c_amount=0;}]
let b_amout_and_type6 = [{ a_amount=0; b_amount=0; c_amount=1;}]

(*各血液型の在庫状況に対応した文字列の吐き出し*)

let test1_1 = b_part_1 b_amout_and_type1 = "補給が不可能です"
let test1_2 = b_part_1 b_amout_and_type2 = "補給が可能です"
let test1_3 = b_part_2 b_amout_and_type3 = "補給が不可能です"
let test1_4 = b_part_2 b_amout_and_type4 = "補給が可能です"
let test1_5 = b_part_3 b_amout_and_type5 = "補給が不可能です"
let test1_6 = b_part_3 b_amout_and_type6 = "補給が可能です"


(*血液型の数量を受け取って、補給が可能か不可能か吐き出す。*)
(*数量に対しての反応は実装済みだが、”数量＝血液型”による紐付けと関数振り分けを目的として関数の作成が必要。*)














