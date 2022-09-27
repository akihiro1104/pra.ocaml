(*駅名情報を格納するレコード型の作成*)

type ekimei_t = {
    kanji : string; (*漢字の駅名*)
    hiragana : string ;  (*ひらがなの駅名*)
    romaji : string; (*ローマ字の駅名*)
    syozoku : string; (*駅の所属名*)
}

let hyouji data_eki = match data_eki with
    {kanji = k; hiragana = h; romaji = r; syozoku = s;} -> s ^ "," ^ k

let test1 = hyouji { kanji = "札幌"; hiragana = "さっぽろ"; romaji = "sapporo"; syozoku = "南北線"}
    

