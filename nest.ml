(*再帰関数を使ったプログラミング*)


(*リストに第一引数として受け取ったものを各リストの先頭に付ける。*)
(*リストのデータをやりとし、リストで吐き出す時は以下の様な形で関数の作成を行う。*)

let rec add_to_each n list = match list with
    [] -> []
    | first :: rest -> ( n :: first ) :: add_to_each n rest

let test1_1 = add_to_each 1 [] = []
let test1_2 = add_to_each 1 [[2]] = [[1;2]]
let test1_3 = add_to_each 1 [[1;2;3]] = [[1;1;2;3]]


(*ネスト時のデータ引き渡しは、基本的に同じタイプを想定して関数の作成が必要*)
(*複数の引数を渡すには,以下のようにパターンマッチ後にネスト先の関数に指定を行う。*)

let rec prefix list = match list with
    [] -> []
    | first :: rest -> [first] :: add_to_each first (prefix rest)


let test2_1 = prefix [5;6;7;8;9]
let test2_2 = prefix [1;2;3;4;5;6;7;8;9]


