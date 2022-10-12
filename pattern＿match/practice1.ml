(*第7章パターンマッチと組*)
(*複数のデータの扱い方*)

(*ex*)

let add pair = match pair with
    (a,b) -> a + b

let test1 = add (1,2) = 3
let test2 = add (2,4) = 6

let adds data = match data with
    (a,b) -> a + b

let test1 = adds (10+1,1+1) = 13
let test2 = adds (10+1,10+10) = 31

(*上記の関数を複数の引数で以下のようになる*)
(*引数を複数にするのか、一つにまとめて使用するのか選択肢がある*)

let add2 a b = a + b

let test1 = add2 1 1 = 2
let test2 = add2 2 2 = 4
