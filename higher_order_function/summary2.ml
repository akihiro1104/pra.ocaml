(*各要素をまとめ上げる関数*)
(*リストを受け取ったら、何かしらの条件でリストの要素を足す、引くなどを行いデータをまとめ上げる。*)
(*処理回数＝関数の設定を意識して、同じであれば積極的に高階関数処理を施す。*)

(*高階関数を頻繁に使用し、複雑化するときには元の関数などに紹介して引数なども正確に設定をする。*)


(*上記のふたつの関数の一般化*)
(*リストに要素が含まれていなかった時に何かしらの吐き出しと停止線が同じことに着目する。*)
(*List.fold_right関数の使用は似たような処理が複数ある時に行うのが適切かも？*)
(*上記の関数使用すると引数を複数（アキュムレーター）を設定する必要があり*)


(*一般化*)
let rec fold_right f list init = match list with
    [] -> init
    | first :: rest -> f first (fold_right f rest init)


(*最終関数*)
(*rest_resultは途中の計算経過のデータを格納するために、引数に０を設定して関数を動かす*)
(*以下の構成が、List.fold_right型では定型になるのかな？*)

let sum list = let add_int first rest_result = first + rest_result in
    fold_right add_int list 0

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






