(*条件を満たす要素を取り出す関数*)

let is_mod3_1 n = n mod 3 = 1

let rec filter_positive list = match list with
    [] -> []
    | first :: rest ->
        if first > 0 then first :: filter_positive rest 
                     else filter_positive rest



                    

