(*リストの内の全ての要素に同じ処理を施す。(MAP)*)

(*各要素の平方根を返す。*)

let rec map_sqrt list = match list with
    [] -> []
    | first :: rest -> sqrt first :: map_sqrt rest

let test1_map_sqrt = map_sqrt [] = []
let test1_map_sqrt = map_sqrt [1.0;2.0;3.0] 

(*MAP関数*)
(*Fが関数渡す引数になっている。*)

let rec map f list = match list with
    [] -> []
    | first :: rest -> f first :: map f rest

let test1_map = map map_sqrt [] = []
let test2_map = map map_sqrt [[25.0;16.0;49.0]] = [[5.;4.;7.]]