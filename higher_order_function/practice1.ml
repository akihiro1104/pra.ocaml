(*一般化と高階関数*)
(*練習用ファイル↓*)

let rec sum_1 f list = match list with
    [] -> []
    | first :: rest -> f first :: sum_1 f rest

(*名前のない関数*)
(*上記の関数と合わせて名前のない関数で定めると以下のようになる*)
(*関数構成は、fun＋引数*)

(*関数なし定義*)
(*名前のない関数は関数を定めず、引数の設定だけを行い*)

(*let sum_main list = sum_1 (fun first -> first + 1) list *)

(*全ての関数定義*)
let rec f_1 first = first + 1 

(*以下の関数のネスト部分は、名前のない関数を使用せずに定めている。*)
let sum_main list = List.map f_1 list

let test1_sum = sum_main [] = []
let test2_sum = sum_main [1;2;3;4;5] = [2;3;4;5;6]
let test3_sum = sum_main [5;6;7;8;9] = [6;7;8;9;10]  



(*fold_right練習*)
(*リストの中をまとめ上げる時には、無理に上記の関数を使用する必要はないかな*)

let rec sum list = match list with
    [] -> 0
    | first :: rest -> first + sum rest

(*テストコード*)
let test1_sum = sum [1;2;3;4;5] = 15
let test2_sum = sum [] = 0







