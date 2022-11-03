(*10.7*)
(*駅名、駅間リストからの情報の取得*)
(*この単元は問題なし*)

type ekimei_t = { 
  kanji   : string; (* 駅名 *) 
  kana    : string; (* 読み *) 
  romaji  : string; (* ローマ字 *) 
  shozoku : string; (* 所属線名 *) 
} 
 
type ekikan_t = { 
  kiten  : string; (* 起点 *) 
  shuten : string; (* 終点 *) 
  keiyu  : string; (* 経由線名 *) 
  kyori  : float;  (* 距離 *) 
  jikan  : int;    (* 時間 *) 
} 

let global_ekimei_list = [ 
{kanji="代々木上原"; kana="よよぎうえはら"; romaji="yoyogiuehara"; shozoku="千代田線"}; 
{kanji="代々木公園"; kana="よよぎこうえん"; romaji="yoyogikouen"; shozoku="千代田線"}; 
{kanji="明治神宮前"; kana="めいじじんぐうまえ"; romaji="meijijinguumae"; shozoku="千代田線"}; 
{kanji="表参道"; kana="おもてさんどう"; romaji="omotesandou"; shozoku="千代田線"}; ]


let global_ekikan_list = [ 
{kiten="代々木上原"; shuten="代々木公園"; keiyu="千代田線"; kyori=1.0; jikan=2}; 
{kiten="代々木公園"; shuten="明治神宮前"; keiyu="千代田線"; kyori=1.2; jikan=2}; 
{kiten="明治神宮前"; shuten="表参道"; keiyu="千代田線"; kyori=0.9; jikan=2}; 
{kiten="表参道"; shuten="乃木坂"; keiyu="千代田線"; kyori=1.4; jikan=3}; ]



(*ローマ字の駅名と駅名リストを受け取ったらローマ字表記を漢字（文字列）吐き出す*)

let rec romaji_to_kanji romaji_ekimei list = match list with
    [] -> "存在しません。"
    | { romaji = r; kanji =k } :: rest -> 
        if romaji_ekimei = r then k
                             else romaji_to_kanji romaji_ekimei rest

let test1_global_ekimei_list = romaji_to_kanji "テスト" global_ekimei_list = "存在しません。"
let test2_glocal_ekimei_list = romaji_to_kanji "yoyogiuehara" global_ekimei_list = "代々木上原"



(*10.11*)
(*漢字の駅名２つとリストを受け取ったら距離を返す。*)

let rec get_ekikan_kyori kanji1 kanji2 list = match list with
    [] -> "入力された駅は存在していません。"
    | { kiten = k1; shuten = s; kyori = k} :: rest -> 
         if k1 = kanji1 && s = kanji2 then k1 ^ "から" ^ s ^ "まで" ^ string_of_float k ^"kmです"
                                      else if k1 = kanji2 && s = kanji1 then k1 ^ "から" ^ s ^ "まで" ^ string_of_float k ^"kmです"
                                                                        else get_ekikan_kyori kanji1 kanji2 rest

let test1_get = get_ekikan_kyori "テスト" "テスト" global_ekikan_list = "入力された駅は存在していません。"
let test2_get = get_ekikan_kyori "代々木上原" "代々木公園" global_ekikan_list = "代々木上原から代々木公園まで1.kmです"
let test2_get = get_ekikan_kyori "代々木公園" "代々木上原" global_ekikan_list = "代々木上原から代々木公園まで1.kmです"

