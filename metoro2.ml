(* 駅名の情報を格納するレコード型 *)
type ekimei_t = {
  kanji : string;   (* 漢字の駅名 *)
  kana : string;    (* ひらがなの駅名 *)
  romaji : string;  (* ローマ字の駅名 *)
  shozoku : string; (* 所属する路線名 *)
}

let ekimei_list = [ 
{kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="丸ノ内線"}; 
{kanji="新大塚"; kana="しんおおつか"; romaji="shinotsuka"; shozoku="丸ノ内線"}; 
{kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸ノ内線"}; 
{kanji="後楽園"; kana="こうらくえん"; romaji="korakuen"; shozoku="丸ノ内線"}; 
{kanji="本郷三丁目"; kana="ほんごうさんちょうめ"; romaji="hongosanchome"; shozoku="丸ノ内線"}; 
{kanji="御茶ノ水"; kana="おちゃのみず"; romaji="ochanomizu"; shozoku="丸ノ内線"} 
] 


let global_ekimei_list = [ 
{kanji="代々木上原"; kana="よよぎうえはら"; romaji="yoyogiuehara"; shozoku="千代田線"}; 
{kanji="代々木公園"; kana="よよぎこうえん"; romaji="yoyogikouen"; shozoku="千代田線"}; 
{kanji="明治神宮前"; kana="めいじじんぐうまえ"; romaji="meijijinguumae"; shozoku="千代田線"}; 
{kanji="表参道"; kana="おもてさんどう"; romaji="omotesandou"; shozoku="千代田線"}; 
{kanji="乃木坂"; kana="のぎざか"; romaji="nogizaka"; shozoku="千代田線"}; 
{kanji="赤坂"; kana="あかさか"; romaji="akasaka"; shozoku="千代田線"}; 
{kanji="国会議事堂前"; kana="こっかいぎじどうまえ"; romaji="kokkaigijidoumae"; shozoku="千代田線"}; 
{kanji="霞ヶ関"; kana="かすみがせき"; romaji="kasumigaseki"; shozoku="千代田線"}; 
{kanji="日比谷"; kana="ひびや"; romaji="hibiya"; shozoku="千代田線"}; 
{kanji="二重橋前"; kana="にじゅうばしまえ"; romaji="nijuubasimae"; shozoku="千代田線"}; 
{kanji="大手町"; kana="おおてまち"; romaji="otemachi"; shozoku="千代田線"}; 
{kanji="新御茶ノ水"; kana="しんおちゃのみず"; romaji="shin-ochanomizu"; shozoku="千代田線"}; 
{kanji="湯島"; kana="ゆしま"; romaji="yushima"; shozoku="千代田線"}; 
{kanji="根津"; kana="ねづ"; romaji="nedu"; shozoku="千代田線"}; 
{kanji="千駄木"; kana="せんだぎ"; romaji="sendagi"; shozoku="千代田線"}; 
{kanji="西日暮里"; kana="にしにっぽり"; romaji="nishinippori"; shozoku="千代田線"}; 
{kanji="町屋"; kana="まちや"; romaji="machiya"; shozoku="千代田線"}; 
{kanji="北千住"; kana="きたせんじゅ"; romaji="kitasenjyu"; shozoku="千代田線"}; 
{kanji="綾瀬"; kana="あやせ"; romaji="ayase"; shozoku="千代田線"}; 
{kanji="北綾瀬"; kana="きたあやせ"; romaji="kitaayase"; shozoku="千代田線"}; 
{kanji="浅草"; kana="あさくさ"; romaji="asakusa"; shozoku="銀座線"}; 
{kanji="田原町"; kana="たわらまち"; romaji="tawaramachi"; shozoku="銀座線"}; 
{kanji="稲荷町"; kana="いなりちょう"; romaji="inaricho"; shozoku="銀座線"}; 
{kanji="上野"; kana="うえの"; romaji="ueno"; shozoku="銀座線"}; 
{kanji="上野広小路"; kana="うえのひろこうじ"; romaji="uenohirokoji"; shozoku="銀座線"}; 
{kanji="末広町"; kana="すえひろちょう"; romaji="suehirocho"; shozoku="銀座線"}; 
{kanji="神田"; kana="かんだ"; romaji="kanda"; shozoku="銀座線"}; 
{kanji="三越前"; kana="みつこしまえ"; romaji="mitsukoshimae"; shozoku="銀座線"}; 
{kanji="日本橋"; kana="にほんばし"; romaji="nihonbashi"; shozoku="銀座線"}; 
{kanji="京橋"; kana="きょうばし"; romaji="kyobashi"; shozoku="銀座線"}; 
{kanji="銀座"; kana="ぎんざ"; romaji="ginza"; shozoku="銀座線"}; 
{kanji="新橋"; kana="しんばし"; romaji="shinbashi"; shozoku="銀座線"}; 
{kanji="虎ノ門"; kana="とらのもん"; romaji="toranomon"; shozoku="銀座線"}; 
{kanji="溜池山王"; kana="ためいけさんのう"; romaji="tameikesannou"; shozoku="銀座線"}; 
{kanji="赤坂見附"; kana="あかさかみつけ"; romaji="akasakamitsuke"; shozoku="銀座線"}; 
{kanji="青山一丁目"; kana="あおやまいっちょうめ"; romaji="aoyamaicchome"; shozoku="銀座線"}; 
{kanji="外苑前"; kana="がいえんまえ"; romaji="gaienmae"; shozoku="銀座線"}; 
{kanji="表参道"; kana="おもてさんどう"; romaji="omotesando"; shozoku="銀座線"}; 
{kanji="渋谷"; kana="しぶや"; romaji="shibuya"; shozoku="銀座線"}; 
{kanji="渋谷"; kana="しぶや"; romaji="shibuya"; shozoku="半蔵門線"}; 
{kanji="表参道"; kana="おもてさんどう"; romaji="omotesandou"; shozoku="半蔵門線"}; 
{kanji="青山一丁目"; kana="あおやまいっちょうめ"; romaji="aoyama-itchome"; shozoku="半蔵門線"}; 
{kanji="永田町"; kana="ながたちょう"; romaji="nagatacho"; shozoku="半蔵門線"}; 
{kanji="半蔵門"; kana="はんぞうもん"; romaji="hanzomon"; shozoku="半蔵門線"}; 
{kanji="九段下"; kana="くだんした"; romaji="kudanshita"; shozoku="半蔵門線"}; 
{kanji="神保町"; kana="じんぼうちょう"; romaji="jinbocho"; shozoku="半蔵門線"}; 
{kanji="大手町"; kana="おおてまち"; romaji="otemachi"; shozoku="半蔵門線"}; 
{kanji="三越前"; kana="みつこしまえ"; romaji="mitsukoshimae"; shozoku="半蔵門線"}; 
{kanji="水天宮前"; kana="すいてんぐうまえ"; romaji="suitengumae"; shozoku="半蔵門線"}; 
{kanji="清澄白河"; kana="きよすみしらかわ"; romaji="kiyosumi-shirakawa"; shozoku="半蔵門線"}; 
{kanji="住吉"; kana="すみよし"; romaji="sumiyoshi"; shozoku="半蔵門線"}; 
{kanji="錦糸町"; kana="きんしちょう"; romaji="kinshicho"; shozoku="半蔵門線"}; 
{kanji="押上"; kana="おしあげ"; romaji="oshiage"; shozoku="半蔵門線"}; 
{kanji="中目黒"; kana="なかめぐろ"; romaji="nakameguro"; shozoku="日比谷線"}; 
{kanji="恵比寿"; kana="えびす"; romaji="ebisu"; shozoku="日比谷線"}; 
{kanji="広尾"; kana="ひろお"; romaji="hiro"; shozoku="日比谷線"}; 
{kanji="六本木"; kana="ろっぽんぎ"; romaji="roppongi"; shozoku="日比谷線"}; 
{kanji="神谷町"; kana="かみやちょう"; romaji="kamiyacho"; shozoku="日比谷線"}; 
{kanji="霞ヶ関"; kana="かすみがせき"; romaji="kasumigaseki"; shozoku="日比谷線"}; 
{kanji="日比谷"; kana="ひびや"; romaji="hibiya"; shozoku="日比谷線"}; 
{kanji="銀座"; kana="ぎんざ"; romaji="ginza"; shozoku="日比谷線"}; 
{kanji="東銀座"; kana="ひがしぎんざ"; romaji="higashiginza"; shozoku="日比谷線"}; 
{kanji="築地"; kana="つきじ"; romaji="tsukiji"; shozoku="日比谷線"}; 
{kanji="八丁堀"; kana="はっちょうぼり"; romaji="hacchobori"; shozoku="日比谷線"}; 
{kanji="茅場町"; kana="かやばちょう"; romaji="kayabacho"; shozoku="日比谷線"}; 
{kanji="人形町"; kana="にんぎょうちょう"; romaji="ningyomachi"; shozoku="日比谷線"}; 
{kanji="小伝馬町"; kana="こでんまちょう"; romaji="kodemmacho"; shozoku="日比谷線"}; 
{kanji="秋葉原"; kana="あきはばら"; romaji="akihabara"; shozoku="日比谷線"}; 
{kanji="仲御徒町"; kana="なかおかちまち"; romaji="nakaokachimachi"; shozoku="日比谷線"}; 
{kanji="上野"; kana="うえの"; romaji="ueno"; shozoku="日比谷線"}; 
{kanji="入谷"; kana="いりや"; romaji="iriya"; shozoku="日比谷線"}; 
{kanji="三ノ輪"; kana="みのわ"; romaji="minowa"; shozoku="日比谷線"}; 
{kanji="南千住"; kana="みなみせんじゅ"; romaji="minamisenju"; shozoku="日比谷線"}; 
{kanji="北千住"; kana="きたせんじゅ"; romaji="kitasenju"; shozoku="日比谷線"}; 
{kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="丸ノ内線"}; 
{kanji="新大塚"; kana="しんおおつか"; romaji="shinotsuka"; shozoku="丸ノ内線"}; 
{kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸ノ内線"}; 
{kanji="後楽園"; kana="こうらくえん"; romaji="korakuen"; shozoku="丸ノ内線"}; 
{kanji="本郷三丁目"; kana="ほんごうさんちょうめ"; romaji="hongosanchome"; shozoku="丸ノ内線"}; 
{kanji="御茶ノ水"; kana="おちゃのみず"; romaji="ochanomizu"; shozoku="丸ノ内線"}; 
{kanji="淡路町"; kana="あわじちょう"; romaji="awajicho"; shozoku="丸ノ内線"}; 
{kanji="大手町"; kana="おおてまち"; romaji="otemachi"; shozoku="丸ノ内線"}; 
{kanji="東京"; kana="とうきょう"; romaji="tokyo"; shozoku="丸ノ内線"}; 
{kanji="銀座"; kana="ぎんざ"; romaji="ginza"; shozoku="丸ノ内線"}; 
{kanji="霞ヶ関"; kana="かすみがせき"; romaji="kasumigaseki"; shozoku="丸ノ内線"}; 
{kanji="国会議事堂前"; kana="こっかいぎじどうまえ"; romaji="kokkaigijidomae"; shozoku="丸ノ内線"}; 
{kanji="赤坂見附"; kana="あかさかみつけ"; romaji="akasakamitsuke"; shozoku="丸ノ内線"}; 
{kanji="四ツ谷"; kana="よつや"; romaji="yotsuya"; shozoku="丸ノ内線"}; 
{kanji="四谷三丁目"; kana="よつやさんちょうめ"; romaji="yotsuyasanchome"; shozoku="丸ノ内線"}; 
{kanji="新宿御苑前"; kana="しんじゅくぎょえんまえ"; romaji="shinjuku-gyoemmae"; shozoku="丸ノ内線"}; 
{kanji="新宿三丁目"; kana="しんじゅくさんちょうめ"; romaji="shinjuku-sanchome"; shozoku="丸ノ内線"}; 
{kanji="新宿"; kana="しんじゅく"; romaji="shinjuku"; shozoku="丸ノ内線"}; 
{kanji="西新宿"; kana="にししんじゅく"; romaji="nishi-shinjuku"; shozoku="丸ノ内線"}; 
{kanji="中野坂上"; kana="なかのさかうえ"; romaji="nakano-sakaue"; shozoku="丸ノ内線"}; 
{kanji="新中野"; kana="しんなかの"; romaji="shin-nakano"; shozoku="丸ノ内線"}; 
{kanji="東高円寺"; kana="ひがしこうえんじ"; romaji="higashi-koenji"; shozoku="丸ノ内線"}; 
{kanji="新高円寺"; kana="しんこうえんじ"; romaji="shin-koenji"; shozoku="丸ノ内線"}; 
{kanji="南阿佐ヶ谷"; kana="みなみあさがや"; romaji="minami-asagaya"; shozoku="丸ノ内線"}; 
{kanji="荻窪"; kana="おぎくぼ"; romaji="ogikubo"; shozoku="丸ノ内線"}; 
{kanji="中野新橋"; kana="なかのしんばし"; romaji="nakano-shimbashi"; shozoku="丸ノ内線"}; 
{kanji="中野富士見町"; kana="なかのふじみちょう"; romaji="nakano-fujimicho"; shozoku="丸ノ内線"}; 
{kanji="方南町"; kana="ほうなんちょう"; romaji="honancho"; shozoku="丸ノ内線"}; 
{kanji="四ツ谷"; kana="よつや"; romaji="yotsuya"; shozoku="南北線"}; 
{kanji="永田町"; kana="ながたちょう"; romaji="nagatacho"; shozoku="南北線"}; 
{kanji="溜池山王"; kana="ためいけさんのう"; romaji="tameikesanno"; shozoku="南北線"}; 
{kanji="六本木一丁目"; kana="ろっぽんぎいっちょうめ"; romaji="roppongiitchome"; shozoku="南北線"}; 
{kanji="麻布十番"; kana="あざぶじゅうばん"; romaji="azabujuban"; shozoku="南北線"}; 
{kanji="白金高輪"; kana="しろかねたかなわ"; romaji="shirokanetakanawa"; shozoku="南北線"}; 
{kanji="白金台"; kana="しろかねだい"; romaji="shirokanedai"; shozoku="南北線"}; 
{kanji="目黒"; kana="めぐろ"; romaji="meguro"; shozoku="南北線"}; 
{kanji="市ヶ谷"; kana="いちがや"; romaji="ichigaya"; shozoku="南北線"}; 
{kanji="飯田橋"; kana="いいだばし"; romaji="idabashi"; shozoku="南北線"}; 
{kanji="後楽園"; kana="こうらくえん"; romaji="korakuen"; shozoku="南北線"}; 
{kanji="東大前"; kana="とうだいまえ"; romaji="todaimae"; shozoku="南北線"}; 
{kanji="本駒込"; kana="ほんこまごめ"; romaji="honkomagome"; shozoku="南北線"}; 
{kanji="駒込"; kana="こまごめ"; romaji="komagome"; shozoku="南北線"}; 
{kanji="西ヶ原"; kana="にしがはら"; romaji="nishigahara"; shozoku="南北線"}; 
{kanji="王子"; kana="おうじ"; romaji="oji"; shozoku="南北線"}; 
{kanji="王子神谷"; kana="おうじかみや"; romaji="ojikamiya"; shozoku="南北線"}; 
{kanji="志茂"; kana="しも"; romaji="shimo"; shozoku="南北線"}; 
{kanji="赤羽岩淵"; kana="あかばねいわぶち"; romaji="akabaneiwabuchi"; shozoku="南北線"}; 
{kanji="西船橋"; kana="にしふなばし"; romaji="nishi-funabashi"; shozoku="東西線"}; 
{kanji="原木中山"; kana="ばらきなかやま"; romaji="baraki-nakayama"; shozoku="東西線"}; 
{kanji="妙典"; kana="みょうでん"; romaji="myoden"; shozoku="東西線"}; 
{kanji="行徳"; kana="ぎょうとく"; romaji="gyotoku"; shozoku="東西線"}; 
{kanji="南行徳"; kana="みなみぎょうとく"; romaji="minami-gyotoku"; shozoku="東西線"}; 
{kanji="浦安"; kana="うらやす"; romaji="urayasu"; shozoku="東西線"}; 
{kanji="葛西"; kana="かさい"; romaji="kasai"; shozoku="東西線"}; 
{kanji="西葛西"; kana="にしかさい"; romaji="nishi-kasai"; shozoku="東西線"}; 
{kanji="南砂町"; kana="みなみすなまち"; romaji="minami-sunamachi"; shozoku="東西線"}; 
{kanji="東陽町"; kana="とうようちょう"; romaji="touyoucho"; shozoku="東西線"}; 
{kanji="木場"; kana="きば"; romaji="kiba"; shozoku="東西線"}; 
{kanji="門前仲町"; kana="もんぜんなかちょう"; romaji="monzen-nakacho"; shozoku="東西線"}; 
{kanji="茅場町"; kana="かやばちょう"; romaji="kayabacho"; shozoku="東西線"}; 
{kanji="日本橋"; kana="にほんばし"; romaji="nihonbashi"; shozoku="東西線"}; 
{kanji="大手町"; kana="おおてまち"; romaji="otemachi"; shozoku="東西線"}; 
{kanji="竹橋"; kana="たけばし"; romaji="takebashi"; shozoku="東西線"}; 
{kanji="九段下"; kana="くだんした"; romaji="kudanshita"; shozoku="東西線"}; 
{kanji="飯田橋"; kana="いいだばし"; romaji="iidabashi"; shozoku="東西線"}; 
{kanji="神楽坂"; kana="かぐらざか"; romaji="kagurazaka"; shozoku="東西線"}; 
{kanji="早稲田"; kana="わせだ"; romaji="waseda"; shozoku="東西線"}; 
{kanji="高田馬場"; kana="たかだのばば"; romaji="takadanobaba"; shozoku="東西線"}; 
{kanji="落合"; kana="おちあい"; romaji="ochiai"; shozoku="東西線"}; 
{kanji="中野"; kana="なかの"; romaji="nakano"; shozoku="東西線"}; 
{romaji="shinkiba"; kana="しんきば"; kanji="新木場"; shozoku="有楽町線"}; 
{romaji="tatsumi"; kana="たつみ"; kanji="辰巳"; shozoku="有楽町線"}; 
{romaji="toyosu"; kana="とよす"; kanji="豊洲"; shozoku="有楽町線"}; 
{romaji="tsukishima"; kana="つきしま"; kanji="月島"; shozoku="有楽町線"}; 
{romaji="shintomityou"; kana="しんとみちょう"; kanji="新富町"; shozoku="有楽町線"}; 
{romaji="ginzaittyoume"; kana="ぎんざいっちょうめ"; kanji="銀座一丁目"; shozoku="有楽町線"}; 
{romaji="yuurakutyou"; kana="ゆうらくちょう"; kanji="有楽町"; shozoku="有楽町線"}; 
{romaji="sakuradamon"; kana="さくらだもん"; kanji="桜田門"; shozoku="有楽町線"}; 
{romaji="nagatacho"; kana="ながたちょう"; kanji="永田町"; shozoku="有楽町線"}; 
{romaji="koujimachi"; kana="こうじまち"; kanji="麹町"; shozoku="有楽町線"}; 
{romaji="ichigaya"; kana="いちがや"; kanji="市ヶ谷"; shozoku="有楽町線"}; 
{romaji="iidabashi"; kana="いいだばし"; kanji="飯田橋"; shozoku="有楽町線"}; 
{kanji="江戸川橋"; kana="えどがわばし"; romaji="edogawabasi"; shozoku="有楽町線"}; 
{kanji="護国寺"; kana="ごこくじ"; romaji="gokokuji"; shozoku="有楽町線"}; 
{kanji="東池袋"; kana="ひがしいけぶくろ"; romaji="higasiikebukuro"; shozoku="有楽町線"}; 
{kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="有楽町線"}; 
{kanji="要町"; kana="かなめちょう"; romaji="kanametyou"; shozoku="有楽町線"}; 
{kanji="千川"; kana="せんかわ"; romaji="senkawa"; shozoku="有楽町線"}; 
{kanji="小竹向原"; kana="こたけむかいはら"; romaji="kotakemukaihara"; shozoku="有楽町線"}; 
{kanji="氷川台"; kana="ひかわだい"; romaji="hikawadai"; shozoku="有楽町線"}; 
{kanji="平和台"; kana="へいわだい"; romaji="heiwadai"; shozoku="有楽町線"}; 
{kanji="営団赤塚"; kana="えいだんあかつか"; romaji="eidanakakuka"; shozoku="有楽町線"}; 
{kanji="営団成増"; kana="えいだんなります"; romaji="eidannarimasu"; shozoku="有楽町線"}; 
{kanji="和光市"; kana="わこうし"; romaji="wakousi"; shozoku="有楽町線"}; 
] 





(*12.4 ダイクストラアルゴリズム*)

type eki_t = {
  namae : string;
  saitan_kyori : float;
  temae_list : string list
}


let make_eki_list {kanji=c; kana=k; romaji=r; shozoku=s} = {namae=c; saitan_kyori=infinity; temae_list=[]}


let shokika {namae=n; saitan_kyori=s; temae_list=t} kiten = 
    if n = kiten then {namae=n; saitan_kyori=0.0; temae_list=[kiten]}
                 else {namae=n; saitan_kyori=infinity; temae_list=[]}

(* テスト *)
let test1 = shokika {namae="代々木上原"; saitan_kyori=infinity; temae_list=[]} "代々木上原"
          = {namae="代々木上原"; saitan_kyori=0.0; temae_list=["代々木上原"]}
let test2 = shokika {namae="代々木公園"; saitan_kyori=infinity; temae_list=[]} "代々木上原"
          = {namae="代々木公園"; saitan_kyori=infinity; temae_list=[]}
let test3 = shokika {namae="明治神宮前"; saitan_kyori=infinity; temae_list=[]} "代々木上原"
          = {namae="明治神宮前"; saitan_kyori=infinity; temae_list=[]}


(*駅名の重複の除法*)
(*以下の関数がもう少し簡単になったもののデータが欲しい*)

let seiretsu lst = 
  let rec insert lst ({kanji=c;kana=k;romaji=r;shozoku=s} as eki) = match lst with
      [] -> [eki]
    | ({kanji=c1;kana=k1;romaji=r1;shozoku=s1} as eki1)::rest -> 

        if k1 > k then eki :: lst else eki1 :: insert rest eki
  in let rec eki_sort lst = match lst with
      [] -> []
    | first :: rest -> insert (eki_sort rest) first

  in let sorted_lst = eki_sort lst

  in let rec reduce lst = match lst with
      [] -> []
    | [x] -> [x]
    | ({kanji=c1;kana=k1;romaji=r1;shozoku=s1} as eki1)::({kanji=c2;kana=k2;romaji=r2;shozoku=s2} as eki2)::rest ->
        if k1 = k2 then reduce (eki2 :: rest) else eki1 :: reduce (eki2 :: rest)
  in reduce sorted_lst





(* テスト *)
let lst1 = []
let lst2 = [{kanji="代々木上原"; kana="よよぎうえはら"; romaji="yoyogiuehara"; shozoku="千代田線"}]
let lst3 = [{kanji="代々木上原"; kana="よよぎうえはら"; romaji="yoyogiuehara"; shozoku="千代田線"}; 
            {kanji="代々木公園"; kana="よよぎこうえん"; romaji="yoyogikouen"; shozoku="千代田線"}; 
            {kanji="明治神宮前"; kana="めいじじんぐうまえ"; romaji="meijijinguumae"; shozoku="千代田線"};
            {kanji="明治神宮前"; kana="めいじじんぐうまえ"; romaji="meijijinguumae"; shozoku="千代田線"}]

let test1 = seiretsu lst1 = []
let test2 = seiretsu lst2 = [{kanji="代々木上原"; kana="よよぎうえはら"; romaji="yoyogiuehara"; shozoku="千代田線"}]
let test3 = seiretsu lst3 = [{kanji="明治神宮前"; kana="めいじじんぐうまえ"; romaji="meijijinguumae"; shozoku="千代田線"};
                             {kanji="代々木上原"; kana="よよぎうえはら"; romaji="yoyogiuehara"; shozoku="千代田線"}; 
                             {kanji="代々木公園"; kana="よよぎこうえん"; romaji="yoyogikouen"; shozoku="千代田線"}]




