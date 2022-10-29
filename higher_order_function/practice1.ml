(*一般化と高階関数*)
(*一般化は似てる関数を複数作ることを避ける為に、複数の引数を意図的に設定する。↓*)


let rec scholarship_count n1 n2 n3 =                   (*n1=支払い額*)
    if n1 > 16000 then (n1 - 16000) * n2              (*n2=支払い回数*)
                   else n3 / n1                        (*n3=奨学金*)


let test1 = scholarship_count 16000 240 3800000 (*利息なしの元金のみ*)
let test2 = scholarship_count 17000 240 3800000 (*+1000円の利息*)

