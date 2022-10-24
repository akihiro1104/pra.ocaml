(*新しい形の再帰*)

(*クイックソートの実装*)
(*基本的には、一つの関数に対して一つの役目を持たすことが基礎となる。*)
(*基本的には以下の構成で問題なく作動するが、改善の余地あり*)

(*nをベースとして、リストから小さい要素を取り出す*)
let rec take_less n list = match list with
    [] -> []
    | first :: rest -> if n > first then first :: take_less n rest
                                    else take_less n rest

(*nをベースとして、リストから大さい要素を取り出す*)
let rec take_greater n list = match list with
    [] -> []
    | first :: rest -> if first > n then first :: take_greater n rest
                                    else take_greater n rest


let rec quick_sort list = match list with
    [] -> []
    | first :: rest -> quick_sort (take_less first rest)
                                   @ [first]
                                   @ quick_sort (take_greater first rest)

let test1 = quick_sort [] = []
let test2 = quick_sort [1;2;3] = [1;2;3]
let test3 = quick_sort [3;2;1] = [1;2;3]
let test4 = quick_sort [9;8;3;6;5;4]