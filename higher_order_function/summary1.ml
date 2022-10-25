(*リストの中から条件pを満たす要素のみを取り出す。*)
(*関数を複数作成して、引数として渡す。*)
(*構成としては、ベースの条件によってリストを抽出する関数と、条件を定める関数などふたつ以上を作成して使用する。*)
(*条件を定める関数で答えまで指定することで関数と他の関数と合わせることで擬似的にIF文を作ることができる。*)

let rec filter p list = match list with
    [] -> []
    | first :: rest -> if p first then first :: filter p rest
                                  else filter p rest


(*３で割って、１余るか余らないかジャッジ*)
let is_mod3_1 n = n mod 3 = 1 

(*整数かどうか？*)
let is_positive n = n > 0


(*以下の関数に情報を引き渡して、スタートさせる*)
let filter_psitive list = filter is_positive list

let filter_mod3_1 list = filter is_mod3_1 list 


(*3で割って、１あまるかあまらないか*)
let test1 = filter_mod3_1 [] = []
let test2 = filter_mod3_1 [1;2;3;4] = [1;4]

(*整数かどうか？*)

let test1 = filter_psitive [] = []
let test2 = filter_psitive [1;2;3;4;5] = [1;2;3;4;5]
let test3 = filter_psitive [-1;-2;-3;-4;-5] = []
let test4 = filter_psitive [1;2;-3;4;-5] = [1;2;4]
let test5 = filter_psitive [-1;-2] = []