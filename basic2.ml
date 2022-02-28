(*以下の関数は、パーツ*)

let rec add_to_each x list = match list with 
    [] -> []
    | first :: rest -> (x :: first) :: add_to_each x rest

let test1 = add_to_each 1 [] = []
let test2 = add_to_each 1 [[1];[1]] 


(*以下がメイン関数なる*)
(*16行目のprefix_restの変数内に第一引数としてfirst1、第二引数として、prefix restを渡す。*)

let rec prefix list = match list with
 [] -> []
 | first1 :: rest -> [first1] :: add_to_each first1 (prefix rest)

 let test_1 = prefix [1;2;3]



(*整数xをリストに加えて昇順にリストを変更する*)
(*条件分岐の分岐の分岐先のデータ形式は統一が必要*)

let rec insert x list = match list with
    [] -> [x]
    | first :: rest -> if first > x then x :: first :: rest else first :: insert x rest


let test1 = insert 6 [9;7;4;5;8]


(*上記の関数がパーツとなり、以下のネストを含む関数で再帰してリストの条件内容で並び替える*)
(*昨日実装時には、各機能を細切れに作成を行う。*)

let rec ins_sort list = match list with
 [] -> []
 | first :: rest -> insert first (ins_sort rest)

 let test1 = ins_sort [9;7;4;5;8]



(*スコープ変数⇨範囲を指定し、一時的に使用する変数の作成が可能となっている。*)

let rec part list = match list with
    [] -> 0
    | first :: rest -> let x = part rest in
        if first mod 2 = 0 then x + 1 else x


let test1 = part [2;3;4;5] = 2
let test2 = part [2;4;6;8;10] = 5
let test3 = part [1;3;5;5;7;9] = 0


(*二つのリストをくっつける*)

let rec append list1 list2 = match list1 with
    [] -> list2
    | first :: rest -> first ::append rest list2

let test1 = append [] [] = []
let test2 = append [1;2] [] = [1;2]
let test3 = append [] [1;2] = [1;2]
let test4 = append [1;2] [3;4] = [1;2;3;4]



(*二つのリストをくっつけて、昇順に並び替え*)
(*引数を二つ受け取り、一つとして見なし扱う方法がまだ不十分*)

let rec merge list1 list2 = match (list1,list2) with
    ([],[]) -> []
    | ([],first2 :: rest2) -> list2
    | (first1 :: rest1, []) -> list1 
    | (first1 :: rest1, first2 :: rest2) -> 
        if first1 < first2
            then first1 :: merge rest1 list2
            else first2 :: merge list1 rest2 

let test1 = merge [] [] = []
let test2 = merge [1;2] [] = [1;2]
let test3 = merge [] [1;2] = [1;2]
let test4 = merge [3;7] [1;9] = [1;3;7;9]


(* 目的 : 2つのリストを受け取ったら、それらの長さが同じかどうかを判定する *)
(* equal_length : 'a list -> 'b list -> bool *)
let rec equal_length lst1 lst2 =
  match (lst1,lst2) with
      ([],[]) -> true
    | (_::_,[]) -> false
    | ([],_::_) -> false
    | (_::rest1,_::rest2) -> equal_length rest1 rest2

(* テスト *)
let test1 = equal_length [] [] = true
let test2 = equal_length [1] [] = false
let test3 = equal_length [] [2] = false
let test4 = equal_length [1;2] [3;4] = true
let test5 = equal_length [1;2;3] [4;5] = false
let test6 = equal_length [1;2] [3;4;5] = false
        
        



