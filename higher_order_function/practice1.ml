(*一般化と高階関数*)
(*練習用ファイル↓*)


(*数値が格納されているリストを受け取ったら、昇降順で並べる*)
(*真の時に吐き出すリスト構成の時に、再帰構成ではなく引数として与えられているリストをセットする*)

let rec part number list = match list with
    [] -> [number]
    | first :: rest -> if number <= first then number :: list
                                          else first :: part number rest

(*テストコード*)
let test1 = part 1 [] = [1]
let test2 = part 5 [2;3;4;6]
let test3 = part 3 [2;7;8;9]


(*関数のネスト時、引数構成と引数として与えるデータ構成について注意が必要*)
let rec sort list = match list with
    [] -> []
    | first :: rest -> part first (sort rest)


(*テストコード*)

let test1 = sort [6;5;4]
let test2 = sort [9;8;7;6;5;4;3;2;1]






(*二つのリストを一つにして、昇降順にならべる*)

let rec duble_sort list1 list2 = match (list1,list2) with
    ([],[]) -> []
    | ( first1 :: rest1, [] ) -> [list1]
    | ( [], first2 :: rest2 ) -> [list2]
    | ( first1 :: rest1, first2 :: rest2 ) ->
        if first1 < first2 then first1 :: duble_sort rest1 list2 
                           else first2 :: duble_sort list1 rest2

let test1 = duble_sort [3;2;1] [6;5;4]