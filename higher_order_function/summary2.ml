(*各要素をまとめ上げる関数*)
(*高階関数を頻繁に使用し、複雑化するときには元の関数などに紹介して引数なども正確に設定をする。*)



(*上記のふたつの関数の一般化*)
(*リストに要素が含まれていなかった時の挙動が同じ部分に着目*)

(*一般化*)
let rec fold_right f list init = match list with
    [] -> init
    | first :: rest -> f first (fold_right f rest init)



(*firstとrest_resultを足す*)
let add_int first rest_result = first + rest_result

(*最終関数*)
let sum list = fold_right add_int list 0

(*テストコード*)
let test1_sum = sum [1;2;3;4;5] = 15
let test2_sum = sum [] = 0


(*lenght*)

(*要素数をカウント*)
let count_lenght first rest_result = 1 + rest_result 

(*最終関数*)
let count_lenght list = fold_right count_lenght list 0

(*テストコード*)
let test1_length = count_lenght [] = 0
let test2_length = count_lenght [1;2;3] = 3


