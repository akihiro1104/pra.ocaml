(*ふたつのリストを受け取ったら結合する*)
(*再帰関数の構成->関数＋引数①＋引数②*)

let rec append list1 list2 = match list1 with
    [] -> list2
    | first :: rest -> first :: append rest list2

let test1 = append [] [] = []
let test2 = append [1;2] [] = [1;2]
let test3 = append [] [1;2] = [1;2]
let test4 = append [1;2] [3;4] = [1;2;3;4]


(*ふたつのリストを受け取ったら、昇降順にして一つのリストにする*)

let rec merge list1 list2 = match (list1,list2) with
    ([],[]) -> []
    |( first1 :: rest1 , [] ) -> list1
    |( [], first2 :: rest2 ) -> list2
    |( first1 :: rest1, first2 :: rest2) ->
        if first1 < first2 then first1 :: merge rest1 list2
                           else first2 :: merge list1 rest2


let test1 = merge [] [] = []
let test2 = merge [1;2] [] = [1;2]
let test3 = merge [] [1;2] = [1;2]
let test4 = merge [1;2] [3;4] = [1;2;3;4]
let test5 = merge [3;4] [1;2] = [1;2;3;4]
