(*第7章パターンマッチと組*)
(*複数のデータの扱い方*)

(*ex*)

let add pair = match pair with
    (a,b) -> a + b

let test1 = add (1,2) = 3
