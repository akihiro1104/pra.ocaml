(* 駅名の情報を格納するレコード型 *)
type ekimei_t = {
  kanji : string;   (* 漢字の駅名 *)
  kana : string;    (* ひらがなの駅名 *)
  romaji : string;  (* ローマ字の駅名 *)
  shozoku : string; (* 所属する路線名 *)
}

(* 駅と駅の接続情報を格納するレコード型 *)
type ekikan_t = {
  kiten : string;   (* 起点の駅名 *)
  shuten : string;  (* 終点の駅名 *)
  keiyu : string;   (* 経由する路線名*)
  kyori : float;    (* 2駅間の距離(km)*)
  jikan : int       (* 所要時間(分) *)
}