(*レコードによるデータ操作*)

type student = {
    name : string;
    age : int;
    result : int;
    seiseki : string;
}

let division list  = match list with
     {name = n; age = a; result = r; seiseki = s} ->
        {name = n; age = a; result = r;
            seiseki = if r > 80 then "a"
                                else if r > 70 then "b"
                                               else "c"}


let test1 = division { name = "aki"; age = 20; result = 30; seiseki = "kanji_ekimei"}