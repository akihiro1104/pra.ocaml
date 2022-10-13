(*レコードとは複数のデータに名前を設定して保存する手法*)

(*①データ型の設定*)

type gakusei_t = {
    namae : string;
    tensuu : int;
    seiseki : string;
}

(*演習問題8.5*)

type ekimei_t = {
    kanji_ekimei : string;
    hiragana_ekimei : string;
    romaji_ekimei : string;
    shozoku : string;
}

(*演習問題8.6*)

let hyouji list = match list with {kanji_ekimei =k ; hiragana_ekimei = h; shozoku = s}
    -> s ^ "," ^ k ^  "(" ^h ^ ")"

let test1 =
  hyouji {kanji_ekimei="茗荷谷"; hiragana_ekimei="みょうがだに"; romaji_ekimei="myogadani"; shozoku="丸ノ内線"} = "丸ノ内線,茗荷谷(みょうがだに)"
  

(*演習問題8.7*)
(* 駅と駅の接続情報を格納するレコード型 *)

type ekikan_t = {
  kiten: string; (* 起点の駅名（漢字） *)
  shuten: string; (* 終点の駅名（漢字） *)
  keiyu: string; (* 経由する路線名（漢字） *)
  kyori: float; (* 駅間の距離（km） *)
  jikan: int; (* 所要時間（分） *)
}
