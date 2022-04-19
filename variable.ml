(*基本的なデータとして、実数、整数、真偽などがある*)


(*変数の定義は以下の通り*)

let test = "test"


(*関数の定義も可能となっている。*)

let function_test test_n = test_n 



(*IF文の基本的な構成は以下のようになる*)
(*事前に変数を作成して、IF文の中で使用することが可能となっている*)

let if_sentence_test test = 
    if test = 10 then "test1"
                 else "test2" 



let test1 = if_sentence_test 10 = "test1"
let test2 = if_sentence_test 9 = "test2"


(*受け取った数値が１５以上、２５未満であれば、快適、それ以外は、普通を返す関数*)

let kion n = 
    if 15 < n && n <= 25 then "快適"
                         else "普通" 

let test1 = kion 10 = "普通"
let test2 = kion 16 = "快適"
let test3 = kion 28 = "普通"



(*視力を入力して各数値に対してAからDまでのランクを示す*)

let eye_power x =
    if x >= 2.0 then "AA" 
                else if x >= 1.0 then "A" 
                                 else if x >= 0.5 then "B"
                                                  else if x >= 0.1 then "C" else "D"

let test1_1 = eye_power 4.0 = "AA"
let test1_2 = eye_power 1.3 = "A"
let test1_3 = eye_power 0.8 = "B"
let test1_4 = eye_power 0.4 = "C"
let test1_5 = eye_power 0.01 = "D"



(*パターンマッチ*)
(*複数のデータを使用することができる*)


let add pair = match pair with
    (a,b) -> a + b 

(*テストコード*)

let test1 = add (10,9) = 19
let test2 = add (10,7) = 17
let test3 = add (10,90) = 100



