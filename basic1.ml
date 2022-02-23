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

(*以下のようにリストの作成が可能*)

let season = ["winter"; "summer"; "spring"; "outum"]


(*リストの情報をベースにパターンマッチ ⇨ どのようなリスト構成にも対応が必要な為、リストがからなどの条件も想定してコーディングする必要がある。*)
(*0がリスト内に含まれるか否かを、真偽で判定(再帰)*)

let rec count0 list = match list with
    [] -> false
    | first :: rest -> if first = 0 then true else count0 rest

let test_count0_1 = count0 [] = false
let test_count0_2 = count0 [1;2;3] = false
let test_count0_3 = count0 [0;1;3] = true


(*リスト内の偶数のみを取り出しリスト生成*)

let rec even list = match list with
    [] -> []
    | first :: rest -> if first mod 2 = 0 then first :: even rest else even rest


let test_even1 = even [] = []
let test_even2 = even [2;3;4] = [2;4]


(*文字をリストで受け取ったら、文字列で返す*)

let rec concat list = match list with
    [] -> ""
    | first :: rest -> first ^ concat rest


let test = concat ["秋"; "夏"; "冬"; "春"]











