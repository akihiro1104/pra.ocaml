(* 変数の定義を行う際には、どのようなデータが格納されているか一眼でわかるように作成を行う *)
(* 関数作成時には、データ型の統一を意識が必須となる。⇨ 浮動小数などの計算などは、全ての過程において同じデータ型で処理を行う*)
(* 条件分岐先での計算やデータ型など、真偽の両方でデータの統一が必須になる ⇨ 真（浮動小数） 偽（不動小数点）*)
(* 条件分岐の条件を必ず比較してそれぞれの条件の作成を行う。*)

let sample x =
    if x <= 50 then "right" else "wrong"

let test1 = sample 50 = "right"
let test2 = sample 80 = "wrong"
let test3 = sample 90 = "wrong"
let test4 = sample 100 = "wrong"

(*条件分岐をいくつかの条件に分岐する際には、必ずELSEで終了すること*)

let sample2 x =
    if x <= 30 then "適正価格"
                else if x >= 30 then "高価格" else "標準価格"

let test1 = sample2 10 = "適正価格"
let test2 = sample2 50 = "高価格"
let test3 = sample2 90 = "高価格"

let rec test list = match list with
    [] -> 0
    | first :: rest -> test rest + 1

let sample_data1 = test [] = 0
let sample_data2 = test [1; 2; 3;] = 3
let sample_data3 = test [1; 2; 3; 4] = 4
