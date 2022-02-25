(*以下の関数は、パーツ*)

let rec add_to_each x list = match list with 
    [] -> []
    | first :: rest -> (x :: first) :: add_to_each x rest

let test1 = add_to_each 1 [] = []
let test2 = add_to_each 1 [[1];[1]] 


(*以下がメイン関数なる*)
(*16行目のprefix_restを変数としてadd_to_each_firstに突っ込む。*)

let rec prefix list = match list with
 [] -> []
 | first :: rest -> [first] :: add_to_each first (prefix rest)

 let test1 = prefix [1;2;3]



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


