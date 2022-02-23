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
  keiyu : string;   (* 経由する路線名 *)
  kyori : float;    (* 2駅間の距離(km) *)
  jikan : int       (* 所要時間(分) *)
}



(*特定のリストから一部の情報だけ出力を行う*)

let getinfo list = match list with
    {kanji = k; kana = ka; romaji = r; shozoku = s} -> s ^ "," ^ ka
        

let sample_data1 = getinfo { kanji = "sample"; kana = "sample1"; romaji = "sample2"; shozoku = "sample4"} = "sample4,sample1"
let sample_data2 = getinfo { kanji = "sample"; kana = "test"; romaji = "sample2"; shozoku = "test1"} = "test1,test"



