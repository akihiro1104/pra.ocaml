(*新しい形の再帰*)
(*一般の再帰を行う際にはクイックソートといったものがある。*)
(*クイックソート⇨分割倒置法を使用してリストの整備を行っている。*)

(*関数一つに対して、割り振る役割や仕事などは一つにするのが正しい。*)

let take_less n list = []

let take_greater n list = [] 



let rec quick_sort list = []
    [] -> []  (*自明に答えが出るケースの条件*)
    | first :: rest -> quick_sort (take_less first rest)
                    @ [first]
                    @ quick_sort(take_greater first rest)

let test1_1 = quick_sort [] =[]
let test1_2 = quick_sort [1] = [1]
let test1_3 = quick_sort [2;1] = [1;2]
let test1_4 = quick_sort [5;4;8;9;2;3] 