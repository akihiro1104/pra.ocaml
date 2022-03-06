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




(*復習⇨関数のネスト（リスト使用とリスト不使用）*)


(*複数のリストが存在している時は、複数のリストを一つとして扱う*) 
(*データを取り出すときに、リストなどの情報追加を行わなずまとめるのは（）を使用する*)
(*関数をネストするときは、データ形式を全て統一が必要。リストならリストで、文字列なら文字列で統一が必要*)
(*ネスト時には、第一引数も第二引数もデータ統一が必要*)

let rec again_pra x list = match list with
    [] -> []
    | first :: rest -> ( x :: first )  :: again_pra x rest


let test1 = again_pra 1 [] = []
let test2 = again_pra 1 [[1]] = [[1;1]]
let test3 = again_pra 1 [[2];[3]] = [[1;2];[1;3]]


let rec again_main list = match list with
    [] -> []
    | first :: rest -> [first] ::  again_pra first (again_main rest)


let test1_1 = again_main [1;2;3;4] = [[1]; [1; 2]; [1; 2; 3]; [1; 2; 3; 4]]




(*整列アルゴリズム*)

let rec insert x list = match list with
    [] -> [x]
    | first :: rest -> if first > x then x :: first :: rest else first :: insert x rest

let test1_1 = insert 5 [] = [5]
let test1_2 = insert 5 [1;2;3;4] = [1;2;3;4;5]


let rec ins_sort list = match list with
    [] -> []
    | first :: rest -> insert first (ins_sort rest)


let test1_1 = ins_sort [5;6;9;8;7]


(*最小値をリストの中から取り出す。*)
(*スコープ変数の定義 ⇨ 関数が8割以上書き上がり、最低限のテストなどが終了した後にスコープ変数を定めるのがフィットしている。*)
(*パターンマッチによるスコープ変数定義も可能だが、今はスルー*)

let rec mini list = match list with
    [] -> max_int
    | first :: rest -> let x = mini rest in
         if first <= x then first else x


let test1_1 = mini [8;7;6;5;4;3;2;1;2;3;4;5;6;7;8;8;7;6;7] = 1