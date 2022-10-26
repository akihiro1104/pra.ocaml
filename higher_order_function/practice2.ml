(*各高階関数は各summaryに要約*)

(*関数の局所関数定義*)
(*再学習が必要*)
(*基本的には、変数の局所定義と同じ*)

(*例*)

let rec sum_1 f list = match list with
    [] -> []
    | first :: rest -> f first :: sum_1 f rest




(*名前のない関数*)
(*上記の関数と合わせて名前のない関数で定めると以下のようになる*)
(*関数構成は、fun＋引数*)

let sum_main list = sum_1 (fun first -> first + 1) list

let test1_sum = sum_main [] = []
let test2_sum = sum_main [1;2;3;4;5] = [2;3;4;5;6]
let test3_sum = sum_main [5;6;7;8;9] = [6;7;8;9;10]


        
