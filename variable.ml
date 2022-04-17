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