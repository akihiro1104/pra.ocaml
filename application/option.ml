(*例外と例外処理*)

(*例題*)

let yaoya_list = [("トマト", 300); ("たまねぎ", 200); ("にんじん", 150); ("ほうれん草", 200)]



(*None（値なし）とSomeの使用が基本的なオプション構成になる*)
(*起動確認済み*)
(*引数として"トマト"を与えた時には、３００を返す*)
(*引数として、"いも"(リストに存在しないデータ)を与えた時には、noneを返す。*)

let rec price itme yaoya_list = match yaoya_list with
    [] -> None
    | (yasai, nedan) :: rest -> 
        if itme = yasai then Some (nedan)
                        else price itme rest


(*例外処理をより詳細に*)
(*例外に分岐時（none）の時の処理は以下のように設定する。*)

ket rec total_price yasai_list yaoya_list yaoya_list = match yasai_list with
    [] -> 0
    | first :: rest ->
        match price first yasai_list with
            None -> total_price rest yaoya_list
            | Some(p) -> p + total_price rest yaoya_list



