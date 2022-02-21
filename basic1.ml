(*パターンマッチ ⇨ （10,90）*)
(*パターンマッチは複数のデータや塊からデータを取り出し人るのデータとして使用する*)

let score a b c f e =
    (a+b+c+f+e),((a+b+c+f+e)/5)



let sample_data1 = score 30 40 20 10 90 = (190, 38)
let sample_data2 = score 10 10 10 10 10 = (50, 10)


let seiseki data = match data with
    (a,b) -> a^"さんの成績は"^b^"です"

let sample_data1 = seiseki ("himiko","90") = "himikoさんの成績は90です"


(*レコード ⇨ 組の中のそれぞれの値にデータ名を定義する。*)
(*レコードの形式を以下のように取り決めを行い、外部からデータの中身の作成を行う*)

type list = {
    food : string;
    time : int ;
    place : string ;
}

let data1 = {food ="apple"; time = 12; place = "japan"}

