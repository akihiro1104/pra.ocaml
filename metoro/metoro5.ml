(*map関数を使用して二つの関数まとめる*)
(*過去に定義した関数の再定義がメイン*)
(**)

type eki_t = {
  namae: string;
  saitan_kyori: float;
  temae_list: string list;
}

type ekimei_t = { 
  kanji   : string; (* 駅名 *) 
  kana    : string; (* 読み *) 
  romaji  : string; (* ローマ字 *) 
  shozoku : string; (* 所属線名 *) 
} 

let ekimei1 = {kanji="表参道"; kana="おもてさんどう"; romaji="omotesandou"; shozoku="千代田線"}
let ekimei2 = {kanji="乃木坂"; kana="のぎざか"; romaji="nogizaka"; shozoku="千代田線"}
let ekimei3 = {kanji="赤坂"; kana="あかさか"; romaji="akasaka"; shozoku="千代田線"}

let ekimei_list1 = [ekimei1]
let ekimei_list2 = [ekimei1; ekimei2]
let ekimei_list3 = [ekimei1; ekimei2; ekimei3]
let ekimei_list4 = [ekimei3]


(*map関数+リスト更新(12.2)*)

let make_eki_list list = List.map (fun {kanji = k} -> {namae =k; saitan_kyori = infinity; temae_list = [] }) list

(*テストコード*)
let test1 = make_eki_list [] = []
let test2 = make_eki_list ekimei_list1  = [
  {namae = ekimei1.kanji; saitan_kyori = infinity; temae_list = []}
]

let test3 = make_eki_list ekimei_list2 = [
  {namae = ekimei1.kanji; saitan_kyori = infinity; temae_list = []};
  {namae = ekimei2.kanji; saitan_kyori = infinity; temae_list = []}
]

let test4 = make_eki_list ekimei_list3 = [
  {namae = ekimei1.kanji; saitan_kyori = infinity; temae_list = []};
  {namae = ekimei2.kanji; saitan_kyori = infinity; temae_list = []};
  {namae = ekimei3.kanji; saitan_kyori = infinity; temae_list = []}
]

let test5 = eki_list4 = [
  {namae = "表参道"; saitan_kyori = infinity; temae_list = []};
  {namae = "乃木坂"; saitan_kyori = infinity; temae_list = []};
  {namae = "赤坂"; saitan_kyori = infinity; temae_list = []}
]

let test6 = eki_list5 = [
  {namae = ekimei1.kanji; saitan_kyori = infinity; temae_list = []};
  {namae = ekimei3.kanji; saitan_kyori = infinity; temae_list = []}
]


(*MAP関数＋shokika*)

let eki_list4 = [
  {namae = "表参道"; saitan_kyori = infinity; temae_list = []};
  {namae = "乃木坂"; saitan_kyori = infinity; temae_list = []};
  {namae = "赤坂"; saitan_kyori = infinity; temae_list = []}
]

let shokika list shiten = List.map (fun ({namae = n} as first) ->
        if n = shiten then { namae = n; saitan_kyori = 0.; temae_list = [shiten] } 
                      else first ) list

let test5 = shokika eki_list4 "表参道" = [
  {namae = "表参道"; saitan_kyori = 0.; temae_list = ["表参道"]};
  {namae = "乃木坂"; saitan_kyori = infinity; temae_list = []};
  {namae = "赤坂"; saitan_kyori = infinity; temae_list = []}
]
let test6 = shokika eki_list4 "赤坂" = [
  {namae = "表参道"; saitan_kyori = infinity; temae_list = []};
  {namae = "乃木坂"; saitan_kyori = infinity; temae_list = []};
  {namae = "赤坂"; saitan_kyori = 0.; temae_list = ["赤坂"]}
]



(*上記の二つの関数を一つに*)

let mix list shiten = 
    List.map (fun { kanji = k}) ->
        if k k = shiten 
        then {namae = shiten; saitan_kyori = 0.; temae_list = [shiten]}
        else {namae = k; saitan_kyori = infinity; temae_list = []}) list



(*koushinを名前のない関数を使用して再定義*)

(* 目的：漢字の駅名をふたつと ekikan_t list を受け取り、駅間の距離を返す *)
(* get_ekikan_kyori: string -> string -> ekikan_t list -> float *)

let rec get_ekikan_kyori eki1 eki2 lst = match lst with
  [] -> infinity
  | {kiten = ki; shuten = sh; kyori = ky} :: rest ->
    if (ki = eki1 && sh = eki2) || (ki = eki2 && sh = eki1)
      then ky
      else get_ekikan_kyori eki1 eki2 rest

(* 目的：未確定の駅のリスト v を必要に応じて更新したリストを返す *) 
(* koushin : eki_t -> eki_t list -> eki_t list *) 

let koushin p v = 
  List.map (fun q -> match (p, q) with 
	     ({namae = pn; saitan_kyori = ps; temae_list = pt}, 
	      {namae = qn; saitan_kyori = qs; temae_list = qt}) -> 
		let kyori = get_ekikan_kyori pn qn global_ekikan_list in 
		if kyori = infinity 
		then q 
		else if ps +. kyori < qs 
		then {namae = qn; saitan_kyori = ps +. kyori; 
				  temae_list = qn :: pt} 
		else q) 
	   v 



