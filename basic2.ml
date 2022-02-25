let rec add_to_each x list = match list with 
    [] -> []
    | first :: rest -> (x :: first) :: add_to_each x rest

let test1 = add_to_each 1 [] = []
let test2 = add_to_each 1 [[1];[1]] 
