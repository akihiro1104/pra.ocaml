(*第十四章、高階関数を使用したリスト処理*)
(*大量のデータを扱う関数を作り出すことが目的*)

(*リストから正の数を抜き出す*)

let rec filter_psitive list = match list with
    [] -> []
    | first :: rest -> if first > 0 then first :: filter_psitive rest
                                    else  filter_psitive rest

let test1 = filter_psitive [] = []
let test2 = filter_psitive [1;2;3] = [1;2;3]


(*３で割ってあまり１のものをpick up*)

(*３で割って、１余るか余らないかジャッジ*)
let is_mod3_1 n = n mod 3 = 1 

let rec filter_mod3_1 list = match list with
    [] -> []
    | first :: rest -> if is_mod3_1 first then first :: filter_mod3_1 rest
                                                  else filter_mod3_1 rest 

let test1 = filter_mod3_1 [] = []
let test2 = filter_mod3_1 [1;2;3]



(*リストの中から条件pを満たす要素のみを取り出す。*)

let rec filter p list = match list with
    [] -> []
    | first :: rest -> if p first then first :: filter p rest
                                  else filter p rest


(*３で割って、１余るか余らないかジャッジ*)
let filter_mod3_1 list = filter is_mod3_1 list  

(*整数かどうか？*)
let is_positive n = n > 0

(*受け取ったリストから正しい数を取り出す*)
let filter_psitive list = filter is_positive list