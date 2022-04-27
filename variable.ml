(*基本的なデータとして、実数、整数、真偽などがある*)


(*変数の定義は以下の通り*)

let test = "test"


(*関数の定義も可能となっている。*)

let function_test test_n = test_n 



(*IF文の基本的な構成は以下のようになる*)
(*事前に変数を作成して、IF文の中で使用することが可能となっている*)

let if_sentence_test test = 
    if test = 10 then "test1"
                 else "test2" 



let test1 = if_sentence_test 10 = "test1"
let test2 = if_sentence_test 9 = "test2"


(*受け取った数値が１５以上、２５未満であれば、快適、それ以外は、普通を返す関数*)

let kion n = 
    if 15 < n && n <= 25 then "快適"
                         else "普通" 

let test1 = kion 10 = "普通"
let test2 = kion 16 = "快適"
let test3 = kion 28 = "普通"



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



(*パターンマッチ*)
(*複数のデータを使用することができる*)


let add pair = match pair with
    (a,b) -> a + b 

(*テストコード*)

let test1 = add (10,9) = 19
let test2 = add (10,7) = 17
let test3 = add (10,90) = 100



(*レコード*)
(*以下のように、データ型の構成が可能となっている。*)
(*駅名と駅間などの練習問題に関してはクローン予定*)

type gakusei_t ={
    namae : string; (*名前*)
    tensuu : int ; (*点数*)
    seiseki : string; (*成績*)
}

(*データ構成を上記のように確定したら以下のように自分で指定して同じデータ構造で生成できる*)

let test1 =  { namae = "aki"; tensuu = 90; seiseki = ""}
let test2 =  { namae = "kimiko"; tensuu = 78; seiseki = ""}
let test3 =  { namae = "takumi"; tensuu = 69; seiseki = ""}


(*リスト処理について*) 
(*リスト処理もパターンマッチのように個別に扱うことができる*)
(*リストないの全ての処理などを行う際には再帰関数が用いられる*)
(*複数のデータを受け取って、一つ一つのデータを個別でカウントなどを処理なども可能*)
(*メトロ問題あり*)

let rec contain_zero list = match list with
    [] -> false
    | first :: rest -> if first = 0 then true
                                    else contain_zero rest

 let test1 = contain_zero [1;2;3;4;0;98] = true                       
 let test2 = contain_zero [1;2;3;4;5] = false

(*再帰関数を使用したプログラミング*)

(*練習問題*)
let rec part n list = match list with
    [] -> []
    | first :: rest -> ( n :: first) :: part n rest 

let test1 = part 1 [[2]]   
let test2 = part 1 [[1];[2]]

let rec main_part list = match list with
    [] -> []
    | first :: rest -> [first] :: part first (main_part rest)


let test1_1 = main_part [1;2;3;4;5]
let test1_2 = main_part [1;2;4;3]



(*整列アルゴリズム（挿入法）の作成*)

(*以下の関数は、パーツとなっている。*)
let rec insert n list = match list with
     [] -> [n]
     | first :: rest -> if first > n then n :: first :: rest
                                     else first :: insert n rest


                                    
let test1_1 = insert 2 [1;3;4]
let test1_2 = insert 3 [5]




(*整列アルゴリズムのメインパートとなり、ネストしている。*)

let rec main_insert list = match list with
    [] -> []
    | first :: rest -> insert first ( main_insert rest)


let test2_1 = main_insert [9;8;7;6;3]
let test2_2 = main_insert [1;9;2;8;3;7;4;8;5;6]



(*リストの中の最小値を求める。*)
(*局所変数定義化*)

let rec minimum list = match list with
    [] -> max_int
    | first :: rest -> let mini_rest = minimum rest in 
        if first < mini_rest then first
                             else mini_rest


(*minimum関数のテストコード*)

let test3_1 = minimum []
let test3_2 = minimum [1;2]
let test3_3 = minimum [3;2;1]
let test3_4 = minimum [7;9;8;7;6]


(*二つのリストを結合する関数*)

let rec append list1 list2 = match list1 with
    [] -> list2
    | first :: rest -> first :: append rest list2

let test4_1 = append [] [] = []
let test4_2 = append [1;2] [] = [1;2]
let test4_3 = append [] [1;2] = [1;2]
let test4_4 = append [1;2] [3;4] = [1;2;3;4]

(*ふたつのリストを昇降順で並び替え*)
(*一部昇降順にならないので学び直しが必要*)

let rec merge list1 list2 = match (list1,list2) with
    ([],[]) -> []
    | ([],first2 :: rest2) -> list2
    | (first1 :: rest1 ,[]) -> list1
    | ( first1 :: rest1 , first2 :: rest2 ) ->
        if first1 < first2 
             then first1 :: merge rest1 list2
             else first2 :: merge list1 rest2


let test1 = merge [] [] = []
let test2 = merge [1;2] [] = [1;2]
let test3 = merge [] [1;2] = [1;2]
let test4 = merge [1;2] [3;4] = [1;2;3;4]
let test5 = merge [3;2] [1;4] 
