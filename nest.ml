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


(*リスト内から最小値を取り出し、吐き出す*)
(*スコープ変数の実装は以下の通り*)

let rec minimum list = match list with
    [] -> max_int
    | first :: rest -> let x = minimum rest in
         if first <= x then first
                       else x

                                            
let test3_1 = minimum [] 
let test3_2 = minimum [9;8;7;6;1] = 1
let test3_3 = minimum [237;84;3;21;28;79;3;2] = 2


(*二つのリストを結合する*)

let rec append list1 list2 = match list1 with
    [] -> list2
    | first :: rest -> first :: append rest list2


let test4_1 = append [1;2;3;4;3] [6;7;8;9] = [1; 2; 3; 4; 3; 6; 7; 8; 9]