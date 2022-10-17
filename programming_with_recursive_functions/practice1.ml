(*再帰関数を使用したプログラミング*)

(*関数のネスト*)
(*挿入法と呼ばれる数列アルゴリズムの実装を補関数とメイン関数の二つで行う。*)

(*補関数*)
let rec insert lst n = match lst with
  [] -> [n]
  | first :: rest -> if first > n
    then n :: lst
    else first :: (insert rest n)

let test1 = insert [] 0 = [0]
let test2 = insert [2; 3] 1 = [1; 2; 3]
let test3 = insert [2; 3] 4 = [2; 3; 4]
let test4 = insert [2; 5] 4 = [2; 4; 5]

(*メイン関数*)

let rec ins_sort list = match list with
    [] -> []
    | first :: rest -> insert (ins_sort rest) first

let test1 = ins_sort [] = []
let test2 = ins_sort [1;2;3] = [1;2;3]
let test3 = ins_sort [3;2;1] = [1;2;3]

