(*最短距離最小の点の分離、15.6*)

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
let rec minimam list = match list with
    [] -> { namae = ""; saitan_kyori = infinity; temae_list = []}
    | ({ saitan_kyori = sa1 } as first) :: rest -> match minimam rest with ({ saitan_kyori = sa2 } as v) ->
         if sa1 < sa2 then first 
                    else v

let test1 = minimam list = eki3





    
