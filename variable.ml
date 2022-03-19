(*第三章 変数の定義*)

(*変数定義*)

let test1_1 = 10



(*引数の指定を関数の後に行う（x）*)

let test1_2 x = test1_1 + 50 + x


(*関数のテスト*)
let test_t_1_2 = test1_2 10 = 70


(*小数点を用いた計算*)

let float_1 = 1.5

let test_float x = float_1 *. x 

let test_1 = test_float 1.5 = 2.25




