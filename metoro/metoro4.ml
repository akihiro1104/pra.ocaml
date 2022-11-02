(*13.6*)
(*確定点に隣接する点の最短距離の更新*)

type eki_t = {
  namae: string;
  saitan_kyori: float;
  temae_list: string list;
}

let rec kyori eki1 eki2 list = match list with
    [] -> infinity
    | { kiten =k; shuten = s; kyori = ky } :: rest ->
        if ( ki = sk && eki2 =  s) || ( eki1 = s && eki2 = ki) then ky
                                                               else kyori eki1 eki2 rest

let koushin p q = match ( p,q ) with
    [] -> []
    ({ namae = n1; saitan_kyori = k1; temae_list = t1 },
    { namae = n2; saitan_kyori = k2; temae_list = t2 }) ->
        if kyori = infinity then q
                            else if k1 +. kyori < k2 then { namae = n1; saitan_kyori = k1 +. kyori ; temae_list = t1 :: pl }
                            else q
                    