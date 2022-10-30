(*16章 情報の蓄積*)
(*再帰のより深い理解*)
(*再帰関数において、欠落した情報などを追加の引数などを与えて補うことをアキュムレーターという*)

tyoe distance_t = {
    kyori : float; (*距離*)
    total : float; (*距離の合計*)
}

let test1 = []
let test2 = [{ kyori = 0.3; total = 0.3 };]
let test3 = [{ kyori = 0.3; total = 0.3 };{ kyori = 1.3; total = 1.6 };{ kyori = 0.3; total = 1.9 };{ kyori = 1.0; total = 2.9 };]

(*補助関数*)
(*先頭からリストの各点までの距離を合計する*)
(*ここでtota10はこれまでの距離の合計*)

let rec hojo list tota10 = match list with
    [] -> []
    | { kyori = k; total = t } : rest ->
        { kyori = k; total = . k + tota10} :: hojo rest (. k + tota10)

let rec total_distance hojo1 list tota10 = match list with
    [] -> []
    | [ kyori = k; total = t ] :: rest -> 
        { kyori = k; total = . k + tota10} :: hojo rest (. k + tota10)
in hojo list 0.0
