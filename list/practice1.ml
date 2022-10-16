(*リスト*)
(*大量のデータを扱うことが可能であり、操作することが可能である。*)
(*リスト化されたデータの扱いに関しては、基本的にはパターンマッチの方法と同じである。*)
(*どれだけのデータでリスカされていたとしても、基本的に一つ一つ処理できるようようにCODINGするように注意する。*)


(*ex.リストの要素を全て足す*)
(*再帰関数は以下のように構成。再帰をスタートさせたい部分に、適切な引数を設定し構築する*)

let rec sum list = match list with
    [] -> 0
    | first :: rest -> 1 + sum rest


let rec count_list list = match list with
    [] -> 0
    | first :: rest -> 1 + count_list rest

let rec two_function list way_1_or_2 = match list with
    [] -> 0
    | first :: rest ->
        if way_1_or_2 = 1 then sum rest
                          else if way_1_or_2 = 2 then count_list rest 
                                                 else 0
                        
let test1 = two_function [1;0] 1 = 1
let test2 = two_function [] 1 = 0
let test3 = two_function [] 2 = 0
let test4 = two_function [1;2] 2 = 1
let test5 = two_function [1;2;3] 3 = 0


(*それぞれの成績をカウント*)

(*生徒情報のデータ型*)

type gakusei_t = {
  namae: string;
  tensuu: int;
  seiseki: string;
}

let rec count_seiseki list seiseki_rank = match list with
    [] -> 0
    | {seiseki = s;} :: rest -> 
        if s = seiseki_rank then 1 + count_seiseki rest seiseki_rank
                            else count_seiseki rest seiseki_rank


let lst1 = []

let lst2 = [{namae = "山田"; tensuu = 70; seiseki = "B"}]

let lst3 = [
  {namae = "山田"; tensuu = 70; seiseki = "B"};
  {namae = "鈴木"; tensuu = 80; seiseki = "A"}
]

let lst4 = [
  {namae = "鈴木"; tensuu = 80; seiseki = "A"};
  {namae = "山田"; tensuu = 70; seiseki = "B"};
  {namae = "高橋"; tensuu = 85; seiseki = "A"}
]

let test1 = count_seiseki lst4 "A" = 2
let test2 = count_seiseki lst4 "B" = 1

