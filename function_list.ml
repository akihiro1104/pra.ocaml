(*高階関数を使用したリスト処理*)


let rec filter_positive lst = match lst with
    [] -> []
    | first :: rest ->
        if first > 0 then first :: filter_positive rest
                     else filter_positive rest


    