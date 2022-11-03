stype eki_t = {
  namae: string;
  saitan_kyori: float;
  temae_list: string list;
}

(*始点、リストをを受け取ったら最短距離を0、temae_listに始点をいれる*)
(*偽の時に、元のデータ型を返す為以下のような構成になっている。*)

let rec shokika list shiten = match list with
    [] -> []
    | ({namae = n} as first) :: rest -> 
        if n = shiten then { namae = n; saitan_kyori = 0.; temae_list = [shiten] } :: shokika rest shiten
                      else first :: shokika rest shiten

let eki_list = [
  {namae = "表参道"; saitan_kyori = infinity; temae_list = []};
  {namae = "乃木坂"; saitan_kyori = infinity; temae_list = []};
  {namae = "赤坂"; saitan_kyori = infinity; temae_list = []}
]

let test1 = shokika eki_list "表参道" = [{namae = "表参道"; saitan_kyori = 0.; temae_list = ["表参道"]};
   {namae = "乃木坂"; saitan_kyori = infinity; temae_list = []};
   {namae = "赤坂"; saitan_kyori = infinity; temae_list = []}]



(*駅名リストを受け取ったらあいうえお順で整列後に駅の重複を取り除いたeki_t型を返す。*)

type ekimei_t = { 
  kanji   : string; (* 駅名 *) 
  kana    : string; (* 読み *) 
  romaji  : string; (* ローマ字 *) 
  shozoku : string; (* 所属線名 *) 
} 

(* 駅名リストの例 *) 
 
let ekimei_list = [ 
{kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="丸ノ内線"}; 
{kanji="新大塚"; kana="しんおおつか"; romaji="shinotsuka"; shozoku="丸ノ内線"}; 
{kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸ノ内線"}; 
{kanji="後楽園"; kana="こうらくえん"; romaji="korakuen"; shozoku="丸ノ内線"}; 
{kanji="本郷三丁目"; kana="ほんごうさんちょうめ"; romaji="hongosanchome"; shozoku="丸ノ内線"}; 
{kanji="御茶ノ水"; kana="おちゃのみず"; romaji="ochanomizu"; shozoku="丸ノ内線"} 
] 


(*seiretuからデータを受け取り、あいうえお順に整列後に重複駅を取り除いたeki_tを返す。*)

let rec part eki1 list = match list with
    [] -> [eki1]
    | ({ kanji = k1; kana = ka1; romaji = r1; shozoku = s1;} as ekimei1) :: rest -> match eki1 with { kanji = k2; kana = ka2; romaji = r2; shozoku = s2;} ->
        if k1 = k2 then part eki1 rest
                   else if k1 < k2 then ekimei1 :: part eki1 rest
                                   else eki1 :: list

let test1 = part {kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸ノ内線"} []
	    = [{kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸ノ内線"}] 



(*引数を受け取り、次のpart関数にリストを渡す。*)
let rec seiretsu list = match list with
    [] -> []
    | first :: rest -> part first ( seiretsu rest )


let test3 = seiretsu [] = [] 
let test4 = seiretsu ekimei_list  