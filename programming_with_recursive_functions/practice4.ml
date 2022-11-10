(* 人に関する情報を格納するレコード *)
type person_t = {
  name : string; (* 名前 *)
  shincho : float; (* 身長 *)
  taiju : float; (* 体重 *)
  tsuki : int; (* 誕生月 *)
  hi : int; (* 誕生日 *) 
  ketsueki : string;	(* 血液型 *)
}

let person1 = {
  name = "浅井";
  shincho = 1.72;
  taiju = 58.5;
  tsuki = 9;
  hi = 17;
  ketsueki = "A"
}

let person2 = {
  name = "宮原";
  shincho = 1.63;
  taiju = 55.0;
  tsuki = 6;
  hi = 30;
  ketsueki = "B"
}

let person3 = {
  name = "中村";
  shincho = 1.68;
  taiju = 63.0;
  tsuki = 6;
  hi = 6;
  ketsueki = "ab"
}

let lst1 = [person1]
let lst2 = [person1; person2]
let lst3 = [person2; person2; person3]


(*一番重い体重のレコードを返す*)
(*返したいデータ型や形を明確にイメージする必要がある。*)

let rec person_info list = match list with
  [] -> {name : string ="";  shincho = 0.0; taiju = 0.0; tsuki=1; hi = 1; ketsueki = ""; }
  | ({taiju=t1} as first) :: rest1 -> match person_info rest1 with {taiju=t2} ->
   if t1 < t2 then person_info rest1
              else first

let test1_person = person_info lst3 



(* 目的：受け取った person_t list のなかに各血液型の人が何人いるかを組みにして返す *)
(* ketsueki_shukei: person_t list -> int * int * int * int *)

let rec ketsueki_shukei list = match list with
    [] -> (0, 0, 0, 0)
    | { name = n; shincho = f; taiju = t; tsuki = ts; hi = h; ketsueki = k} :: rest -> match ketsueki_shukei rest with
        (a, b, c, ab) -> if k = "A" then (a+1, b, c, ab)
                                    else if k = "B" then (a, b+1, c, ab)
                                                    else if k = "C" then (a, b, c+1, ab)
                                                                    else (a, b, c, ab+1)




let test1 = ketsueki_shukei [] = (0, 0, 0, 0)
let test2 = ketsueki_shukei lst1 = (1, 0, 0, 0)
let test3 = ketsueki_shukei lst2 = (1, 1, 0, 0)
let test4 = ketsueki_shukei lst3 = (0,2,0,1)


(*成績が一番多いランクを吐き出す*)
(*関数に値を二つずつ渡して、最終的に一つの関数に値を渡してスコープ変数の確定を行う*)

let saita_ketsueki lst = 
    let (a, o, b, ab) = ketsueki_shukei lst in 
    let saidai = max (max a o) (max b ab) in 
        if saidai = a then "A" 
                      else if saidai = o then "O" 
                                         else if saidai = b then "B" 
                                                            else "AB" 
 
(* テスト *) 
let test1 = saita_ketsueki lst1 
let test2 = saita_ketsueki lst2 
let test3 = saita_ketsueki lst3 



