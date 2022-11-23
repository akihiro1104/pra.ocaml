(*再帰的なデータ構造*)
(*バリアント型*)
(*上記のデータ型は、データが一極化している時などの使用が妥当？*)


(*空リストなどの想定を含めないため、警告文の吐き出しが行われている。*)

let team_stiring team = match team with
    red -> "紅組"
    | white -> "白組"

let to_seireki : nengou = match nengou with
    Meiji (n) -> n + 1867
    | Taisho (n) -> n + 1900
    | Showa (n) -> n + 1925
    | Heisei (n) -> n + 1988

