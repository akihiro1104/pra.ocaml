(*例外と例外処理*)

(*例題*)

let yaoya_list = [("トマト", 300); ("たまねぎ", 200); ("にんじん", 150); ("ほうれん草", 200)]


(*None（値なし）とSomeの使用が基本的なオプション構成になる*)

let rec price itme yaoya_list = match yaoya_list with
    [] -> None
    | (yasai, nedan) :: rest -> 
        if itme = yasai then Some (nedan)
                        else price itme rest


(*例外処理をより詳細に*)
(*起動確認は未完了*)

let rec total_price yasai_list yaoya_list = match yasai_list with
    [] -> []
    | first :: rest ->
        match praice first yaoya_list with
            None -> total_price rest yaoya_list
            | Some (p) -> p + total_price rest yaoya_list