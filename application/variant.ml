(*再帰的なデータ構造*)
(*バリアント型*)
(*上記のデータ型は、データが一極化している時などの使用が妥当？*)


(*データ型である"木"*)
(*空の木、葉、節の三つで構成される*)

(*問題なくテストをpass*)
type tree_t =
    Empty (*空の木*)
    | Leaf of int (*空の木*)
    | Node of tree_t * int * tree_t (*節*)

(*データ詳細*)
(*ターミナルでデータ構成について確認が可能*)
(*木構造のデータを自己参照してデータ構造を拡大することができる*)

let tree1 = Empty
let tree2 = Leaf (3)
let tree3 = Node (tree1, 4, tree2)
let tree4 = Node (tree2, 5, tree3)
let tree5 = Node (tree3, 6, tree4)
let tree6 = Node (tree4, 7, tree5)
let tree7 = Node (tree1, 8, tree6)


let rec sum_tree tree = match tree with
    Empty -> 0
    | Leaf (n) -> n
    | Node (left,n,right) -> n + (sum_tree left) + (sum_tree right)

(*テストコード*)

let test1 = sum_tree tree1 = 0
let test2 = sum_tree tree2 = 3
let test3 = sum_tree tree3 = 7
let test4 = sum_tree tree4 = 15
let test5 = sum_tree tree5 = 28
let test6 = sum_tree tree6 = 50
let test7 = sum_tree tree7 = 58


(*二分探索木用のデータ型*)

let tree1 = Empty
let tree2 = Leaf (3)
let tree3 = Leaf (2)
let tree3 = Node (tree2, 4, tree3)



(*二分探索木*)(*二分探索の使用メリット、使用場面が想像できていない。*)
(*左側が小さい、右側が大きい値が格納されている規則性がある。(親要素をベースとして考える)*)

let rec search data = match data with
    empty -> false 
    | Leaf (n) -> data = n
    | Node (left,n,right) -> if data < n then true 
                                         else if data < n then search left data 
                                         else else search right data

