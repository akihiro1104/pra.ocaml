(*最短距離最小の点の分離、15.6*)
(*まったくわからん*)

type eki_t = {
  namae: string;
  saitan_kyori: float;
  temae_list: string list;
}

let eki1 = {namae="池袋"; saitan_kyori = infinity; temae_list = []} 
let eki2 = {namae="新大塚"; saitan_kyori = 1.2; temae_list = ["新大塚"; "茗荷谷"]} 
let eki3 = {namae="茗荷谷"; saitan_kyori = 0.; temae_list = ["茗荷谷"]} 
let eki4 = {namae="後楽園"; saitan_kyori = infinity; temae_list = []} 

(* 駅リストの例 *) 
let list = [eki1; eki2; eki3; eki4] 



(*最小点を未確定集合から取り出し*)
(*リストの更新*)
(*二つの処理を行う。*)

let rec saitan_wo_bunri list = match list with
    [] -> ({namae = ""; saitan_kyori = infinity; temae_list = []}, [])           (*最終的に吐き出しさせたいデータ形式の確定*)
    | first :: rest -> let (p,v) = saitan_wo_bunri rest in match (first,p) with 
        ({namae = fn; saitan_kyori = fs; temae_list = ft}, 
	    {namae = sn; saitan_kyori = ss; temae_list = st}) -> 
            if sn = "" then (first,v)
                       else if fs < ss then (first,p::v)
                                       else (p,first::v)







(* 駅の例 *) 
let eki1 = {namae="池袋"; saitan_kyori = infinity; temae_list = []} 
let eki2 = {namae="新大塚"; saitan_kyori = 1.2; temae_list = ["新大塚"; "茗荷谷"]} 
let eki3 = {namae="茗荷谷"; saitan_kyori = 0.; temae_list = ["茗荷谷"]} 
let eki4 = {namae="後楽園"; saitan_kyori = infinity; temae_list = []} 
 
(* 駅リストの例 *) 
let lst1 = [eki1; eki2; eki3; eki4] 
 
(* テスト *) 
let test1 = saitan_wo_bunri lst1 = (eki3, [eki1; eki2; eki4]) 
let test2 = saitan_wo_bunri lst1








    
